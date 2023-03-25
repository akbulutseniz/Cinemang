using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Cinemang.Controllers
{
    public class ListRatingsController : Controller
    {
        // GET: ListRating
        public ActionResult Index()
        {
            Models.CinemangData db = new Models.CinemangData();
            List<Models.Rating> ratinglist = db.Rating.ToList();
            return View(ratinglist);
        }
    }
}