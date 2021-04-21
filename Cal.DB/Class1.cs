using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using MongoDB.Bson;
using MongoDB.Driver;

namespace Cal.DB
{
    public class Class1
    {

        public void main(string[] args)
        {
            MongoClient dbClient = new MongoClient("mongodb+srv://deneme:<password>@cluster0.yepu6.mongodb.net/myFirstDatabase?retryWrites=true&w=majority");

            var db = dbClient.GetDatabase("TodoApp");
            var collection = db.GetCollection<MongoExapmle>("User");

            MongoExapmle MongoExapmle = new MongoExapmle();

            MongoExapmle.Create(collection);

        }
    }
    public class MongoExapmle
    {
        public string Process { get; set; }
        public DateTime CreateDate { get; set; }
        public void Create(IMongoCollection<MongoExapmle> mongoCollection)
        {
            MongoExapmle MongoExapmle = new MongoExapmle();

            MongoExapmle.CreateDate = DateTime.Now;
            MongoExapmle.Process = "Create";

            mongoCollection.InsertOne(MongoExapmle);
        }
    }
}
