using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DersDemo_Asp_Codes
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lb_SelectedIndexChanged(object sender, EventArgs e)
        {
            tb.Text = lb.SelectedItem.Text;
        }

        protected void tb_TextChanged(object sender, EventArgs e)
        {
            lMesaj.Text = tb.Text;
        }
    }
}
