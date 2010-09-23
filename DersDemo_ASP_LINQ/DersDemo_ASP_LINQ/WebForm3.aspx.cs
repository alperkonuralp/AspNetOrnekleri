using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DersDemo_ASP_LINQ.DataLayer;

namespace DersDemo_ASP_LINQ
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (var data =
                new NorthwindDataClassesDataContext())
            {
                var liste =
                    from a in data.Order_Details
                    group a by a.ProductID into g
                    select new
                    {
                        ProductID = g.Key,
                        TotalPrice = g.Sum(x => x.UnitPrice * x.Quantity)
                    };

                gv.DataSource = liste;
                gv.DataBind();
            }
        }
    }
}
