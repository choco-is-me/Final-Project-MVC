using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(AgentSideMVC.Startup))]
namespace AgentSideMVC
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
