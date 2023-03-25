using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Cinemang.Controllers
{
    public class AddSeansController : Controller
    {
        // GET: AddSeans
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Create(Models.Seans se)
        {
            if (ModelState.IsValid)
            {
                Models.CinemangData db = new Models.CinemangData();
                db.Seans.Add(se);
                db.SaveChanges();
                return RedirectToAction("Index", "ListSeans");
            }
            return View(se);
        }
    }
}