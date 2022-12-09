using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;

namespace AgentSideMVC.Controllers
{
    public class CheckoutController : BaseController
    {
        // Constructor
        public CheckoutController() { }

        // GET: Checkout
        public ActionResult Index()
        {
            ViewBag.Cart = _ctx.ShoppingCartDatas.ToList<ShoppingCartData>();
            return View();
        }

        public JsonResult QuanityChange(int type, int pId)
        {
            ElectricsOnlineEntities context = new ElectricsOnlineEntities();

            ShoppingCartData product = context.ShoppingCartDatas.FirstOrDefault(p => p.PID == pId);
            if (product == null)
            {
                return Json(new { d = "0" });
            }

            Product actualProduct = context.Products.FirstOrDefault(p => p.PID == pId);
            int quantity;
            // if type 0, decrease quantity
            // if type 1, increase quanity
            switch (type)
            {
                case 0:
                    product.Quantity--;
                    actualProduct.UnitsInStock++;
                    break;
                case 1:
                    product.Quantity++;
                    actualProduct.UnitsInStock--;
                    break;
                case -1:
                    actualProduct.UnitsInStock += product.Quantity;
                    product.Quantity = 0;
                    break;
                default:
                    return Json(new { d = "0" });
            }

            if (product.Quantity == 0)
            {
                context.ShoppingCartDatas.Remove(product);
                quantity = 0;
            }
            else
            {
                quantity = product.Quantity;
            }

            context.SaveChanges();
            return Json(new { d = quantity });
        }

        [HttpGet]
        public JsonResult UpdateTotal()
        {
            ElectricsOnlineEntities context = new ElectricsOnlineEntities();
            decimal total;
            try
            {

                total = context.ShoppingCartDatas.Select(p => p.UnitPrice * p.Quantity).Sum();
            }
            catch (Exception) { total = 0; }

            return Json(new { d = String.Format("{0:c}", total) }, JsonRequestBehavior.AllowGet);
        }

        public ActionResult Clear()
        {
            try
            {
                List<ShoppingCartData> carts = _ctx.ShoppingCartDatas.ToList();
                carts.ForEach(a =>
                {
                    Product product = _ctx.Products.FirstOrDefault(p => p.PID == a.PID);
                    product.UnitsInStock += a.Quantity;
                });
                _ctx.ShoppingCartDatas.RemoveRange(carts);
                _ctx.SaveChanges();
            }
            catch (Exception) { }
            return RedirectToAction("Index", "Home", null);
        }
        public ActionResult Purchase()
        {
            return RedirectToAction("PurchasedSuccess");

        }

        public ActionResult PurchasedSuccess()
        {
            return View();
        }
    }
}
