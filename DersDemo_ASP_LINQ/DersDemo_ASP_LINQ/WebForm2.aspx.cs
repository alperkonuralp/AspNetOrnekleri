using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DersDemo_ASP_LINQ.DataLayer;

namespace DersDemo_ASP_LINQ
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (var data =
                new NorthwindDataClassesDataContext())
            {
                var liste = (
                    from a in data.Products
                    orderby a.UnitPrice descending
                    select new {
                        a.CategoryID, a.Category.CategoryName,
                        a.ProductID, a.ProductName,
                        a.UnitPrice
                    }).Take(10);

                gv.DataSource = liste;
                gv.DataBind();
            }
        }
    }
}
