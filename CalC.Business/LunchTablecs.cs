using CalC.DataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CalC.Business
{
    public class LunchTablecs
    {

        public int id { get; set; }
        public int user_id { get; set; }
        public int food_id { get; set; }
        public string serving { get; set; }
        public System.DateTime date { get; set; }

        public static void LunchEkle(CalC.DataAccess.lunch food)
        {
            CalC.DataAccess.Entities ent = new DataAccess.Entities();
            ent.lunch.Add(food);
            ent.SaveChanges();
        }
        public List<CalC.DataAccess.lunch> Getlunch()
        {
            Entities db = new Entities();
            var list = db.lunch.ToList();
            return list;
        }
    }
}
