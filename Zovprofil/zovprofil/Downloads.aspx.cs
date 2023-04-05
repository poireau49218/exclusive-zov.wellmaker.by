using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace Zovprofil.zovprofil
{
    public partial class Downloads : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HtmlMeta metaKeywords = new HtmlMeta();
            metaKeywords.Name = "keywords";
            metaKeywords.Content = "клиентам, скачать, каталоги, рекламные материалы, зов-профиль";
            Page.Header.Controls.Add(metaKeywords);

            HtmlMeta metaDesc = new HtmlMeta();
            metaDesc.Name = "description";
            metaDesc.Content = "Скачать каталоги фасадов и мебели фабрики ЗОВ-Профиль в электронном виде. Информация о продукции, текстуры и декоры для дизайнеров и проектировщиков. Презентации, документы, полезные материалы.";
            Page.Header.Controls.Add(metaDesc);
        }
    }
}