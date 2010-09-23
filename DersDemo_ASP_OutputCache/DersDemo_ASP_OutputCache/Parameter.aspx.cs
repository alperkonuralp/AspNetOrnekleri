using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DersDemo_ASP_OutputCache
{
    public partial class Parameter : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lb1_Click(object sender, EventArgs e)
        {
            tr1.Visible = true;
            tr2.Visible = tr3.Visible = false;
        }

        protected void lb2_Click(object sender, EventArgs e)
        {
            tr2.Visible = true;
            tr1.Visible = tr3.Visible = false;
        }

        protected void lb3_Click(object sender, EventArgs e)
        {
            tr3.Visible = true;
            tr1.Visible = tr2.Visible = false;
        }
    }
}
