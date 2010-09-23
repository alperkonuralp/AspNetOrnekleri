using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DersDemo_ASP_LINQ.DataLayer;

namespace DersDemo_ASP_LINQ
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (var data =
                new NorthwindDataClassesDataContext())
            {
                var liste = (
                    from a in data.Products
                    orderby a.UnitPrice descending
                    select a).Take(20).ToList();

                gv.DataSource = liste;
                gv.DataBind();

                // var kullanımı
                var i = 0;
                //List<KeyValuePair<int, string>>

                // anonim tipler
                var tip = new { Ad = "Alper", Soyad = "Konuralp", No = 5 };
                string s = tip.Ad + " " + tip.Soyad;
            }
        }
    }
}
