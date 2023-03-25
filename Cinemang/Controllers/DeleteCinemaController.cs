using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;

namespace Cinemang.Controllers
{
    public class DeleteCinemaController : Controller
    {
        // GET: DeleteCinema
        public ActionResult Index()
        {
            Models.CinemangData db = new Models.CinemangData();
            List<Models.Cinema> cinemalist = db.Cinema.ToList();
            return View(cinemalist);
        }
        [HttpPost]
        public ActionResult Index(string searchString)
        {
            Models.CinemangData db = new Models.CinemangData();
            var cinemas = from m in db.Cinema
                         select m;

            if (!String.IsNullOrEmpty(searchString))
            {
                cinemas = cinemas.Where(s => s.cLocation.Contains(searchString));
            }

            return View(cinemas);
        }

        public ActionResult Delete(int? id)
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

  
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Models.CinemangData db = new Models.CinemangData();
            Models.Cinema cinema = db.Cinema.Find(id);
            db.Cinema.Remove(cinema);
            db.SaveChanges();
            return RedirectToAction("Index", "ListCinemas");
        }
    }
}