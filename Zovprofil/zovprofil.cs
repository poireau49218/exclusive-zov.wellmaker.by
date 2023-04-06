using Microsoft.EntityFrameworkCore.Query.SqlExpressions;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Drawing.Imaging;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.DynamicData;
using System.Windows.Forms;
using System.Xml.Linq;
using static Microsoft.EntityFrameworkCore.DbLoggerCategory.Database;
using static System.Net.Mime.MediaTypeNames;

namespace Zovprofil
{
    public class Framework {
        public static DateTime GetCurrentDate()
        {
            using (SqlDataAdapter DA = new SqlDataAdapter("SELECT GETDATE()", Catalog.ConnectionString))
            {
                using (DataTable DT = new DataTable())
                {
                    DA.Fill(DT);

                    return Convert.ToDateTime(DT.Rows[0][0]);
                }
            }
        }


        public static void SetLog(string Page, string ip)
        {
            try
            {
                using (SqlDataAdapter DA = new SqlDataAdapter("SELECT TOP 0 * FROM infiniu2_light.dbo.SiteLog", Catalog.ConnectionString))
                {
                    using (SqlCommandBuilder CB = new SqlCommandBuilder(DA))
                    {
                        using (DataTable DT = new DataTable())
                        {
                            DA.Fill(DT);

                            DataRow NewRow = DT.NewRow();
                            NewRow["Page"] = Page;
                            NewRow["DateTime"] = GetCurrentDate();
                            NewRow["IPAddress"] = ip;
                            DT.Rows.Add(NewRow);

                            DA.Update(DT);
                        }
                    }
                }
            }
            catch
            {

            }
        }
    }

    public class Catalog
    {
        //public static string ConnectionString = "Data Source=localhost;Initial Catalog=infiniu2_catalog;Persist Security Info=True;Connection Timeout=30;User ID=infiniu2_infinium;Password=InF476()*";
        //public static string ftpPath = "ftp://localhost/Documents/TechStoreDocuments/";

        public static string ConnectionString = "Data Source=185.204.118.40, 32433;Initial Catalog=infiniu2_catalog;Persist Security Info=True;Connection Timeout=30;User ID=infiniu2_infinium;Password=InF476()*";
        public static string ftpPath = "ftp://infinium.zovprofil.by/Documents/TechStoreDocuments/";


        public static string URL = "https://zovprofil.by/Images/ClientsCatalogImages/";

        public static string notExclusiveFontColor = "#336600";

        public static DataTable FillCategories(int Type)
        {
            string querry = "SELECT DISTINCT(Category) " +
                            "FROM ClientsCatalogImages " +
                            "WHERE (Category IS NOT NULL AND Category <> '') AND " +
                                "(ProductType = " + Type + ") AND ToSite = 1 ";


            // Если тип - не декор, то выводим только эксклюзивные
            if (Type != 1)
            {
                querry += " AND [Category] LIKE '%Эксклюзив%' ORDER BY [Category]";

                using (SqlDataAdapter DA = new SqlDataAdapter(querry, ConnectionString))
                {
                    using (DataTable DT = new DataTable())
                    {
                        DA.Fill(DT);
                        DT.Columns.Add("FileName", System.Type.GetType("System.String"));

                        foreach (DataRow Row in DT.Rows)
                        {
                            using (SqlDataAdapter sDA = new SqlDataAdapter("SELECT TOP 1 FileName FROM ClientsCatalogImages WHERE Category = '" + Row["Category"].ToString() + "' AND ToSite = 1 AND Basic = 1", ConnectionString))
                            {
                                using (DataTable sDT = new DataTable())
                                {
                                    sDA.Fill(sDT);
                                    Row["FileName"] = sDT.Rows[0]["FileName"];
                                }
                            }
                        }
                        return DT;
                    }
                }

            }
            else
            {
                DataTable DT = new DataTable();
                DT.Columns.Add("Category", System.Type.GetType("System.String"));
                DT.Columns.Add("FileName", System.Type.GetType("System.String"));

                DataTable tempDT = GetAllRelatedDecors();

                DataColumn[] keyColumns = new DataColumn[1];
                keyColumns[0] = DT.Columns["Category"];
                DT.PrimaryKey = keyColumns;

                foreach (DataRow row in tempDT.Rows)
                {
                    if (!(DT.Rows.Contains(row["Category"])))
                    {
                        DT.Rows.Add(row["Category"], row["FileName"]);
                    }
                }

                DT.DefaultView.Sort = "Category";
                DT = DT.DefaultView.ToTable();

                return DT;
            }
        }        

