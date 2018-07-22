using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(DoktorPrj.Startup))]
namespace DoktorPrj
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
        }
    }
}
