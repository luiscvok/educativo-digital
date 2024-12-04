using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoProgramacionS
{
    public partial class Loguearse : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            Usuario usuario = new Usuario();

            try
            {
                
                DataTable dt = usuario.Autentificar(this.txtUsuario.Text, this.txtClave.Text);

                if (dt != null && dt.Rows.Count > 0) // Check for null and row count
                {
                    // Successful login
                    Session["Usuario"] = dt.Rows[0]["USU_NOMBRE"].ToString();
                    Session["RolID"] = dt.Rows[0]["USU_ROL_ID"].ToString();

                    // Redirect based on role
                    int rolId = Convert.ToInt32(Session["RolID"]); // Get the role ID

                    switch (rolId)
                    {
                        case 1:
                            Response.Redirect("AdimnHome.aspx");
                            break;
                        case 2:
                            Response.Redirect("StudentHome.aspx");
                            break;
                        case 3:
                            Response.Redirect("ParentHome.aspx");
                            break;
                        default:
                            lblMensaje.Text = "Rol no válido";
                            break;
                    }
                }
                else
                {
                    // Login failed
                    lblMensaje.Text = "Credenciales de inicio de sesión no válidas";
                }
            }
            catch (Exception ex)
            {
                // Handle or log the exception appropriately
                lblMensaje.Text = "Error al iniciar sesión: " + ex.Message; // User-friendly error message.
                // Log the actual exception details:  
                // Example (using a logging framework): Log.Error("Login error", ex);
            }
        }
    }
}