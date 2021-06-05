using CalC.DataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CalC.Business
{
    public class DinnerTable
    {

        public int id { get; set; }
        public int user_id { get; set; }
        public int food_id { get; set; }
        public string serving { get; set; }
        public string date { get; set; }

        public static void DinnertEkle(CalC.DataAccess.dinner food)
        {
            CalC.DataAccess.Entities ent = new DataAccess.Entities();
            ent.dinner.Add(food);
            ent.SaveChanges();
        }
        public List<CalC.DataAccess.dinner> GetDinner()
        {
            Entities db = new Entities();
            var list = db.dinner.ToList();
            return list;
        }
    }
}
