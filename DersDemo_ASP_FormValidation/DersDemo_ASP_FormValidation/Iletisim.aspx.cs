using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Net.Mail;

namespace DersDemo_ASP_FormValidation
{
    public partial class Iletisim : System.Web.UI.Page
    {
        private static readonly string Harfler =
            "1234567890qwertyuıopğüasdfghjklşizxcvbnmöçQWERTYUIOPĞÜASDFGHJKLŞİZXCVBNMÖÇ";
        private static readonly Random r = new Random();

        private Guid ChaptcaID
        {
            get
            {
                if (!(ViewState["ChaptcaID"] is Guid))
                {
                    ViewState["ChaptcaID"] = Guid.NewGuid();
                }
                return (Guid)ViewState["ChaptcaID"];
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                StringBuilder sb = new StringBuilder();
                for (int i = 0; i < 8; i++)
                {
                    int a = r.Next(0, Harfler.Length - 1);
                    sb.Append(Harfler[a]);
                }

                ChaptcaValues.Add(ChaptcaID, sb.ToString());


            }
            iGuvenlik.ImageUrl = "~/Chapca.ashx?id=" + ChaptcaID;
        }

        public Dictionary<Guid, string> ChaptcaValues
        {
            get
            {
                Dictionary<Guid, string> d = Session["ChaptcaValues"] as Dictionary<Guid, string>;
                if (d == null)
                {
                    Session["ChaptcaValues"] = d = new Dictionary<Guid, string>();
                }

                return d;
            }
        }

        protected void cvGuvenlik_ServerValidate(
            object source, ServerValidateEventArgs args)
        {
            if (args.Value != ChaptcaValues[ChaptcaID])
            {
                args.IsValid = false;
            }
        }

        protected void bGonder_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                StringBuilder sb = new StringBuilder(
                    "İletişim Formu dolduruldu. Bilgiler aşağıdadır.\r\n");

                sb.AppendFormat(
                    "Ad Soyad : {0}\r\n", tbAdSoyad.Text);

                sb.AppendFormat(
                    "E-Posta  : {0}\r\n", tbEPosta.Text);

                if (!string.IsNullOrEmpty(tbYas.Text))
                {
                    sb.AppendFormat(
                        "Yaş      : {0}\r\n", tbYas.Text);
                }
                if (!string.IsNullOrEmpty(tbCocukYasi.Text))
                {
                    sb.AppendFormat(
                        "Çocuk Yaşı  : {0}\r\n", tbCocukYasi.Text);
                }

                sb.AppendFormat(
                    "Konu     : {0}\r\n", tbKonu.Text);

                sb.AppendFormat(
                    "Mesaj    : {0}\r\n", tbMesaj.Text);


                MailMessage mm = new MailMessage(
                    "yu7101Test@gmail.com", "alperkonuralp@gmail.com");

                mm.ReplyTo = new MailAddress(tbEPosta.Text, tbAdSoyad.Text);

                mm.Subject =
                    string.Format("İletişim Formundan gelen mesaj - ({0}) {1}",
                    tbAdSoyad.Text,
                    tbKonu.Text);

                mm.Body = sb.ToString();
                mm.IsBodyHtml = false;

                SmtpClient sc = new SmtpClient();
                sc.EnableSsl = true;

                sc.Send(mm);

                tVeriler.Visible = false;
                pSonuc.Visible = true;
            }
        }
    }
}
