using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FoodStore.Models
{
    public class FoodModel
    {
        public int ID { get; set; }

        public string Name { get; set; }

        public string Description { get; set; }

        public string Category { get; set; }

        public double Price { get; set; }

        public int Stock { get; set; }

        public FoodModel()
        {
            ID = -1;
            Name = "Nothing";
            Description = "Nothing yet";
            Category = "Nothing yet";
            Price = -1;
            Stock = -1;
        }

        public FoodModel(int iD, string name, string description, string category, double price, int stock)
        {
            ID = iD;
            Name = name;
            Description = description;
            Category = category;
            Price = price;
            Stock = stock;
        }
    }
}