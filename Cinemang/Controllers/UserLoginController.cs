using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data.SqlClient;
using Cinemang.Models;

namespace Cinemang.Controllers
{
    public class UserLoginController : Controller
    {
        // GET: UserLogin
        public ActionResult Index()
        {
            return View();
        }


        [HttpPost]
        public ActionResult LoginUser(string username, string password)
        {
            Models.CinemangData db = new Models.CinemangData();
            Users resultUser = db.Users.Where(x => x.uUsername.Equals(username) && x.uPassword.Equals(password)).FirstOrDefault();

            if (resultUser != null)
            {
                Session["uyeOturum"] = true;
                Session["uyeId"] = resultUser.u_id;
                Session["uyeKadi"] = resultUser.uSurname;
                return RedirectToAction("Index", "Home");
            }
            else
            {
                return RedirectToAction("Index", "UserLogin");
            }

        }


    }
}