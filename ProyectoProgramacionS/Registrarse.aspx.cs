using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoProgramacionS
{
    public partial class Registro : System.Web.UI.Page
    {
        protected TextBox TextBoxRut; // Added declaration for TextBoxRut

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargaDrop();
            }
        }

        public void CargaDrop()
        {
            Usuario us = new Usuario();

            try
            {
                DropDownListRol.DataSource = us.ListaRol();
                DropDownListRol.DataValueField = "ID";
                DropDownListRol.DataTextField = "NOMBRE";
                DropDownListRol.DataBind();
                DropDownListRol.Items.Insert(0, new ListItem("Seleccionar", "-1"));
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        protected void BtnVerificar_Click(object sender, EventArgs e)
        {
            string nombre = txtNombre.Text;
            string email = TextBoxEmail.Text;
            string user = TextBoxUser.Text;
            string clave = TextBoxClave.Text;
            string rut = TextBoxRut.Text; // Captura el valor del campo de RUT
            int rolId = int.Parse(DropDownListRol.SelectedValue);

            try
            {
                // Validar el RUT usando la clase Rut
                if (!Rut.ValidaRut(rut))
                {
                    LabelMensaje.Text = "El RUT ingresado no es válido.";
                    return; // Detener el flujo si el RUT no es válido
                }
               
                Usuario usuario = new Usuario();
               
                usuario.GuardarUsuario(nombre, email, user, clave, rolId, rut); // Envía el RUT validado
                LabelMensaje.Text = "Usuario registrado con éxito.";
            }
            catch (Exception ex)
            {
                LabelMensaje.Text = $"Error al registrar usuario: {ex.Message}";
            }
        }
    }
}
