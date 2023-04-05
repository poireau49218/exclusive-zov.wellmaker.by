using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Zovprofil.zovprofil.Controls
{
    public partial class LeftMenuItem : System.Web.UI.UserControl
    {
        public string URL = "";
        public string Name = "";
        public bool Selected = false;

        protected void Page_Load(object sender, EventArgs e)
        {
            ItemName.InnerHtml = Name;
            LeftLink.HRef = URL;

            if (Selected)
                ItemName.Attributes.Add("class", "lmenu-item selected");
        }
    }
}