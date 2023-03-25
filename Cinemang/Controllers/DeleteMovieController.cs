using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;

namespace Cinemang.Controllers
{
    public class DeleteMovieController : Controller
    {
        // GET: DeleteMovie
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

        public ActionResult Delete(int? id)
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

        // POST: /Movies/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Models.CinemangData db = new Models.CinemangData();
            Models.Movie movie = db.Movie.Find(id);
            db.Movie.Remove(movie);
            db.SaveChanges();
            return RedirectToAction("Index","ListMovies");
        }
    }
}