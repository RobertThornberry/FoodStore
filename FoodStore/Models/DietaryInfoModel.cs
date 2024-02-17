using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace FoodStore.Models
{
    public class DietaryInfoModel
    {
            [Key]
            public int ID { get; set; }

            [Required]
            [Column("Vegetable")]
            [StringLength(100)]
            public string vegetable { get; set; }

            [Required]
            [Column("Energy per 100g")]
            [StringLength(100)]
            public string Energy { get; set; }

            [Required]
            [Column("Fat per 100g")]
            [StringLength(100)]
            public string Fat { get; set; }

            [Required]
            [Column("Saturates per 100g")]
            [StringLength(100)]
            public string Saturates { get; set; }

            [Required]
            [Column("Carbohydrates per 100g")]
            [StringLength(100)]
            public string Carbohydrates { get; set; }

            [Required]
            [Column("Sugars per 100g")]
            [StringLength(100)]
            public string Sugars { get; set; }

            [Required]
            [Column("Fibre per 100g")]
            [StringLength(100)]
            public string Fibre { get; set; }

            [Required]
            [Column("Protein per 100g")]
            [StringLength(100)]
            public string Protein { get; set; }

            [Required]
            [Column("Salt per 100g")]
            [StringLength(100)]
            public string Salt { get; set; }

            [Required]
            [StringLength(100)]
            public string Size { get; set; }

    }
}