using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.Services;

namespace Zovprofil
{
    /// <summary>
    /// Сводное описание для Service
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    [System.Web.Script.Services.ScriptService]
    public class Service : System.Web.Services.WebService
    {

        [WebMethod]
        public void SendMessage(string Name, string Email, string Text, string Phone, string Company, string sType, string Prod)
        {
            string MailPassword = "infinium1q2w3e4r";
            string MailAccount = "notify.infinium@gmail.com";
            string smtp = "smtp.gmail.com";
            int port = 587;
            bool ssl = true;
            string NotifyHeader = "zovprofil.by. Сообщение от <" + Name + ">";

            string to = "marketing.zovprofil@gmail.com";
            
            string from = MailAccount;

            string comptype = "";
            string prod = "";

            switch (sType) {
                case "F": comptype = "Физ. лицо"; break;
                case "R": comptype = "Розница"; break;
                case "M": comptype = "Мелкий опт"; break;
                case "K": comptype = "Крупный опт"; break;
                case "D": comptype = "Диз. студия"; break;
            }

            switch (Prod)
            {
                case "Fr": prod = "Фасады"; break;
                case "P": prod = "Профиль"; break;
                case "Me": prod = "Мебель"; break;
                case "I": prod = "Интерьерные панели"; break;
            }


            using (MailMessage message = new MailMessage(from, to))
            {
                message.Subject = NotifyHeader;
                message.Body = "Посетитель сайта zovprofil.by написал сообщение для отдела маркетинга.\r\n\r\nEmail для ответа: " + Email +
                    "\r\n\r\nФИО:\r\n" + Name + "\r\n\r\n" + "Название компании:\r\n" + Company + "\r\n\r\nТелефон:\r\n" + Phone +
                    "\r\n\r\nТип компании:\r\n" + comptype + "\r\n\r\nИнтересует продукция:\r\n" + prod +
                    "\r\n\r\nТекст сообщения:\r\n" + Text;

                message.IsBodyHtml = false;

                SmtpClient client = new SmtpClient(smtp, port);

                client.UseDefaultCredentials = false;
                client.Credentials = new NetworkCredential(MailAccount, MailPassword);
                client.EnableSsl = ssl;

                try
                {
                    client.Send(message);
                }
                catch
                {

                }

                client.Dispose();
            }
        }
    }
}
