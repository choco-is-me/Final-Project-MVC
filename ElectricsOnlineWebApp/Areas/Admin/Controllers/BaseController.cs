using System.Web.Mvc;

namespace AgentSideMVC.Areas.Admin.Controllers
{
    [Authorize(Roles = "Admin")]
    public class BaseController : Controller
    {
        protected ElectricsOnlineEntities _ctx = new ElectricsOnlineEntities();
    }
}