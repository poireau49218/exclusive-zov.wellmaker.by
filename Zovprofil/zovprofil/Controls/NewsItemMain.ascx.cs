using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Zovprofil.zovprofil.Controls
{
    public partial class NewsItemMain : System.Web.UI.UserControl
    {
        public string sHeader = "";
        public string sDate = "";
        public string sText = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            Text.InnerHtml = sText;
            Text.ID = "Text_" + ID;
            Main.ID = "Main_" + ID;
        }
    }
}