using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Cinemang.Controllers
{
    public class ListCinemasController : Controller
    {
        // GET: ListCinemas
        public ActionResult Index()
        {
            Models.CinemangData db = new Models.CinemangData();
            List<Models.Cinema> cinemaList = db.Cinema.ToList();
            return View(cinemaList);
        }
    }
}