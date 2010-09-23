using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Net.Mail;
using System.Text;
using System.Web.Configuration;
using System.Net.Mime;

namespace DersDemo_ASP_FormMail
{
    public partial class _IletisimFormu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bGonder_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                try
                {
                    EmailProperties ep = new EmailProperties();
                    ep.AdSoyad = tAdSoyad.Text;
                    ep.EPosta = tbEPosta.Text;
                    ep.CepTelefonu = tTel.Text;
                    ep.Konu = tbKonu.Text;
                    ep.Mesaj = tbMesaj.Text;


                    EmailTemplate et =
                        Page.LoadControl("~/EmailTemplate.ascx") as EmailTemplate;

                    et.Email = ep;

                    StringWriter sw = new StringWriter();
                    HtmlTextWriter htw = new HtmlTextWriter(sw);

                    et.RenderControl(htw);

                    string s = sw.ToString();


                    MailMessage mm = new MailMessage();

                    string emadd = WebConfigurationManager.AppSettings["IletisimFormuAdresleri"];

                    //string[] dizi = emadd.Split(',');
                    //foreach (string item in dizi)
                    //{
                    //    mm.To.Add(new MailAddress(item));
                    //}
                    mm.To.Add(emadd);

                    mm.ReplyTo = new MailAddress(ep.EPosta, ep.AdSoyad);

                    mm.Subject = string.Format(
                        "İletişim Formu - ({0}) - {1}",
                        ep.AdSoyad, ep.Konu);

                    mm.Body = s;
                    mm.BodyEncoding = Encoding.UTF8;
                    mm.IsBodyHtml = true;

                    //MemoryStream ms = new MemoryStream();
                    //StreamWriter stw = new StreamWriter(ms);
                    //stw.Write(s);
                    //stw.Flush();
                    //ms.Flush();

                    MemoryStream ms = new MemoryStream(Encoding.UTF8.GetBytes(s));

                    Attachment a = new Attachment(ms, "IletisimFormu.html", MediaTypeNames.Text.Html);
                    a.ContentDisposition.CreationDate = DateTime.Now;
                    a.ContentDisposition.Inline = false;
                    mm.Attachments.Add(a);


                    SmtpClient sc = new SmtpClient();
                    sc.EnableSsl = true;

                    sc.Send(mm);

                    dContainer.Visible = false;
                    pIslemTamam.Visible = true;
                }
                catch{
                    dContainer.Visible = false;
                    pHata.Visible = true;
                }
            }
        }
    }
}
