using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DersDemo_ASP_Ado2.DataLayer;
using DersDemo_ASP_Ado2.DataLayer.NorthwindDataSetTableAdapters;

namespace DersDemo_ASP_Ado2
{
    public partial class LinqDemo : System.Web.UI.Page
    {
        public NorthwindDataSet Veri
        {
            get
            {
                if (Application["Veri"] is NorthwindDataSet)
                {
                    return (NorthwindDataSet)Application["Veri"];
                }

                NorthwindDataSet ds = new NorthwindDataSet();

                CategoriesTableAdapter ta1 = new CategoriesTableAdapter();
                ta1.Fill(ds.Categories);

                ProductsTableAdapter ta2 = new ProductsTableAdapter();
                ta2.Fill(ds.Products);

                Application["Veri"] = ds;
                return ds;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                ddl.DataSource = Veri;
                ddl.DataMember = "Categories";
                ddl.DataTextField = "CategoryName";
                ddl.DataValueField = "CategoryID";
                ddl.DataBind();
            }
        }

        protected void ddl_SelectedIndexChanged(object sender, EventArgs e)
        {
            int cid = int.Parse(ddl.SelectedValue);

            List<NorthwindDataSet.ProductsRow> liste =
                (from a in Veri.Products
                 where a.CategoryID == cid
                 select a).ToList();

            gv.DataSource = liste;
            gv.DataBind();
        }
    }
}
