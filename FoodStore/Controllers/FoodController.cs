using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FoodStore.Models;

namespace FoodStore.Controllers
{
    public class FoodController : Controller
    {
        private YourDbContext db = new YourDbContext();

        public ActionResult Index()
        {
            var imagesWithStockAndPrice = (from i in db.ImageDataTable
                                           join f in db.FoodDataTable
                                           on i.vegetable.ToLower() equals f.vegetable.ToLower()
                                           select new ImageFoodViewModel
                                           {
                                               ID = i.ID,
                                               vegetable = i.vegetable,
                                               ImageSource = i.ImageSource,
                                               Category = i.Category,
                                               Price = i.Price
                                           }).ToList();

            return View(imagesWithStockAndPrice);
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}