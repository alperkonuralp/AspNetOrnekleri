using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DersDemo_CS_UserControls.Resources.UserControls
{
    public partial class UCTCKimlikNo : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public string TCKimlikNo
        {
            get
            {
                return tbTCKimlikNo.Text;
            }
            set
            {
                tbTCKimlikNo.Text = value;
            }
        }

        public bool Zorunlu
        {
            get
            {
                return rfvTCKimlikNo.Enabled;
            }
            set
            {
                rfvTCKimlikNo.Enabled = value;
            }
        }

        public string ValidationGroup
        {
            get { return tbTCKimlikNo.ValidationGroup; }
            set
            {
                tbTCKimlikNo.ValidationGroup =
                    rfvTCKimlikNo.ValidationGroup =
                    revTCKimlikNo.ValidationGroup = value;
            }
        }
    }
}