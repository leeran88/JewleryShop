using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace JewleryShop.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            ViewBag.Message = "הילה - עיצוב תכשיטים. ברוכים הבאים";

            return View();
        }

        public ActionResult About()
        {
            return View();
        }
    }
}
