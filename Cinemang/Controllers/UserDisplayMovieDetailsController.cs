using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;

namespace Cinemang.Controllers
{
    public class UserDisplayMovieDetailsController : Controller
    {
        Models.CinemangData db = new Models.CinemangData();
        // GET: UserDisplayMovieDetails
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Display(int? id)
        {
            Models.CinemangData db = new Models.CinemangData();
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Models.Movie movie = db.Movie.Find(id);
            if (movie == null)
            {
                return HttpNotFound();
            }
            Models.Comments comment = db.Comments.Where(x => x.m_id == id).FirstOrDefault();
            return View(movie);
        }
        [HttpPost]
        public ActionResult Display(string kullaniciadi ,string email, string phone,string comment,int mid)
        {
            Models.CinemangData db = new Models.CinemangData();
            Models.Comments com = new Models.Comments();
            com.comComment = comment;
            var user = (from i in db.Users where i.uUsername == kullaniciadi && i.uEmail == email && i.uPhone == phone select new { i.u_id }).FirstOrDefault();
            com.u_id = user.u_id;
            com.m_id = mid;
            db.Comments.Add(com);
            db.SaveChanges();
            return View(com);

        }
    }
}