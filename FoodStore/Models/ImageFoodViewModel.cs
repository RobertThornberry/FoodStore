using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FoodStore.Models
{
    public class ImageFoodViewModel
    {
        public int ID { get; set; }
        public string vegetable { get; set; }
        public byte[] ImageSource { get; set; }
        public string Category { get; set; }
        public string Price { get; set; }
    }
}