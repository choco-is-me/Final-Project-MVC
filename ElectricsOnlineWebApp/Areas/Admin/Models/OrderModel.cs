using System.Linq;

namespace AgentSideMVC.Models
{
    public class OrderModel : AgentSideMVC.Order
    {

        public decimal TotalPayment
        {
            get
            {
                return this.Order_Products.Sum(p => p.TotalSale);
            }
        }
    }
}