using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;

namespace Cinemang.Controllers
{
    public class DetailsCinemaController : Controller
    {
        // GET: DetailsCinema
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Details(int? id)
        {
            Models.CinemangData db = new Models.CinemangData();
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Models.Cinema cinema = db.Cinema.Find(id);
            if (cinema == null)
            {
                return HttpNotFound();
            }
            return View(cinema);
        }

    }
}