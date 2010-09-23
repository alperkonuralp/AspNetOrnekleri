using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DersDemo_ASP_States
{
    public partial class Cookie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            l.Text = (++Sayac).ToString();
        }

        private int _sayac = -1;
        public int Sayac
        {
            get
            {
                if (_sayac == -1)
                {
                    HttpCookie co = Request.Cookies["Sayac"];
                    if (co == null)
                    {
                        _sayac = 0;
                    }
                    else
                    {
                        _sayac = int.Parse(co.Value);
                    }
                }

                return _sayac;
            }
            set
            {
                _sayac = value;

                if (Response.Cookies["Sayac"] == null)
                {
                    // yeni cookie oluşturma
                    HttpCookie co =
                        new HttpCookie("Sayac", _sayac.ToString());

                    Response.Cookies.Add(co);
                }
                else
                {
                    // var olan cookie'yi değiştirme
                    HttpCookie co = Response.Cookies["Sayac"];
                    co.Value = _sayac.ToString();
                }
            }
        }
    }
}
