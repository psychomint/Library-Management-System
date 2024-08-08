using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(LoginPage.Startup))]
namespace LoginPage
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
