using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;

namespace Cinemang.Controllers
{
    public class EditMovieController : Controller
    {
        // GET: EditMovie
        public ActionResult Index()
        {
            Models.CinemangData db = new Models.CinemangData();
            List<Models.Movie> movielist = db.Movie.ToList();
            return View(movielist);
        }
        [HttpPost]
        public ActionResult Index(string searchString)
        {
            Models.CinemangData db = new Models.CinemangData();
            var movies = from m in db.Movie
                         select m;

            if (!String.IsNullOrEmpty(searchString))
            {
                movies = movies.Where(s => s.mName.Contains(searchString));
            }

            return View(movies);
        }
        //GET
        public ActionResult Edit(int? id)
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

        // POST: /Movies/Edit/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "m_id,mName,mReleaseDate,mTime,mDirectors,mWritters,mCast,mCountry,mLanguage,mGenre,mInformation,mImageUrl")] Models.Movie movie)
        {
            Models.CinemangData db = new Models.CinemangData();
            if (ModelState.IsValid)
            {
                db.Entry(movie).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index","ListMovies");
            }
            return View(movie);
        }

    }
}