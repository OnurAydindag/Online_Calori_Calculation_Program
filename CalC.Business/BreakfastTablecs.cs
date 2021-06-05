using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CalC.DataAccess;

namespace CalC.Business
{
    public class BreakfastTablecs
    {

        public int id { get; set; }
        public int user_id { get; set; }
        public int food_id { get; set; }
        public string serving { get; set; }
        public System.DateTime date { get; set; }

        public static void BreakfastEkle(CalC.DataAccess.breakfast food)
        {
            CalC.DataAccess.Entities ent = new DataAccess.Entities();
            ent.breakfast.Add(food);
            ent.SaveChanges();
        }
        public List<CalC.DataAccess.breakfast> GetBreakFast()
        {
            Entities db = new Entities();
            var list = db.breakfast.ToList();
            return list;
        }
    }
}
