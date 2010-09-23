using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace DersDemo_ASP_Ado1
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            OleDbConnection con =
                new OleDbConnection(
                    "Provider=Microsoft.ACE.OLEDB.12.0;" +
                    "Data Source=" + Server.MapPath("~/App_Data/TelefonRehberi.xlsx") + ";" +
                    "Extended Properties=\"Excel 12.0 Xml;HDR=YES\";");

            con.Open();

            OleDbCommand com = new OleDbCommand(
                "SELECT * FROM [Rehber$]",
                con);

            OleDbDataReader dr = com.ExecuteReader();

            gv.DataSource = dr;
            gv.DataBind();
        }
    }
}
