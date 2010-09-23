using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

namespace WebTest
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (DemoService.Demo serv =
                new WebTest.DemoService.Demo())
            {
                lHelloWorld.Text = serv.HelloWorld();
            }

            using (Weather.Weather w = new WebTest.Weather.Weather())
            {
                var a = w.GetCityForecastByZIP("10001");

                //lForecast.Text = a.ResponseText;
                StringBuilder sb = new StringBuilder();
                sb.AppendFormat("City: {0}<br/>", a.City);
                foreach (var item in a.ForecastResult)
                {
                    sb.AppendFormat("{0} - {1}<br/>",
                        item.Date.ToLongDateString(),
                        item.Desciption);
                }

                lForecast.Text = sb.ToString();
            }
        }
    }
}
