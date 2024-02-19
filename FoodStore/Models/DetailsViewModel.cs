using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FoodStore.Models
{
    public class DetailsViewModel
    {
        // Properties from ImageDataTable
        public int ID { get; set; }
        public string Vegetable { get; set; }
        public byte[] ImageSource { get; set; }

        // Properties from DietaryInfoTable
        public string Energy { get; set; }
        public string Fat { get; set; }
        public string Saturates { get; set; }
        public string Carbohydrates { get; set; }
        public string Sugars { get; set; }
        public string Fibre { get; set; }
        public string Protein { get; set; }
        public string Salt { get; set; }
        public string Size { get; set; }

        // Properties from FoodDataTable
        public string ServingSize { get; set; }
        public string CountryOfOrigin { get; set; }
        public string Storage { get; set; }
        public string Packaging { get; set; }
        public int Stock { get; set; }
        public string Category { get; set; }
        public string Price { get; set; }
    }
}
