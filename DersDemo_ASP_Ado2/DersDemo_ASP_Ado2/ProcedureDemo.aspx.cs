using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace DersDemo_ASP_Ado2
{
    public partial class ProcedureDemo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bAl_Click(object sender, EventArgs e)
        {
            using (SqlConnection sc = new SqlConnection(
                "Data Source=.; Initial Catalog=Northwind;" +
                "Integrated Security=true;"))
            {
                SqlCommand scom = new SqlCommand(
                    "EXEC TarihBazindaSatisRaporu @Baslangic, @Bitis, @Toplam OUTPUT", sc);
                //scom.CommandType = CommandType.StoredProcedure;

                scom.Parameters.AddWithValue(
                    "@Baslangic", cBaslangic.SelectedDate);
                scom.Parameters.AddWithValue(
                    "@Bitis", cBitis.SelectedDate);

                scom.Parameters.Add(
                    new SqlParameter("@Toplam", SqlDbType.Money));
                scom.Parameters["@Toplam"].Value = DBNull.Value;
                scom.Parameters["@Toplam"].Direction =
                    ParameterDirection.Output;

                sc.Open();
                using (SqlDataReader sdr = scom.ExecuteReader())
                {

                    gv.DataSource = sdr;
                    gv.DataBind();

                    lToplam.Text =
                        scom.Parameters["@Toplam"]
                        .Value.ToString();
                }
            }
        }
    }
}
