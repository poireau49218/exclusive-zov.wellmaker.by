using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace Zovprofil
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            RegisterRoutes(RouteTable.Routes);
        }

        protected void Application_BeginRequest(Object sender, EventArgs e)
        {
            if (HttpContext.Current.Request.IsSecureConnection.Equals(false) && HttpContext.Current.Request.IsLocal.Equals(false))
            {
                Response.Redirect("https://" + Request.ServerVariables["HTTP_HOST"] + HttpContext.Current.Request.RawUrl);
            }

            string IPAddr = "";

            string page = Request.RawUrl.ToLower();

            if (page.Contains("service.asmx") || page.Contains("browserlink") || page.Contains("webresource") || page.Contains("scriptresource"))
                return;

            try
            {
                IPAddr = HttpContext.Current.Request.ServerVariables["HTTP_X_FORWARDED_FOR"];

                if (string.IsNullOrEmpty(IPAddr))
                {
                    IPAddr = HttpContext.Current.Request.ServerVariables["REMOTE_ADDR"];
                }
            }
            catch
            {

            }

            try
            {
                Thread T = new Thread(delegate ()
                {
                    Framework.SetLog(page, IPAddr);
                });

                T.Start();
            }
            catch {

            }
        }

        void RegisterRoutes(RouteCollection routes)
        {
            routes.MapPageRoute("", "", "~/zovprofil/Main.aspx");
            routes.MapPageRoute("", "Default.aspx", "~/zovprofil/Main.aspx");
            routes.MapPageRoute("", "Main", "~/zovprofil/Main.aspx");
            routes.MapPageRoute("", "Downloads", "~/zovprofil/Downloads.aspx");
            routes.MapPageRoute("", "Production", "~/zovprofil/Production.aspx");
            routes.MapPageRoute("", "News", "~/zovprofil/News.aspx");
            routes.MapPageRoute("", "Wheretobuy", "~/zovprofil/Wheretobuy.aspx");
            routes.MapPageRoute("", "About", "~/zovprofil/About.aspx");
            routes.MapPageRoute("", "Contacts", "~/zovprofil/Contacts.aspx");
            routes.MapPageRoute("", "patricziya1.html", "~/zovprofil/Production.aspx");         
        }
    }
}