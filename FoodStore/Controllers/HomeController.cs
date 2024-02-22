using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FoodStore.Models;

namespace FoodStore.Controllers
{
    public class HomeController : Controller
    {
        private YourDbContext db = new YourDbContext();

        // Gets all of the images and displays them in a list on the website
        public ActionResult Index()
        {
            var images = db.ImageDataTable.ToList(); 
            return View(images);
        }

        // All the data fields that will be shown on the Details page
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

        // Controller for the about page
        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        // Controller for the contact page
        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }

        // Converts image data into actual image. Has a premade error message if no image can be found.
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

        // I ouldn't manage to merge the two creation methods to allow for a user to add data to multiple tables at once by the deadline so they have to be kept as seperate views for the moment.
        // Also, couldn't get individual accounts working in time so currently any person can theoretically change the data of the website. This would obviously need to be fixed if it was releasing to the public.
        
        // Basic controller for declaring the CreateFood.cshtml view
        public ActionResult CreateFood()
        {
            return View();
        }

        // Allows the user to add data to the foodmodel before automatically returning to the main products page
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult CreateFood(FoodModel foodModel)
        {
            if (ModelState.IsValid)
            {
                db.FoodDataTable.Add(foodModel);
                db.SaveChanges();

                return RedirectToAction("Index", "Home");
            }

            return View(foodModel);
        }

        // Basic controller for declaring the CreateFood.cshtml view
        public ActionResult CreateImage()
        {
            return View();
        }

        // Allows the user to add data to the foodmodel before automatically returning to the main products page
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult CreateImage(ImageModel imageModel)
        {
            if (ModelState.IsValid)
            {
                db.ImageDataTable.Add(imageModel);
                db.SaveChanges();

                return RedirectToAction("Index", "Home");
            }

            return View(imageModel);
        }

        // Finds the record selected, double checks that the record still exists in the database, deletes the record, then takes the user back to the main page. 
        // This also has an error message in case a user attempts to delete a record that can't be found.
        public ActionResult Delete(int id)
        {
            var recordToDelete = db.ImageDataTable.Find(id);

            if (recordToDelete == null)
            {
                return HttpNotFound(); 
            }

            db.ImageDataTable.Remove(recordToDelete);
            db.SaveChanges();

            return RedirectToAction("Index");
        }

        // This is section one of a two section process. This section finds the record selected, double checks that the record still exists in the database and passes the record on to the second section so it can be edited.
        public ActionResult Edit(int id)
        {
            var recordToEdit = db.ImageDataTable.Find(id);

            if (recordToEdit == null)
            {
                return HttpNotFound(); // error message if record isn't found
            }

            return View(recordToEdit);
        }

        // This is section two of the edit process. This checks that all the changes made align with the code of the model that is being changed. So, for example, is the data type consistent and are all restrictions being followed. It then updates the record and takes the user back to the main page.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(ImageModel editedRecord)
        {
            if (ModelState.IsValid)
            {
                db.Entry(editedRecord).State = EntityState.Modified;
                db.SaveChanges();

                return RedirectToAction("Index");
            }

            // If any errors appear, the user is kept on the edit page and told what the errors are
            return View(editedRecord);
        }
    }
}