using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DersDemo_ASP_OutputCache
{
    public partial class ControlParameter : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ddl_SelectedIndexChanged(object sender, EventArgs e)
        {
            lb.Items.Clear();
            for (int i = 1; i <= 10; i++)
            {
                lb.Items.Add(string.Format("{0} - {1}",
                    ddl.SelectedItem.Text, i));
            }
        }

        protected void lb_SelectedIndexChanged(object sender, EventArgs e)
        {
            l.Text = lb.SelectedItem.Text;
        }
    }
}
