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
                return File(image.ImageSource, "image/jpeg"); // Adjust the content type as per your image type
            }
            else
            {
                return HttpNotFound();
            }
        }
    }
}