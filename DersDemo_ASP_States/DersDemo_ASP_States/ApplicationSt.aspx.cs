using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DersDemo_ASP_States
{
    public partial class ApplicationSt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            l.Text = (++Sayac).ToString();
        }

        public int Sayac
        {
            get
            {
                if (Application["Sayac"] is int)
                {
                    return (int)Application["Sayac"];
                }
                else
                {
                    return 0;
                }
            }
            set
            {
                Application.Lock();
                Application["Sayac"] = value;
                Application.UnLock();
            }
        }
    }
}
