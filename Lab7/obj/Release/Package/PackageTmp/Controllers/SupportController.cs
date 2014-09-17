using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Lab7.Models;
using System.Text;
namespace Lab7.Controllers
{
    public class SupportController : Controller
    {
        //
        // GET: /Support/
        public ActionResult Index()
        {
            return View();
        }

      
        //
        // POST: /Support/
        [HttpPost]
        public ActionResult Index(Support model)
        {
            try
            {
                // conformation mail to the user

                System.Net.Mail.MailMessage message = new System.Net.Mail.MailMessage();
               
                message.From = new System.Net.Mail.MailAddress("parth_sondarva@hotmail.co.uk");
                message.To.Add(new System.Net.Mail.MailAddress(model.Email));

                message.IsBodyHtml = true;
                message.BodyEncoding = Encoding.UTF8;
                message.Subject = "Support Request Accepted";
                message.Body = "Your request for support has been accepted and will soon be looked upon by our Analyst. Thanks!";

                System.Net.Mail.SmtpClient client = new System.Net.Mail.SmtpClient();
                client.Send(message);

                ////messege to the analyst //yet to implement
                //System.Net.Mail.MailMessage message1 = new System.Net.Mail.MailMessage();

                //message.From = new System.Net.Mail.MailAddress("parth_sondarva@hotmail.co.uk");
                //message.To.Add(new System.Net.Mail.MailAddress("sondarvaparth@gmail.com")); //analyst email address

                //message.IsBodyHtml = true;
                //message.BodyEncoding = Encoding.UTF8;
                //message.Subject = "Support Request Accepted";
                //message.Body = "Your request for support has been accepted and will soon be looked upon by our Analyst. Thanks!";

                //System.Net.Mail.SmtpClient client1 = new System.Net.Mail.SmtpClient();
                //client1.Send(message1);

               
                return RedirectToAction("Index","Home");
            }
            catch
            {
                //reload the page if it catches any exceptions and fails
                return RedirectToAction("Index");
            }
        }
      
    }
}
