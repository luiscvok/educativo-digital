using System;
using System.Web.UI;
using System.Web.UI.WebControls; // Added for Label control

namespace ProyectoProgramacionS
{
    public partial class Home : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Usuario"] != null)
                {
                    // Set the welcome message in the Label
                    lblWelcomeMessage.Text = $"¡Bienvenido/a, {Session["Usuario"]}! Explora nuestras actividades.";


                }
            }
        }
    }
}