        public static DataTable GetAllRelatedDecors(string Category = null)
        {
            DataTable categoriesDT = FillCategories(0);

            List<int> productList = new List<int>();

            foreach(DataRow row in categoriesDT.Rows)
            {
                DataTable productsDT = FillProducts(0, row["Category"].ToString());
                List<int> confidList = productsDT.AsEnumerable().Select(x => Convert.ToInt32(x[7])).ToList();
                productList.AddRange(confidList);
            }

            HashSet<int> matrixidSet = new HashSet<int>();
            foreach(int confid in productList)
            {
                int MatrixID = 0;
                GetMatrixIdFromConfID(confid, ref MatrixID);
                matrixidSet.Add(Convert.ToInt32(MatrixID));
            }

            HashSet<int> decoridSet = new HashSet<int>();

            List<int> confidList1 = new List<int>();


            DataTable relatedDecorsDT = new DataTable();
            foreach (int id in matrixidSet)
            {
                relatedDecorsDT.Merge(FillRelatedDecors(id));
            }

            return relatedDecorsDT;
        }

        // Возвращает MatrixID фасада по ConfigID из таблицы ClientCatalogImages
        public static void GetMatrixIdFromConfID(int ConfigID, ref int MatrixID)
        {
            string Select = "SELECT TOP(1) MatrixID " +
                            "FROM [infiniu2_catalog].[dbo].[FrontsConfig] AS FC " +
                            "LEFT JOIN [infiniu2_catalog].[dbo].[ClientsCatalogFrontsConfig] AS CCFC ON FC.FrontID = CCFC.FrontID AND FC.ColorID = CCFC.ColorID AND FC.PatinaID = CCFC.PatinaID " +
                            "LEFT JOIN [infiniu2_catalog].[dbo].[ClientsCatalogImages] AS CCI ON CCFC.ConfigID = CCI.ConfigID " +
                            "WHERE CCI.ConfigID = @configid AND ToSite = 1";

            using (SqlConnection conn = new SqlConnection(ConnectionString))
            {
                SqlCommand cmd = new SqlCommand(Select, conn);
                cmd.Parameters.Add("@configid", SqlDbType.Int);
                cmd.Parameters["@configid"].Value = ConfigID;

                try
                {
                    conn.Open();
                    MatrixID = Convert.ToInt32(cmd.ExecuteScalar());
                }
                catch (Exception ex)
                {
                    MatrixID = 0;
                }
            }
        }


