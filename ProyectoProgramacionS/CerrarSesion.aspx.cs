using System;
using System.Web;
using System.Web.Security; 

namespace ProyectoProgramacionS
{
    public partial class CerrarSesion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // limpia la sesion 
            Session.Clear();
            Session.Abandon();

            
            FormsAuthentication.SignOut();


            // envia de vuelta a  Home.aspx
            Response.Redirect("~/Home.aspx"); 


        }
    }
}