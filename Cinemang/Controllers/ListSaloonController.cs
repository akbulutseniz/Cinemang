using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Cinemang.Controllers
{
    public class ListSaloonController : Controller
    {
        // GET: ListSaloon
        public ActionResult Index()
        {
            Models.CinemangData db = new Models.CinemangData();
            List<Models.Theatre> theatresList = db.Theatre.ToList();
            return View(theatresList);
        }
    }
}