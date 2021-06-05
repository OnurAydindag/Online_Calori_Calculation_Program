using CalC.DataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CalC.Business
{
    public class UserTable
    {

        public int id { get; set; }
        public int user_weight { get; set; }
        public int user_height { get; set; }
        public string user_mail { get; set; }
        public string user_password { get; set; }

        public List<CalC.DataAccess.user> GetUsers()
        {
            Entities db = new Entities();
            var list = db.user.ToList();
            return list;
        }

        public bool LoginKontrol(string email)
        {
            Entities ent = new Entities();
            var user = ent.user.Where(a => a.user_mail == email).FirstOrDefault();
            if (user != null)
            {
                return true;
            }
            else
            {
                return false;
            }

        }
        public bool PasswordKontrol(string sifre)
        {
            Entities ent = new Entities();
            var pass = ent.user.Where(a => a.user_password == sifre).FirstOrDefault();
            if (pass != null)
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
