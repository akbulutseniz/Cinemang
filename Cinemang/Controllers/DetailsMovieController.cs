using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;

namespace Cinemang.Controllers
{
    public class DetailsMovieController : Controller
    {
        // GET: DetailsMovie
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
            Models.Movie movie = db.Movie.Find(id);
            if (movie == null)
            {
                return HttpNotFound();
            }
            return View(movie);
        }

    }
}