using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Cinemang.Controllers
{
    public class StaffLoginController : Controller
    {

        // GET: StaffLogin
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Login(string username, string password) 
        {
            if (new Models.StaffLogin().isLoginSuccess(username,password))
            {
                return RedirectToAction("Index", "StaffHome");
            }
            else
            {
                return RedirectToAction("Index", "StaffLogin");
            }
           
        }
    }
}