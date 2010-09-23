using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Drawing;
using System.Web.SessionState;
using System.Drawing.Imaging;

namespace DersDemo_ASP_FormValidation
{
    /// <summary>
    /// Summary description for $codebehindclassname$
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    public class Chapca : IHttpHandler, IRequiresSessionState
    {

        public void ProcessRequest(HttpContext context)
        {
            ses = context.Session;

            Guid id = new Guid(context.Request.QueryString["id"]);

            if (ChaptcaValues.ContainsKey(id))
            {
                context.Response.ContentType = "image/jpeg";
                Bitmap bm = new Bitmap(150, 30);
                Graphics g = Graphics.FromImage(bm);

                Font f = new Font("Comic Sans MS", 15f);
                StringFormat sf = new StringFormat();
                sf.Alignment = StringAlignment.Center;
                sf.LineAlignment = StringAlignment.Center;

                g.DrawString(ChaptcaValues[id], f, Brushes.Blue, new RectangleF(0, 0, bm.Width, bm.Height), sf);

                bm.Save(context.Response.OutputStream, ImageFormat.Jpeg);
            }
            else
            {
                return;
            }
        }

        private HttpSessionState ses;

        public Dictionary<Guid, string> ChaptcaValues
        {
            get
            {
                Dictionary<Guid, string> d = ses["ChaptcaValues"] as Dictionary<Guid, string>;
                if (d == null)
                {
                    ses["ChaptcaValues"] = d = new Dictionary<Guid, string>();
                }

                return d;
            }
        }


        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}
