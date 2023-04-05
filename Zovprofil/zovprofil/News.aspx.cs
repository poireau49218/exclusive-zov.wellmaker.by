using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using Zovprofil.zovprofil.Controls;

namespace Zovprofil.zovprofil
{
    public partial class News : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HtmlMeta metaKeywords = new HtmlMeta();
            metaKeywords.Name = "keywords";
            metaKeywords.Content = "новости, зов-профиль, акции, скидки, новинки, образцы";
            Page.Header.Controls.Add(metaKeywords);

            HtmlMeta metaDesc = new HtmlMeta();
            metaDesc.Name = "description";
            metaDesc.Content = "Акции, скидки и новинки продукции фабрики ЗОВ-Профиль. Актуальная информация о наличии рекламных материалов, образцов и проводимых мероприятиях для существующих и новых клиентов";
            Page.Header.Controls.Add(metaDesc);



            DataTable NewsDT = new DataTable();

            using (SqlDataAdapter DA = new SqlDataAdapter("SELECT * FROM infiniu2_marketingReference.dbo.News WHERE RecipientTypeID = -1 ORDER BY DateTime DESC", Catalog.ConnectionString))
            {
                DA.Fill(NewsDT);
            }

            foreach (DataRow Row in NewsDT.Rows)
            {
                NewsItem Item = (NewsItem)Page.LoadControl("~/zovprofil/Controls/NewsItem.ascx");
                Item.sHeader = Row["HeaderText"].ToString().Replace("\n", "<br />");
                Item.sText = Row["BodyText"].ToString().Replace("\n", "<br />");
                Item.sDate = Convert.ToDateTime(Row["DateTime"]).ToString("dd MMMM yyyy");

                NewsContainer.Controls.Add(Item);
            }
        }
    }
}