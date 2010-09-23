using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DersDemo_ASP_States
{
    public partial class View_State : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!Page.IsPostBack) ViewState["Sayac"] = 0;

            //ViewState["Sayac"] = ((int)ViewState["Sayac"] + 1);
            //l.Text = ViewState["Sayac"].ToString();

            l.Text = (++Sayac).ToString();
        }

        public int Sayac
        {
            get
            {
                if (ViewState["Sayac"] is int)
                    return (int)ViewState["Sayac"];
                return 0;
            }
            set
            {
                ViewState["Sayac"] = value;
            }
        }
    }
}
