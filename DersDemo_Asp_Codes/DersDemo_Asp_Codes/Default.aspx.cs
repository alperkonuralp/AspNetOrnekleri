using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

namespace DersDemo_Asp_Codes
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bGonder_Click(object sender, EventArgs e)
        {
            if (tbAd.Text.ToLower().StartsWith("a") &&
                tbSoyad.Text.ToLower().StartsWith("k"))
            {
                lMesaj.Text = "Hoşgeldiniz.";
                lMesaj.Font.Size = FontUnit.Large;
                lMesaj.Font.Bold = true;
                lMesaj.ForeColor = Color.Green;

                t.Visible = false;
            }
            else
            {
                lMesaj.Text = 
                    "Bilgileriniz Hatalı. Lütfen Tekrar deneyiniz.";
                lMesaj.ForeColor = Color.Red;
            }
        }
    }
}
