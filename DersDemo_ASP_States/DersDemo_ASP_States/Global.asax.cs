using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace DersDemo_ASP_States
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            OnlineKullaniciSayisi = 0;
            HitSayisi = 0;
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            OnlineKullaniciSayisi++;
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {
            HitSayisi++;
        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {
            OnlineKullaniciSayisi--;
        }

        protected void Application_End(object sender, EventArgs e)
        {

        }

        public int OnlineKullaniciSayisi
        {
            get
            {
                if (Application["OnlineKullaniciSayisi"] is int)
                    return (int)Application["OnlineKullaniciSayisi"];

                return 0;
            }
            set
            {
                Application.Lock();
                Application["OnlineKullaniciSayisi"] = value;
                Application.UnLock();
            }
        }

        public int HitSayisi
        {
            get
            {
                if (Application["HitSayisi"] is int)
                    return (int)Application["HitSayisi"];

                return 0;
            }
            set
            {
                Application.Lock();
                Application["HitSayisi"] = value;
                Application.UnLock();
            }
        }
    }
}