using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DersDemo_ASP_DataSetXML.DataLayer;

namespace DersDemo_ASP_DataSetXML
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var ds = new NorthwindDataSet();

            ds.ReadXml(Server.MapPath("~/App_data/veri.xml"));

            gv.DataSource = ds;
            gv.DataMember = "Customers";
            gv.DataBind();
        }
    }
}
