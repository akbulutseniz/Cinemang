using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Cinemang.Controllers
{
    public class ListCommentsController : Controller
    {
        // GET: ListComments
        public ActionResult Index()
        {
            Models.CinemangData db = new Models.CinemangData();
            List<Models.Comments> commentlist = db.Comments.ToList();
            return View(commentlist);
        }
    }
}