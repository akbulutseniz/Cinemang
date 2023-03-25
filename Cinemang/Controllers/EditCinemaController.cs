using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;

namespace Cinemang.Controllers
{
    public class EditCinemaController : Controller
    {
        // GET: EditCinema
        public ActionResult Index()
        {
            Models.CinemangData db = new Models.CinemangData();
            List<Models.Cinema> cinemaList = db.Cinema.ToList();
            return View(cinemaList);
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
        //GET
        public ActionResult Edit(int? id)
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

        // POST: /Movies/Edit/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "c_id,cName,cAddress,cLocation")] Models.Cinema cinema)
        {
            Models.CinemangData db = new Models.CinemangData();
            if (ModelState.IsValid)
            {
                db.Entry(cinema).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index", "ListCinemas");
            }
            return View(cinema);
        }
    }
}