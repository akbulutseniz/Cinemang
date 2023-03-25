using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Cinemang.Controllers
{
    public class ListTicketController : Controller
    {
        // GET: ListTicket
        public ActionResult Index()
        {
            Models.CinemangData db = new Models.CinemangData();
            List<Models.Ticket> ticketList = db.Ticket.ToList();
            return View(ticketList);
        }
    }
}