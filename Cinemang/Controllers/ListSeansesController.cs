using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Cinemang.Controllers
{
    public class ListSeansesController : Controller
    {
        // GET: ListSeans
        public ActionResult Index()
        {
            Models.CinemangData db = new Models.CinemangData();
            List<Models.Seans> seansList = db.Seans.ToList();
            return View(seansList);
        }
    }
}