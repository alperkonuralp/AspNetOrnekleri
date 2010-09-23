using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml.Linq;
using System.Globalization;

namespace DersDemo_ASP_OutputCache
{
    public class DovizKurlari
    {
        public static DovizKuru[] KurlariAl()
        {
            // internetten veriyi çekip,
            // dizi haline getirecek.
            var dizi = new DovizKuru[3];

            var xd = XDocument.Load("http://realtime.paragaranti.com/asp/xml/icpiyasaX.xml");

            DovizKuru dk;
            int a = 0;
            foreach (var item in xd.Descendants("STOCK")) // $("STOCK", xd)
            {
                var sym = item.Descendants("SYMBOL").First().Value;

                switch (sym)
                {
                    case "KUSD":
                        dk = new DovizKuru();
                        dk.Kod = sym;
                        dk.Ad = item.Descendants("DESC").First().Value;
                        dk.Fiyat = double.Parse(
                            item.Descendants("LAST").First().Value,
                            new CultureInfo("tr-TR"));

                        dizi[0] = dk;
                        a++;
                        break;

                    case "KEUR":
                        dk = new DovizKuru();
                        dk.Kod = sym;
                        dk.Ad = item.Descendants("DESC").First().Value;
                        dk.Fiyat = double.Parse(
                            item.Descendants("LAST").First().Value,
                            new CultureInfo("tr-TR"));

                        dizi[1] = dk;
                        a++;
                        break;

                    case "KBP":
                    case "KGBP":
                        dk = new DovizKuru();
                        dk.Kod = sym;
                        dk.Ad = item.Descendants("DESC").First().Value;
                        dk.Fiyat = double.Parse(
                            item.Descendants("LAST").First().Value,
                            new CultureInfo("tr-TR"));

                        dizi[2] = dk;
                        a++;
                        break;

                    default:
                        break;
                }

                if (a == 3) break;
            }

            return dizi;
        }

    }

    [Serializable]
    public class DovizKuru
    {
        public string Kod { get; set; }
        public string Ad { get; set; }
        public double Fiyat { get; set; }
    }
}
