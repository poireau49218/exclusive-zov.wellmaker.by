﻿//using System;
//using System.Collections.Generic;
//using System.Data;
//using System.Data.SqlClient;
//using System.Linq;
//using System.Web;
//using System.Web.UI;
//using System.Web.UI.HtmlControls;
//using System.Web.UI.WebControls;
//using Zovprofil.zovprofil.Controls;

//namespace Zovprofil.zovprofil
//{
//    public partial class Main : System.Web.UI.Page
//    {
//        protected void Page_Load(object sender, EventArgs e)
//        {
//            HtmlMeta metaKeywords = new HtmlMeta();
//            metaKeywords.Name = "keywords";
//            metaKeywords.Content = "зов-профиль, мебельные фасады, изготовление, фабрика, заказать, мдф";
//            Page.Header.Controls.Add(metaKeywords);

//            HtmlMeta metaDesc = new HtmlMeta();
//            metaDesc.Name = "description";
//            metaDesc.Content = "Производство погонажных изделий, рамочных фасадов для кухни и корпусной мебели из МДФ в Беларуси. Постоянно обновляющийся ассортимент, гибкие условия оплаты и широкая размерная сетка от фабрики ЗОВ-Профиль.";
//            Page.Header.Controls.Add(metaDesc);

//            DataTable NewProductsDT = Catalog.FillNewProducts();

//            foreach (DataRow Row in NewProductsDT.Rows)
//            {
//                ProductItemMain Item = (ProductItemMain)Page.LoadControl("~/zovprofil/Controls/ProductItemMain.ascx");
//                Item.Name = Row["Name"].ToString() + " " + Row["Color"].ToString();
//                Item.ProductImageUrl = Catalog.URL + "Thumbs/" + Row["FileName"].ToString();
//                Item.URL = "/Production?type=" + Row["ProductType"].ToString() + "&cat=" + Row["Category"].ToString() + "&item=" + Row["ImageID"].ToString();

//                NewProductsContainer.Controls.Add(Item);
//            }

//            DataTable MainSliderDT = Catalog.FillMainSliderImages();

//            //string sliderNames = "";
//            string sliderUrls = "";

//            for (int i = 0; i < MainSliderDT.Rows.Count; i++)
//            {
//                System.Web.UI.HtmlControls.HtmlGenericControl img = new System.Web.UI.HtmlControls.HtmlGenericControl("img");
//                img.Attributes.Add("class", "im");
//                img.ID = "im" + (i + 1).ToString();
//                img.ClientIDMode = System.Web.UI.ClientIDMode.Static;
//                img.Attributes.Add("onclick", "OpenSliderImage()");
//                img.Attributes.Add("src", Catalog.URL + MainSliderDT.Rows[i]["FileName"].ToString());
//                if (i == 0)
//                {
//                    img.Style.Add("opacity", "1");
//                }

//                System.Web.UI.HtmlControls.HtmlGenericControl pdiv = new System.Web.UI.HtmlControls.HtmlGenericControl("div");
//                if (i == 0)
//                {
//                    pdiv.Attributes.Add("class", "sl-p");
//                }

//                pdiv.ID = "slp" + (i + 1).ToString();
//                pdiv.ClientIDMode = System.Web.UI.ClientIDMode.Static;

//                System.Web.UI.HtmlControls.HtmlGenericControl div = new System.Web.UI.HtmlControls.HtmlGenericControl("div");
//                div.Attributes.Add("class", "sl");
//                div.ID = "sl" + (i + 1).ToString();
//                div.Attributes.Add("onclick", "SelectImage(" + (i + 1) + ")");
//                div.ClientIDMode = System.Web.UI.ClientIDMode.Static;

//                div.Controls.Add(pdiv);

//                SliderNavCont.Controls.Add(div);

//                ImagesSliderCont.Controls.Add(img);

//                //sliderNames += MainSliderDT.Rows[i]["Name"].ToString() + ";";
//                sliderUrls += Catalog.URL + MainSliderDT.Rows[i]["FileName"].ToString() + ";";
//            }

//            //ScriptManager.RegisterStartupScript(this, this.GetType(), "SetSliderNames", "SetSliderNames('" + sliderNames + "');", true);
//            ScriptManager.RegisterStartupScript(this, this.GetType(), "SetSliderUrls", "SetSliderUrls('" + sliderUrls + "');", true);

//            hSlidesCount.Value = MainSliderDT.Rows.Count.ToString();



//            //DataTable NewsDT = new DataTable();

//            //using (SqlDataAdapter DA = new SqlDataAdapter("SELECT TOP 2 * FROM infiniu2_marketingReference.dbo.News WHERE RecipientTypeID = -1 ORDER BY DateTime DESC", Catalog.ConnectionString))
//            //{
//            //    DA.Fill(NewsDT);
//            //}

