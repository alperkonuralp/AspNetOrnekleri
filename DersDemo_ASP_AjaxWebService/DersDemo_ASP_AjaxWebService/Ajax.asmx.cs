using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using DersDemo_ASP_AjaxWebService.DataLayer;

namespace DersDemo_ASP_AjaxWebService
{
    /// <summary>
    /// Summary description for Ajax
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class Ajax : System.Web.Services.WebService
    {
        [WebMethod]
        public EProduct[] GetAllProducts()
        {
            using (NorthwindDataContext datas =
                new NorthwindDataContext())
            {
                return (from a in datas.Products
                        select new EProduct()
                        {
                            ProductID = a.ProductID,
                            ProductName = a.ProductName,
                            UnitPrice = a.UnitPrice ?? 0
                        }).ToArray();
            }

            //EProduct ep = new EProduct();
            //ep.ProductID = 1;
            //ep.ProductName = "";
            //ep.UnitPrice = 2.5m;

            //EProduct ep2 = new EProduct()
            //{
            //    ProductID = 1,
            //    ProductName = "",
            //    UnitPrice = 2.5m
            //};
        }
    }

    public class EProduct
    {
        public int ProductID { get; set; }
        public string ProductName { get; set; }
        public decimal UnitPrice { get; set; }
    }
}
