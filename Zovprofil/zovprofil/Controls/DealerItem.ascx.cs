using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Zovprofil.zovprofil.Controls
{
    public partial class DealerItem : System.Web.UI.UserControl
    {
        public string sName = "";
        public string sAddress = "";
        public string sPhone = "";
        public string sWebSite = "";
        public string sEmail = "";
        public string sWorkTime = "";
        public string sFurniture = "";
        public string sFronts = "";
        public string sProfile = "";
        public string sLat = "";
        public string sLong = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            DealerItemDiv.ID = "Dealer_" + ID;

            if (sName.Length == 0)
                sName = "-";
            DealerNameSpan.InnerHtml = sName;
            DealerNameSpan.ID = "DealerNameSpan_" + ID;
            if (sAddress.Length == 0)
                sAddress = "-";
            DealerAddressSpan.InnerHtml = sAddress;
            DealerAddressSpan.ID = "DealerAddressSpan_" + ID;
            DealerEmailSpan.InnerHtml = sEmail;
            DealerEmailSpan.ID = "DealerEmailSpan_" + ID;
            if (sPhone.Length == 0 && sEmail.Length == 0)
                sPhone = "-";
            DealerPhonesSpan.InnerHtml = sPhone;
            DealerPhonesSpan.ID = "DealerPhonesSpan_" + ID;
            DealerWebsiteSpan.InnerHtml = sWebSite;
            DealerWebsiteSpan.ID = "DealerWebsiteSpan_" + ID;
            if (sWorkTime.Length == 0)
                sWorkTime = "-";
            DealerWorkTimeSpan.InnerHtml = sWorkTime;
            DealerWorkTimeSpan.ID = "DealerWorkTimeSpan_" + ID;
            DealerFurnitureSpan.InnerHtml = sFurniture;
            DealerFurnitureSpan.ID = "DealerFurnitureSpan_" + ID;
            DealerFrontsSpan.InnerHtml = sFronts;
            DealerFrontsSpan.ID = "DealerFrontsSpan_" + ID;
            DealerProfileSpan.InnerHtml = sProfile;
            DealerProfileSpan.ID = "DealerProfileSpan_" + ID;
            DealerLatSpan.ID = "DealerLatSpan_" + ID;
            DealerLatSpan.InnerHtml = sLat;
            DealerLongSpan.ID = "DealerLongSpan_" + ID;
            DealerLongSpan.InnerHtml = sLong;
        }
    }
}