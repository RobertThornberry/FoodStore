using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace FoodStore.Models
{
    public class YourDbContext : DbContext
    {
        public DbSet<FoodModel> FoodDataTable { get; set; }
        public DbSet<ImageModel> ImageDataTable { get; set; }
        public DbSet<DietaryInfoModel> DietaryInfoTable { get; set; }
        public YourDbContext() : base("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=FoodDatabase;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False")
        {
        }
    }
}