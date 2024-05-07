//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Web;
//using System.Web.UI;
//using System.Web.UI.WebControls;

//namespace Zovprofil
//{
//    public partial class MasterPage : System.Web.UI.MasterPage
//    {
//        protected void Page_Load(object sender, EventArgs e)
//        {
//            string pageName = this.ContentPlaceHolder.Page.GetType().BaseType.Name;

//            if (pageName == "Main")
//            {
//                MainItem.Attributes.Remove("class");
//                MainItem.Attributes.Add("class", "text text-s");
//            }

//            if (pageName == "Production")
//            {
//                ProdItem.Attributes.Remove("class");
//                ProdItem.Attributes.Add("class", "text text-s");
//            }

//            if (pageName == "News")
//            {
//                NewsItem.Attributes.Remove("class");
//                NewsItem.Attributes.Add("class", "text text-s");
//            }

//            /*if (pageName == "Wheretobuy")
//            {
//                WhereItem.Attributes.Remove("class");
//                WhereItem.Attributes.Add("class", "text text-s");
//            }*/

//            if (pageName == "About")
//            {
//                AboutItem.Attributes.Remove("class");
//                AboutItem.Attributes.Add("class", "text text-s");
//            }

//            if (pageName == "Contacts")
//            {
//                ContactsItem.Attributes.Remove("class");
//                ContactsItem.Attributes.Add("class", "text text-s");
//            }

//            if (pageName == "Downloads")
//            {
//                DownloadsItem.Attributes.Remove("class");
//                DownloadsItem.Attributes.Add("class", "text text-s");
//            }
//        }
//    }
//}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Zovprofil
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string pageName = this.ContentPlaceHolder.Page.GetType().BaseType.Name;

            //if (pageName == "Main")
            //{
            //    MainItem.Attributes.Remove("class");
            //    MainItem.Attributes.Add("class", "text text-s");
            //}

            //if (pageName == "Production")
            //{
            //    ProdItem.Attributes.Remove("class");
            //    ProdItem.Attributes.Add("class", "text text-s");
            //}

            //if (pageName == "News")
            //{
            //    NewsItem.Attributes.Remove("class");
            //    NewsItem.Attributes.Add("class", "text text-s");
            //}

            //if (pageName == "Wheretobuy")
            //{
            //    WhereItem.Attributes.Remove("class");
            //    WhereItem.Attributes.Add("class", "text text-s");
            //}

            //if (pageName == "About")
            //{
            //    AboutItem.Attributes.Remove("class");
            //    AboutItem.Attributes.Add("class", "text text-s");
            //}

            //if (pageName == "Contacts")
            //{
            //    ContactsItem.Attributes.Remove("class");
            //    ContactsItem.Attributes.Add("class", "text text-s");
            //}

            //if (pageName == "Downloads")
            //{
            //    DownloadsItem.Attributes.Remove("class");
            //    DownloadsItem.Attributes.Add("class", "text text-s");
            //}
        }
    }
}