using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Cinemang.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            Models.CinemangData db = new Models.CinemangData();
            List<Models.Movie> movielist = db.Movie.ToList();
            return View(movielist);
        }

    }
}