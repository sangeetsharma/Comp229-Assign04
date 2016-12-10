using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace Comp229_Assign04
{

    
    public class Global : HttpApplication
    {
        public static List<Model.Class1> dataModel;
        

        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);

            PrepareModelCollection();
        }

        private void PrepareModelCollection()
        {
            using (StreamReader sr = new StreamReader(Server.MapPath("~/Models/JSON/Assign04.json")))
            {
                dataModel = JsonConvert.DeserializeObject<List<Model.Class1>>(sr.ReadToEnd());
            }

        }
    }
}