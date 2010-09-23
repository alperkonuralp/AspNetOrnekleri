using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DersDemo_Asp_Codes
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bBlack_Click(object sender, EventArgs e)
        {
            Button b = sender as Button;
            if (b != null)
            {
                bBody.Style.Add("background", b.Text);
            }
        }
    }
}
