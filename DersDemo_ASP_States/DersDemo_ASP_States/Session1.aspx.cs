using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DersDemo_ASP_States
{
    public partial class Session1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void b_Click(object sender, EventArgs e)
        {
            Session["Ad"] = tb.Text;
            Session["Zaman"] = DateTime.Now;

            Response.Redirect("Session2.aspx");
        }
    }
}
