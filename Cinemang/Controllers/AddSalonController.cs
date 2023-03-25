using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Cinemang.Controllers
{
    public class AddSalonController : Controller
    {
        // GET: AddSalon
        public ActionResult Index()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Create(Models.Theatre the)
        {
            if (ModelState.IsValid)
            {
                Models.CinemangData db = new Models.CinemangData();
                db.Theatre.Add(the);
                db.SaveChanges();
                return RedirectToAction("Index", "ListSaloon");
            }
            return View(the);
        }
    }
}