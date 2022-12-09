using System.Collections.Generic;
using System.Linq;

namespace AgentSideMVC
{
    public partial class Product
    {
        private ElectricsOnlineEntities _ctx = new ElectricsOnlineEntities();
        public List<Product> All
        {
            get
            {
                return _ctx.Products.ToList<Product>();

            }
        }
    }
}