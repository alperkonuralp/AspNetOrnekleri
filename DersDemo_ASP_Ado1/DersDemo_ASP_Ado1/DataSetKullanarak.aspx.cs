using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;

namespace DersDemo_ASP_Ado1
{
    public partial class DataSetKullanarak : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            OleDbConnection con =
                new OleDbConnection(
                    "Provider=Microsoft.ACE.OLEDB.12.0;" +
                    "Data Source=" + Server.MapPath("~/App_Data/TelefonRehberi.xlsx") + ";" +
                    "Extended Properties=\"Excel 12.0 Xml;HDR=YES\";");

            OleDbDataAdapter da =
                new OleDbDataAdapter(
                    "SELECT *, [Ad] + ' ' + [Soyad] as [TamAd] FROM [Rehber$]",
                    con);

            DataSet ds = new DataSet();
            
            da.Fill(ds, "Rehber");

            gv.DataSource = ds;
            gv.DataMember = "Rehber";
            gv.DataBind();

            ddl.DataSource = ds;
            ddl.DataMember = "Rehber";
            ddl.DataTextField = "TamAd";
            ddl.DataValueField = "TelefonNo";
            ddl.DataBind();
        }
    }
}
