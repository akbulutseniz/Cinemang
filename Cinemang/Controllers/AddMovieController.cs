using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Cinemang.Controllers
{
    public class AddMovieController : Controller
    {
        // GET: AddMovie
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Create(Models.Movie mov) 
        {
            if (ModelState.IsValid)
            {
                Models.CinemangData db = new Models.CinemangData();
                db.Movie.Add(mov);
                db.SaveChanges();
                return RedirectToAction("Index","ListMovies");
            }
            return View(mov);
        }
    }
}