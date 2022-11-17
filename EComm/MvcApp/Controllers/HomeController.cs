using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MvcApp.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About(string name = "")
        {
            name = "<h1>Bill</h1>";

            ViewBag.Name = name;
            if (!string.IsNullOrWhiteSpace(name)) {
                ViewBag.Greeting = $"Hello, {name}";
            }
            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }

        public string GetServerTime()
        {
            return $"<p>{DateTime.Now.ToLongTimeString()}</p>";
        }
    }
}