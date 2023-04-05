using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace Zovprofil.zovprofil
{
    public partial class About : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HtmlMeta metaKeywords = new HtmlMeta();
            metaKeywords.Name = "keywords";
            metaKeywords.Content = "фабрика, сроки производства, зов-профиль, производство, видео";
            Page.Header.Controls.Add(metaKeywords);

            HtmlMeta metaDesc = new HtmlMeta();
            metaDesc.Name = "description";
            metaDesc.Content = "ЗОВ-Профиль - активный производитель на рынке мебельных комплектующих из МДФ в Беларуси. Оптимальные сроки производства, качественное оборудование и материалы. Приглашаем дилеров к взаимовыгодному сотрудничеству!";
            Page.Header.Controls.Add(metaDesc);
        }
    }
}