//            //int c = 0;

//            //foreach (DataRow Row in NewsDT.Rows)
//            //{
//            //    NewsItemMain Item = (NewsItemMain)Page.LoadControl("~/zovprofil/Controls/NewsItemMain.ascx");
//            //    Item.sHeader = Row["HeaderText"].ToString().Replace("\n", "<br />");

//            //    Item.sText = Row["BodyText"].ToString();

//            //    Item.sDate = Convert.ToDateTime(Row["DateTime"]).ToString("dd MMMM yyyy");
//            //    Item.ID = c++.ToString();
//            //    NewsContainer.Controls.Add(Item);
//            //}
//        }
//    }
//}



using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using Zovprofil.zovprofil.Controls;
using System.IO;
using System.Security.Policy;

namespace Zovprofil.zovprofil
{
    public partial class Main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HtmlMeta metaKeywords = new HtmlMeta();
            metaKeywords.Name = "keywords";
            metaKeywords.Content = "зов-профиль, мебельные фасады, изготовление, фабрика, заказать, мдф";
            Page.Header.Controls.Add(metaKeywords);

            HtmlMeta metaDesc = new HtmlMeta();
            metaDesc.Name = "description";
            metaDesc.Content = "Производство погонажных изделий, рамочных фасадов для кухни и корпусной мебели из МДФ в Беларуси. Постоянно обновляющийся ассортимент, гибкие условия оплаты и широкая размерная сетка от фабрики ЗОВ-Профиль.";
            Page.Header.Controls.Add(metaDesc);

            DataTable NewProductsDT = Catalog.FillNewProducts();


            DataColumn urlColumn = new DataColumn("URL", typeof(string));
            NewProductsDT.Columns.Add(urlColumn);
            DataColumn imageColumn = new DataColumn("ProductImageUrl", typeof(string));
            NewProductsDT.Columns.Add(imageColumn);

            NewProductsRepeater2.DataSource = NewProductsDT;
            NewProductsRepeater2.DataBind();

            NewProductsRepeater1.DataSource = NewProductsDT;
            NewProductsRepeater1.DataBind();

            foreach (DataRow Row in NewProductsDT.Rows)
            {
                ProductItemMain Item = (ProductItemMain)Page.LoadControl("~/zovprofil/Controls/ProductItemMain.ascx");
                Item.Name = Row["Name"].ToString() + " " + Row["Color"].ToString();
                Item.ProductImageUrl = Catalog.URL + "Thumbs/" + Row["FileName"].ToString();
                Item.URL = "/Production?type=" + Row["ProductType"].ToString() + "&cat=" + Row["Category"].ToString() + "&item=" + Row["ImageID"].ToString();

                //Item.Css = "latest-front";
                Row["URL"] = Item.URL;
                Row["ProductImageUrl"] = Item.ProductImageUrl;

                //NewProductsContainer.Controls.Add(Item);
            }
        }

        protected void NewProductsRepeater1_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
            {
                DataRowView rowView = (DataRowView)e.Item.DataItem;
                string name = rowView["Name"].ToString() + " " + rowView["Color"].ToString();
                string productImageUrl = Catalog.URL + "Thumbs/" + rowView["FileName"].ToString();
                string productUrl = "/Production?type=" + rowView["ProductType"].ToString() + "&cat=" + rowView["Category"].ToString() + "&item=" + rowView["ImageID"].ToString();

                HtmlAnchor productLink = (HtmlAnchor)e.Item.FindControl("ProductLink1");
                HtmlImage productImage = (HtmlImage)e.Item.FindControl("ProductImageUrl1");
                Label productName = (Label)e.Item.FindControl("Name1");

                productLink.HRef = productUrl;
                productImage.Src = productImageUrl;
                productName.Text = name;
            }
        }
        protected void NewProductsRepeater2_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
            {
                DataRowView rowView = (DataRowView)e.Item.DataItem;
                string name = rowView["Name"].ToString() + " " + rowView["Color"].ToString();
                string productImageUrl = Catalog.URL + "Thumbs/" + rowView["FileName"].ToString();
                string productUrl = "/Production?type=" + rowView["ProductType"].ToString() + "&cat=" + rowView["Category"].ToString() + "&item=" + rowView["ImageID"].ToString();

                HtmlAnchor productLink = (HtmlAnchor)e.Item.FindControl("ProductLink2");
                HtmlImage productImage = (HtmlImage)e.Item.FindControl("ProductImageUrl2");
                Label productName = (Label)e.Item.FindControl("Name2");

                productLink.HRef = productUrl;
                productImage.Src = productImageUrl;
                productName.Text = name;
            }
        }
    }
}