using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Cinemang.Controllers
{
    public class AddCinemaController : Controller
    {
        // GET: AddCinema
        public ActionResult Index()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Create(Models.Cinema cin)
        {
            if (ModelState.IsValid)
            {
                Models.CinemangData db = new Models.CinemangData();
                db.Cinema.Add(cin);
                db.SaveChanges();
                return RedirectToAction("Index", "ListCinemas");
            }
            return View(cin);
        }
    }
}