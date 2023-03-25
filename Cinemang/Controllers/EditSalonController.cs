using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;

namespace Cinemang.Controllers
{
    public class EditSalonController : Controller
    {
        // GET: EditSalon
        public ActionResult Index()
        {
            Models.CinemangData db = new Models.CinemangData();
            List<Models.Theatre> theatreList = db.Theatre.ToList();
            return View(theatreList);
        }
        [HttpPost]
        public ActionResult Index(string searchString)
        {
            Models.CinemangData db = new Models.CinemangData();
            var theatre = from m in db.Theatre
                          select m;

            if (!String.IsNullOrEmpty(searchString))
            {
                theatre = theatre.Where(s => s.tName.Contains(searchString));
            }

            return View(theatre);
        }
        //GET
        public ActionResult Edit(int? id)
        {
            Models.CinemangData db = new Models.CinemangData();
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Models.Theatre theatre = db.Theatre.Find(id);
            if (theatre == null)
            {
                return HttpNotFound();
            }
            return View(theatre);
        }

        // POST: /Movies/Edit/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "t_id,tType,tInformation,tTotalSeat,tRating")] Models.Theatre theatre)
        {
            Models.CinemangData db = new Models.CinemangData();
            if (ModelState.IsValid)
            {
                db.Entry(theatre).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index", "ListSaloon");
            }
            return View(theatre);
        }
    }
}