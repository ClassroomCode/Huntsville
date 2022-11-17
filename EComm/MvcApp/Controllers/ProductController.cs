using ECommLib;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MvcApp.Controllers
{
    public class ProductController : Controller
    {
        public ActionResult Index()
        {
            var db = new Repository();
            var suppliers = db.GetSuppliers();

            /*
            var items = new List<SelectListItem>();
            foreach (var s in suppliers) {
                var item = new SelectListItem { Text = s.CompanyName, Value = s.Id.ToString() };
                items.Add(item);
            }
            */

            //var items = from s in suppliers select
            //            new SelectListItem { Text = s.CompanyName, Value = s.Id.ToString() };


            return View(suppliers);
        }

        public ActionResult ProductList(int supplierId)
        {
            var db = new Repository();
            var products = db.GetProducts(supplierId);

            return View("_ProductList", products);
        }
    }
}