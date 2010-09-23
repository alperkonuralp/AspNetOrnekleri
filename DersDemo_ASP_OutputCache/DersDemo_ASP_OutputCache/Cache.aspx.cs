using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Caching;

namespace DersDemo_ASP_OutputCache
{
    public partial class Cache : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            gv.DataSource = Kurlar;
            gv.DataBind();
        }

        public DovizKuru[] Kurlar
        {
            get
            {
                if (Cache["Kurlar"] is DovizKuru[])
                {
                    return (DovizKuru[])Cache["Kurlar"];
                }
                var kurlar = DovizKurlari.KurlariAl();

                Cache.Add("Kurlar", kurlar, null,
                    // 1. Seçenek kesin zaman tanımı
                    //DateTime.Now.AddMinutes(5), 
                    //TimeSpan.Zero,
                    // 2. Şu andan itibaren şu kadar süre sonra
                    System.Web.Caching.Cache.NoAbsoluteExpiration,
                    new TimeSpan(0, 5, 0),
                    CacheItemPriority.Normal,
                    null);

                return kurlar;
            }
        }

        protected void ddlTl1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlTl1.SelectedIndex == 0)
                ddlTl1.SelectedIndex = 1;

            double d;
            if (double.TryParse(tbTl1.Text, out d))
            {
                double d2 =
                    d / Kurlar[ddlTl1.SelectedIndex - 1].Fiyat;
                tbDoviz1.Text = d2.ToString("N2");

            }
        }

        protected void Cevir2(object sender, EventArgs e)
        {
            double d;
            if (double.TryParse(tbDoviz2.Text, out d))
            {
                double d2 =
                    d * Kurlar[ddlDoviz1.SelectedIndex].Fiyat;
                tbTl2.Text = d2.ToString("N2");

            }
        }

        protected void ddlDoviz3_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlDoviz4.Items.Clear();
            foreach (ListItem item in ddlDoviz3.Items)
            {
                if (item == ddlDoviz3.SelectedItem) continue;
                ddlDoviz4.Items.Add(
                    new ListItem(item.Text, item.Value));
            }
            ddlDoviz4.SelectedIndex = 0;

            Cevir3(sender, e);
        }

        protected void Cevir3(object sender, EventArgs e)
        {
            double d;
            int secim1 = ddlDoviz3.SelectedIndex;
            int secim2 = int.Parse(ddlDoviz4.SelectedValue);

            if (double.TryParse(tbDoviz3.Text, out d))
            {
                double d2 =
                    d * Kurlar[secim1].Fiyat / Kurlar[secim2].Fiyat;
                tbDoviz4.Text = d2.ToString("N2");

            }
        }
    }
}
