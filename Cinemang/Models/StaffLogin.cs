using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Cinemang.Models
{
    public class StaffLogin
    {
        private Models.CinemangData db;
        public StaffLogin() 
        {
            db = new Models.CinemangData();

        }
        public bool isLoginSuccess(string user ,string pass)
        {
            Staff resultStaff = db.Staff.Where(x => x.sUsername.Equals(user) && x.sPassword.Equals(pass)).FirstOrDefault();
            if (resultStaff!=null)
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