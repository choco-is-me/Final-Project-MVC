using System.Collections.Generic;

namespace AgentSideMVC
{
    public partial class Supplier
    {
        private ElectricsOnlineEntities _ctx = new ElectricsOnlineEntities();

        public IEnumerable<Supplier> All
        {
            get
            {
                return _ctx.Suppliers;
            }
        }
    }
}