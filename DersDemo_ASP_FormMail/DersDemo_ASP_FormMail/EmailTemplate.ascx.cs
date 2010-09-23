using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DersDemo_ASP_FormMail
{
    public partial class EmailTemplate : System.Web.UI.UserControl
    {
        public EmailProperties Email { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}