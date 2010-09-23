using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DersDemo_ASP_Ado2
{
    public partial class LinqDemo2 : System.Web.UI.Page
    {
        List<Bilgiler> bilgiler = new List<Bilgiler>();

        protected void Page_Load(object sender, EventArgs e)
        {
            bilgiler.Add(new Bilgiler(1, "Alper", "Konuralp"));
            bilgiler.Add(new Bilgiler(2, "Burcu", "Konuralp"));
            bilgiler.Add(new Bilgiler(3, "Yağmur", "Konuralp"));
            bilgiler.Add(new Bilgiler(4, "Ali", "Konuralp"));
            bilgiler.Add(new Bilgiler(5, "Çiğdem", "Konuralp"));
            bilgiler.Add(new Bilgiler(6, "Ela", "Konuralp"));
            bilgiler.Add(new Bilgiler(7, "Nigar", "Konuralp"));
            bilgiler.Add(new Bilgiler(8, "Tahir", "Konuralp"));

        }

        protected void bAra_Click(object sender, EventArgs e)
        {
            string tb = tbArama.Text.ToLower();

            gv.DataSource =
                from a in bilgiler
                where   a.Ad.ToLower().Contains(tb) || 
                        a.Soyad.ToLower().Contains(tb)
                orderby a.Ad descending
                select a;
            gv.DataBind();
        }
    }

    public class Bilgiler
    {
        public int No { get; set; }
        public string Ad { get; set; }
        public string Soyad { get; set; }

        public Bilgiler(int no, string ad, string soyad)
        {
            No = no;
            Ad = ad;
            Soyad = soyad;
        }
    }
}
