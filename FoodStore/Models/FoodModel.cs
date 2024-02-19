using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace FoodStore.Models
{
    [Table("FoodDataTable")]
    public class FoodModel
    {
        [Key]
        public int ID { get; set; }

        [Required]
        [Column("Vegetable")]
        [StringLength(100)]
        public string vegetable { get; set; }

        [Required]
        [Column("Serving size")]
        [StringLength(100)]
        public string ServingSize { get; set; }

        [Required]
        [Column("Country of origin")]
        [StringLength(100)]
        public string CountryOfOrigin { get; set; }

        [Required]
        [StringLength(100)]
        public string Storage { get; set; }

        [Required]
        [StringLength(100)]
        public string Packaging { get; set; }

        [Required]
        public int Stock { get; set; }

        [Required]
        [StringLength(100)]
        public string Category { get; set; }

        [Required]
        [StringLength(100)]
        public string Price { get; set; }
    }
}