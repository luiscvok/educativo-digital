using System.Web.Mvc;

namespace ProyectoProgramacionS.Areas.AyudaTech
{
    public class AyudaTechAreaRegistration : AreaRegistration 
    {
        public override string AreaName 
        {
            get 
            {
                return "AyudaTech";
            }
        }

        public override void RegisterArea(AreaRegistrationContext context) 
        {
            context.MapRoute(
                "AyudaTech_default",
                "AyudaTech/{controller}/{action}/{id}",
                new { action = "Index", id = UrlParameter.Optional }
            );
        }
    }
}