        // Создает таблицу декоров, связанных с фасадом с переданным MatrixID
        public static DataTable FillRelatedDecors(int matrixid)
        {
            string Select = "SELECT [ImageID], [FileName], [ToSite], [Category], [Name], [Color], [Basic], MatrixId " +
                            "FROM CollectionsConfig " +
                            "INNER JOIN DecorConfig " +
                                "ON CollectionsConfig.ConfigId2 = DecorConfig.MatrixID " +
                            "INNER JOIN ClientsCatalogDecorConfig " +
                                "ON DecorConfig.DecorID = ClientsCatalogDecorConfig.DecorID " +
                                "AND ClientsCatalogDecorConfig.ColorID = DecorConfig.ColorID " +
                                "AND ClientsCatalogDecorConfig.PatinaID = DecorConfig.PatinaID " +
                            "INNER JOIN ClientsCatalogImages " +
                                "ON ClientsCatalogDecorConfig.ConfigID = ClientsCatalogImages.ConfigID " +
                            "WHERE CollectionsConfig.ConfigId1 = @MatrixID AND ToSite = 1 and ProductType = 1";

            using (SqlConnection connection = new SqlConnection(ConnectionString))
            {
                using (SqlCommand command = new SqlCommand(Select, connection))
                {

                    SqlParameter matrID = new SqlParameter("@MatrixID", matrixid);
                    command.Parameters.Add(matrID);

                    SqlDataAdapter da = new SqlDataAdapter(command);
                    DataTable dt = new DataTable();
                    da.Fill(dt);

                    da.Dispose();

                    return dt;
                }
            }
        }

        public static DataTable FillProducts(int Type, string Category)
        {
            if (Type == 1)
            {
                DataTable DT = GetAllRelatedDecors();
                DataTable resultDT = new DataTable();

                resultDT = DT.Clone();

                foreach (DataRow row in DT.Rows)
                {
                    if (row["Category"].ToString() == Category)
                    {
                        resultDT.Rows.Add(row.ItemArray);
                    }
                }
                
                return resultDT;
            }

            string Select = "SELECT FileName, Name, Description, Material, Sizes, Color, ImageID, ConfigID FROM ClientsCatalogImages WHERE Category = '" + Category + "'" + " AND ToSite = 1 AND CatSlider = 0 AND MainSlider = 0 AND ConfigID <> -1 AND Basic = 1 ORDER BY Name ASC";

            if(Type == 3)//ready
                Select = "SELECT FileName, Name, Color, ImageID FROM ClientsCatalogImages WHERE Category = '" + Category + "'" + " AND ToSite = 1 AND MainSlider = 0 AND CatSlider = 0 ORDER BY Name ASC";

            using (SqlDataAdapter DA = new SqlDataAdapter(Select, ConnectionString))
            {
                using (DataTable DT = new DataTable())
                {
                    DA.Fill(DT);

                    return DT;
                }
            }
        }

        public static DataTable FillNotBasicFronts(int MatrixID)
        {
            string Select = "SELECT [ImageID], [FileName], [ProductType], [ToSite], [Category], [Name], [Color], [Basic], MatrixId " +
                            "FROM CollectionsConfig " +
                            "INNER JOIN FrontsConfig " +
                                "ON CollectionsConfig.ConfigId2 = FrontsConfig.MatrixID " +
                            "INNER JOIN ClientsCatalogFrontsConfig " +
                                "ON FrontsConfig.FrontID = ClientsCatalogFrontsConfig.FrontID " +
                                    "AND ClientsCatalogFrontsConfig.ColorID = FrontsConfig.ColorID " +
                                    "AND ClientsCatalogFrontsConfig.PatinaID = FrontsConfig.PatinaID " +
                                    "AND ClientsCatalogFrontsConfig.InsetColorID = FrontsConfig.InsetColorID " +
                                    "AND ClientsCatalogFrontsConfig.InsetTypeID = FrontsConfig.InsetTypeID " +
                            "INNER JOIN ClientsCatalogImages " +
                                "ON ClientsCatalogFrontsConfig.ConfigID = ClientsCatalogImages.ConfigID " +
                            "WHERE CollectionsConfig.ConfigId1 = @MatrixID AND Basic = 0 AND ProductType = 0 AND ToSite = 1 AND CollectionsConfig.ConfigId2 <> @MatrixID";

            using (SqlConnection connection = new SqlConnection(ConnectionString))
            {
                using (SqlCommand command = new SqlCommand(Select, connection))
                {
                    connection.Open();
                    SqlParameter mtrx = new SqlParameter("@MatrixID", MatrixID);

                    command.Parameters.Add(mtrx);

                    using (SqlDataAdapter DA = new SqlDataAdapter(command))
                    {
                        using (DataTable DT = new DataTable())
                        {
                            DA.Fill(DT);
                            return DT;
                        }
                    }
                }
            }
        }

