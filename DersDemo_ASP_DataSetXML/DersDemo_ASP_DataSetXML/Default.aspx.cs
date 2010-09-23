using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DersDemo_ASP_DataSetXML.DataLayer;
using DersDemo_ASP_DataSetXML.DataLayer.NorthwindDataSetTableAdapters;

namespace DersDemo_ASP_DataSetXML
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var ds = new NorthwindDataSet();

            using (var ta = new CustomersTableAdapter())
            {
                ta.Fill(ds.Customers);

                ds.WriteXml(Server.MapPath("~/App_data/veri.xml"), 
                    System.Data.XmlWriteMode.WriteSchema);
            }
        }
    }
}
