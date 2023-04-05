using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace Zovprofil
{
    public partial class Contacts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HtmlMeta metaKeywords = new HtmlMeta();
            metaKeywords.Name = "keywords";
            metaKeywords.Content = "зов-профиль, гродно, контакты, фабрика, карта проезда";
            Page.Header.Controls.Add(metaKeywords);

            HtmlMeta metaDesc = new HtmlMeta();
            metaDesc.Name = "description";
            metaDesc.Content = "Связаться со специалистами фабрики ЗОВ-Профиль по телефону или электронной почте. Консультация по рамочным фасадам, погонажным изделиям и корпусной мебели, актуальным акциям и условиям сотрудничества.";
            Page.Header.Controls.Add(metaDesc);
        }
    }
}