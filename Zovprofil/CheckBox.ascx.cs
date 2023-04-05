using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Infinium.MasterControls
{
    public partial class CheckBox : System.Web.UI.UserControl
    {
        string Name = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (InfiniumCheckBoxChecked.Value.Length == 0)
                InfiniumCheckBoxChecked.Value = "false";

            CheckImage.ClientIDMode = ClientIDMode.Static;
            CheckImage.ID = "CheckImage_" + ID;

            InfiniumCheckBoxChecked.ID = "InfiniumCheckBoxChecked_" + ID;
        }

        public bool Checked
        {
            get { return Convert.ToBoolean(InfiniumCheckBoxChecked.Value.ToLower()); }
            set
            {
                if (value)
                    CheckImage.Src = "/Images/Check16.png";
                else
                    CheckImage.Src = "/Images/UnCheck16.png";

                InfiniumCheckBoxChecked.Value = value.ToString().ToLower();
            }
        }

        public string Value
        {
            get { return Name; }
            set {
                Name = value;
                NameLabel.InnerHtml = value;
                NameLabel.Attributes.Add("title", NameLabel.InnerHtml);
            }
        }
    }
}