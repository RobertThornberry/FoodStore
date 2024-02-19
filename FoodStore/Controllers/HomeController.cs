using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FoodStore.Models;

namespace FoodStore.Controllers
{
    public class HomeController : Controller
    {
        private YourDbContext db = new YourDbContext();

        public ActionResult Index()
        {
            var images = db.ImageDataTable.ToList(); // Retrieve a list of Image objects from the database
            return View(images);
        }

        public ActionResult Details(int id)
        {
            var selectedItem = (from i in db.ImageDataTable
                                join d in db.DietaryInfoTable on i.vegetable equals d.vegetable
                                join f in db.FoodDataTable on i.vegetable equals f.vegetable
                                where i.ID == id
                                select new DetailsViewModel
                                {
                                    ID = i.ID,
                                    Vegetable = i.vegetable,
                                    ImageSource = i.ImageSource,
                                    Energy = d.Energy,
                                    Fat = d.Fat,
                                    Saturates = d.Saturates,
                                    Carbohydrates = d.Carbohydrates,
                                    Sugars = d.Sugars,
                                    Fibre = d.Fibre,
                                    Protein = d.Protein,
                                    Salt = d.Salt,
                                    Size = d.Size,
                                    ServingSize = f.ServingSize,
                                    CountryOfOrigin = f.CountryOfOrigin,
                                    Storage = f.Storage,
                                    Packaging = f.Packaging,
                                    Stock = f.Stock,
                                    Category = f.Category,
                                    Price = f.Price
                                }).FirstOrDefault();

            if (selectedItem == null)
            {
                return HttpNotFound();
            }

            return View(selectedItem);
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
        public ActionResult GetImage(int id)
        {
            var image = db.ImageDataTable.FirstOrDefault(i => i.ID == id);
            if (image != null)
            {
                return File(image.ImageSource, "image/jpeg"); 
            }
            else
            {
                return HttpNotFound();
            }
        }
    }
}