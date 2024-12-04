using System.Web;
using System.Web.Optimization;

namespace ProyectoProgramacionS
{
    public class BundleConfig
    {
        // For more information on bundling, visit https://go.microsoft.com/fwlink/?LinkId=301862
        public static void RegisterBundles(BundleCollection bundles)
        {
            // Bundle para jQuery
            bundles.Add(new ScriptBundle("~/bundles/jquery").Include(
                        "~/Scripts/jquery-3.7.1.min.js"));

            // Si no tienes jquery.validate.js, elimina este bloque o descárgalo y colócalo en Scripts
            // bundles.Add(new ScriptBundle("~/bundles/jqueryval").Include(
            //             "~/Scripts/jquery.validate*"));

            // Si no tienes Modernizr, elimina este bloque o descárgalo
            // bundles.Add(new ScriptBundle("~/bundles/modernizr").Include(
            //             "~/Scripts/modernizr-*"));

            // Si no tienes Bootstrap, elimina este bloque o descárgalo
            // bundles.Add(new ScriptBundle("~/bundles/bootstrap").Include(
            //           "~/Scripts/bootstrap.js"));

            // Si no tienes CSS específicos, elimina este bloque o crea los archivos en Content
            bundles.Add(new StyleBundle("~/Content/css").Include(
                      "~/Content/site.css")); // Asegúrate de tener este archivo o ajusta la ruta.
        }
    }
}
