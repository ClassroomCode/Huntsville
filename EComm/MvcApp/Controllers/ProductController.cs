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

            return View(suppliers);
        }
    }
}