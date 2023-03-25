using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Cinemang.Models
{
    public class UserLogin
    {
        private Models.CinemangData db;

        public UserLogin()
        {
            db = new Models.CinemangData();

        }

        public bool isUserLoginSuccess(string user, string pass)
        {
            Users resultUser = db.Users.Where(x => x.uUsername.Equals(user) && x.uPassword.Equals(pass)).FirstOrDefault();
            if (resultUser != null)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        
    }
    
}