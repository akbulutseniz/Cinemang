using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Cinemang.Controllers
{
    public class UserBuyTicketController : Controller
    {
        // GET: UserBuyTicket
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult BuyTicket(Models.Ticket tic) 
        {
            if (ModelState.IsValid)
            {
                Models.CinemangData db = new Models.CinemangData();
                db.Ticket.Add(tic);
                db.SaveChanges();
                return RedirectToAction("Index", "ListCinemas");
            }
            return View(tic);
        }
        
    }
}