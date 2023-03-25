using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;

namespace Cinemang.Controllers
{
    public class DeleteCommentController : Controller
    {
        // GET: DeleteComment
        public ActionResult Index()
        {
            Models.CinemangData db = new Models.CinemangData();
            List<Models.Comments> commentList = db.Comments.ToList();
            return View(commentList);
        }

        public ActionResult Index(string searchString)
        {
            Models.CinemangData db = new Models.CinemangData();
            var com = from m in db.Comments
                         select m;

            if (!String.IsNullOrEmpty(searchString))
            {
                com = com.Where(s => s.comComment.Contains(searchString));
            }

            return View(com);
        }

        public ActionResult Delete(int? id)
        {
            Models.CinemangData db = new Models.CinemangData();
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Models.Comments com = db.Comments.Find(id);
            if (com == null)
            {
                return HttpNotFound();
            }
            return View(com);
        }

        // POST: /Movies/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Models.CinemangData db = new Models.CinemangData();
            Models.Comments com = db.Comments.Find(id);
            db.Comments.Remove(com);
            db.SaveChanges();
            return RedirectToAction("Index", "ListComments");
        }
    }
}