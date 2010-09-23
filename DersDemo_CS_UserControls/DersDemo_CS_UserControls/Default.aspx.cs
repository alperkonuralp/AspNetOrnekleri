using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DersDemo_CS_UserControls
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bGonder_Click(object sender, EventArgs e)
        {
            tbYazi.Text = UCTCKimlikNo1.TCKimlikNo;
        }
    }
}
