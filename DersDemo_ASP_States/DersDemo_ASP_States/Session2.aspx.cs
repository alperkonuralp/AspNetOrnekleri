using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DersDemo_ASP_States
{
    public partial class Session2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Ad"] != null)
            {
                l1.Text = Session["Ad"].ToString();
                l2.Text = Session["Zaman"].ToString();
            }
            else
            {
                Response.Redirect("Session1.aspx");
            }
        }
    }
}
