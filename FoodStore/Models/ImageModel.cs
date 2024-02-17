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
        [Column("ID")]
        public int ID { get; set; }

        [Required]
        [StringLength(100)]
        public string vegetable { get; set; }

        [Required]
        [StringLength(100)]
        public string ImageLink { get; set; }

        [Required]
        [StringLength(100)]
        public string Category { get; set; }

        [Required]
        [StringLength(100)]
        public string Price { get; set; }

        [Required]
        [Column(TypeName = "varbinary(MAX)")]
        public byte[] ImageSource { get; set; }
    }
}