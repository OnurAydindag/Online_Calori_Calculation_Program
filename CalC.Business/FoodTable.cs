using CalC.DataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CalC.Business
{
    public class FoodTable
    {
        public int id { get; set; }
        public string name { get; set; }
        public Nullable<int> calori { get; set; }

        public List<CalC.DataAccess.foods> GetFood()
        {
            Entities db = new Entities();
            var list = db.foods.ToList();
            return list;
        }
    }
}