        public static DataTable FillNewProducts()
        {
            using (SqlDataAdapter DA = new SqlDataAdapter("SELECT FileName, Name, Color, ImageID, Category, ProductType FROM ClientsCatalogImages WHERE Latest = 1 AND ToSite = 1 AND Basic = 1 AND Category LIKE 'Эксклюзив%'", ConnectionString))
            {
                using (DataTable DT = new DataTable())
                {
                    DA.Fill(DT);

                    return DT;
                }
            }
        }

        public static DataTable FillMainSliderImages()
        {
            using (SqlDataAdapter DA = new SqlDataAdapter("SELECT FileName, Name FROM ClientsCatalogImages WHERE MainSliderZOVExcluzive = 1 AND ToSite = 1", ConnectionString))
            {
                using (DataTable DT = new DataTable())
                {
                    DA.Fill(DT);

                    return DT;
                }
            }
        }



        public static DataTable FillCatSliderImages(string Category)
        {
            using (SqlDataAdapter DA = new SqlDataAdapter("SELECT FileName, Name, Description FROM ClientsCatalogImages WHERE Category = '" + Category + "' AND CatSlider = 1 AND ToSite = 1", ConnectionString))
            {
                using (DataTable DT = new DataTable())
                {
                    DA.Fill(DT);

                    return DT;
                }
            }
        }

