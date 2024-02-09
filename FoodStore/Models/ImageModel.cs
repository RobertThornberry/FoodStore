using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace FoodStore.Models
{
    [Table("ImageDataTable")]
    public class ImageModel
    {
        [Key]
        public int ID { get; set; }

        [Required]
        [StringLength(100)]
        public string vegetable { get; set; }


        [Required]
        [Column(TypeName = "varbinary(MAX)")]
        public byte[] ImageSource { get; set; }
    }

    public class YourDbContext : DbContext
    {
        public DbSet<ImageModel> ImageDataTable { get; set; } // DbSet for your Image model
        // Other DbSet properties for your other models, if any

        // Constructor to specify connection string
        public YourDbContext() : base("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=FoodDatabase;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False")
        {
        }
    }
}