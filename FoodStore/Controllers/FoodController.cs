using System;
using FoodStore.Models;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace FoodStore.Controllers
{
    public class FoodController : Controller
    {
        // GET: Food
        public ActionResult Index()
        {
            List<FoodModel> food = new List<FoodModel>();

            food.Add(new FoodModel(0, "Carrot", "A Secret Gun", "Vegetable", 1.50, 7));

            food.Add(new FoodModel(1, "Broccoli", "A Secret Knife", "Vegetable", 2.50, 4));

            food.Add(new FoodModel(2, "Potato", "A Secret Rope", "Vegetable", 0.50, 10));

            food.Add(new FoodModel(3, "Parsnip", "A Secret Car", "Vegetable", 1.25, 13));



            return View("Index", food);
        }
    }
}