using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Diagnostics;

namespace DersDemo_ASP_Trace
{
    public partial class _Default : System.Web.UI.Page
    {
        Stopwatch sw = new Stopwatch();
        protected override void OnPreInit(EventArgs e)
        {
            sw.Start();
            base.OnPreInit(e);
        }

        protected override void Render(HtmlTextWriter writer)
        {
            base.Render(writer);
            sw.Stop();
            writer.Write(
                " Bu sayfa {0} milisaniyede hazırlandı. ", 
                sw.ElapsedMilliseconds);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            StringBuilder sb = new StringBuilder("1");
            if(Trace.IsEnabled) Trace.Warn("StringBuilder Üretildi.");
            for (decimal i = 1, j = 1, k = 0; i < 10000000000000; k = i + j, i = j, j = k)
            {
                sb.AppendFormat(" {0}", j);
            }
            if (Trace.IsEnabled) Trace.Write("StringBuilder Dolduruldu.");
            lMesaj.Text = sb.ToString();

            lbMesaj.Text = Request.ServerVariables["REMOTE_ADDR"];
        }
    }
}