        public static string GetTechStoreImage(int TechStoreID)
        {
            using (SqlDataAdapter DA = new SqlDataAdapter("SELECT * FROM TechStoreDocuments" +
                " WHERE DocType = 0 AND TechID = " + TechStoreID, ConnectionString))
            {
                using (DataTable DT = new DataTable())
                {
                    if (DA.Fill(DT) == 0)
                        return "Заглушка.jpg";

                    if (DT.Rows[0]["FileName"] == DBNull.Value)
                        return "Заглушка.jpg";

                    string FileName = DT.Rows[0]["FileName"].ToString();

                    if (File.Exists(Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Images\\TechStore", FileName)))
                        return FileName;

                    try
                    {
                        string savePath = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Images\\TechStore", FileName);

                        // Создаем объект запроса FTP
                        FtpWebRequest request = (FtpWebRequest)WebRequest.Create(ftpPath + FileName);
                        request.Method = WebRequestMethods.Ftp.DownloadFile;

                        // Устанавливаем данные для авторизации на FTP-сервере
                        request.Credentials = new NetworkCredential("infiniu2_infinium", "vqju]nkca8ygtfibrQop");

                        // Получаем ответ от FTP-сервера
                        using (FtpWebResponse response = (FtpWebResponse)request.GetResponse())
                        {
                            // Получаем поток ответа
                            using (Stream responseStream = response.GetResponseStream())
                            {
                                // Создаем файловый поток для сохранения изображения
                                using (FileStream fileStream = new FileStream(savePath, FileMode.Create))
                                {
                                    // Считываем данные из потока ответа и записываем их в файловый поток
                                    byte[] buffer = new byte[1024];
                                    int bytesRead = responseStream.Read(buffer, 0, buffer.Length);
                                    while (bytesRead > 0)
                                    {
                                        fileStream.Write(buffer, 0, bytesRead);
                                        bytesRead = responseStream.Read(buffer, 0, buffer.Length);
                                    }
                                }
                            }
                        }
                        return FileName;
                    }
                    catch (Exception ex)
                    {
                        string filePath = @"D:\log\FTPlog.txt";
                        string content = DateTime.Now + "\r\n" + ftpPath + FileName + "\r\n" + ex.ToString() + "\r\n" + "--------------------------" + "\r\n";

                        // создание файла (если его нет)
                        if(!File.Exists(filePath))
                            File.Create(filePath).Close();

                        // запись в файл (если он уже существует)
                        using (StreamWriter sw = File.AppendText(filePath))
                        {
                            // дописываем информацию
                            sw.Write(content);
                        }

                        //MessageBox.Show(ex.ToString());

                        return "Заглушка.jpg";
                    }
                }
            }
        }

        public static void GetItemDetail(int ImageID, ref string FileName, ref string Name, ref string Description, ref string Material, ref string Sizes, ref string ConfigID, ref string ProductType, ref string TechID, ref string Color, ref string Basic, ref string Category, ref string PatinaID, ref string ColorID)
        {

            //using (SqlDataAdapter DA = new SqlDataAdapter("SELECT FileName, Name, Description, Material, Sizes, ConfigID, ProductType FROM ClientsCatalogImages WHERE ImageID = " + ImageID, ConnectionString))
            using (SqlDataAdapter DA = new SqlDataAdapter("SELECT FileName, " +
                                                                    "Name, " +
                                                                    "Category, " +
                                                                    "Description, " +
                                                                    "Material, " +
                                                                    "Sizes, " +
                                                                    "CI.ConfigID, " +
                                                                    "ProductType, " +
                                                                    "Color, " +
                                                                    "FrontID, " +
                                                                    "DecorID, " +
                                                                    "Basic, " +
                                                                    "CF.PatinaID AS CFPatinaID, " +
                                                                    "CF.ColorID AS CFColorID, " +
                                                                    "CD.PatinaID AS CDPatinaID, " +
                                                                    "CD.ColorID  AS CDColorID " +
                                                            "FROM ClientsCatalogImages as CI " +
                                                            "LEFT JOIN [infiniu2_catalog].[dbo].[ClientsCatalogFrontsConfig] as CF ON CI.ConfigID = CF.ConfigID " +
                                                            "LEFT JOIN [infiniu2_catalog].[dbo].[ClientsCatalogDecorConfig] as CD ON CI.ConfigID = CD.ConfigID " +
                                                            "WHERE ImageID = " + ImageID, ConnectionString))
            {
                
                using (DataTable DT = new DataTable())
                {
                    DA.Fill(DT);

                    FileName = DT.Rows[0]["FileName"].ToString();
                    Name = DT.Rows[0]["Name"].ToString();
                    Description = DT.Rows[0]["Description"].ToString();
                    Material = DT.Rows[0]["Material"].ToString();
                    Sizes = DT.Rows[0]["Sizes"].ToString();
                    ConfigID = DT.Rows[0]["ConfigID"].ToString();
                    ProductType = DT.Rows[0]["ProductType"].ToString();
                    Color = DT.Rows[0]["Color"].ToString();
                    Basic = DT.Rows[0]["Basic"].ToString();
                    Category = DT.Rows[0]["Category"].ToString();

                    if (ProductType == "0")
                    {
                        TechID = DT.Rows[0]["FrontID"].ToString();
                        PatinaID = DT.Rows[0]["CFPatinaID"].ToString();
                        ColorID = DT.Rows[0]["CFColorID"].ToString();
                    }
                    else
                    {
                        TechID = DT.Rows[0]["DecorID"].ToString();
                        PatinaID = DT.Rows[0]["CDPatinaID"].ToString();
                        ColorID = DT.Rows[0]["CDColorID"].ToString();
                    }
                }
            }
        }

        public static string SerializeDT(DataTable DT)
        {
            string res = "";

            for (int i = 0; i < DT.Rows.Count; i++)
            {
                res += "{";

                for (int j = 0; j < DT.Columns.Count; j++)
                {
                    res += "[" + DT.Columns[j].ColumnName + "]";
                    res += "=" + DT.Rows[i][j].ToString() + ";";
                }

                res += "}";
            }

            return res;
        }

    }
}