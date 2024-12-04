using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Security.Cryptography;
using System.Text;
using System.Net.Mail;
using System.Net;
using System.Web;


namespace ProyectoProgramacionS
{
    public class Usuario
    {
        private string conexion = WebConfigurationManager.ConnectionStrings["LOCAL"].ConnectionString; // Private connection string


        public string ProbarConexion()
        {
            string mensaje = null;
            try
            {

                SqlConnection con = new SqlConnection(conexion);
                con.Open();//abrir conexion
                mensaje = "Conexion Exitosa";
                return mensaje;//retornamos el mensaje de conexion exitosa
            }
            catch (Exception)
            {

                throw;
            }
        }


        public DataTable Autentificar(string usuario, string clave)
        {

            DataTable dt = new DataTable();
            SqlDataReader dr = null;
            try
            {
                SqlConnection con = new SqlConnection(conexion);
                con.Open();

                SqlCommand cmd = new SqlCommand("autentificacion", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@user", SqlDbType.VarChar, 60);
                cmd.Parameters["@user"].Value = usuario;

                string hashedClave = HashPassword(clave); //hashea el password
                cmd.Parameters.Add("@pass", SqlDbType.VarChar, 255); // incrementa el tamaño de varchar para que quepa el hash
                cmd.Parameters["@pass"].Value = hashedClave;


                dr = cmd.ExecuteReader();
                dt.Load(dr);

                dr.Close();
                con.Close();

                return dt;
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }


        public DataTable ListaRol()
        {

            DataTable dt = new DataTable();
            SqlDataReader dr = null;
            try
            {
                #region Paso 1: Abrir
                SqlConnection con = new SqlConnection(conexion);
                con.Open();
                #endregion
                #region Paso 2: Llamar al procedimiento
                SqlCommand cmd = new SqlCommand("ListaRol", con);
                cmd.CommandType = CommandType.StoredProcedure;
                #endregion

                #region Paso 4: Ejecutar procedure
                dr = cmd.ExecuteReader(); //obtenemos registros desde la bd
                dt.Load(dr); //llenamos el datatable con lo que viene de la bd
                #endregion
                #region Paso 5: Cierre Conexion
                dr.Close();
                con.Close();
                #endregion


                return dt;
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        public void GuardarUsuario(string Nombre, string Email, string User, string Clave, int RolID, string Rut)
        {
            try
            {
                if (!ProyectoProgramacionS.Rut.ValidaRut(Rut))
                {
                    throw new ArgumentException("El RUT ingresado no es válido.");
                }
                string hashedClave = HashPassword(Clave);

                using (SqlConnection con = new SqlConnection(conexion)) // Use using for proper connection disposal
                {
                    con.Open();

                    using (SqlCommand cmd = new SqlCommand("GuardaUsuario", con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;

                        cmd.Parameters.AddWithValue("@Nombre", Nombre); // Use AddWithValue for simplicity
                        cmd.Parameters.AddWithValue("@Email", Email);
                        cmd.Parameters.AddWithValue("@User", User);
                        cmd.Parameters.AddWithValue("@Clave", hashedClave);
                        cmd.Parameters.AddWithValue("@Rut", Rut); 
                        cmd.Parameters.AddWithValue("@RolID", RolID);
                        

                        cmd.ExecuteNonQuery();
                    }

                    // Enviar correo al usuario registrado
                    string mensaje = $"Hola {Nombre},\n\nTu registro fue exitoso. Gracias por unirte a nuestro sistema.";

                    EnvioCorreo(mensaje, Email);

                    HttpContext.Current.Response.Redirect("RegistroExitoso.aspx");
                }
            }
            catch (Exception ex)
            {
                // Log the exception or display an error message
                // ...  (Logging example: Log.Error("Error saving user", ex);)

                // Re-throw the exception after logging, if necessary
                throw new ApplicationException("Error al guardar el usuario. Por favor, inténtelo de nuevo más tarde.", ex);
            }
        }




        public void EnvioCorreo(string mensaje, string correoDestino)
        {
            string fromAddress = WebConfigurationManager.AppSettings["CorreoUsuario"]; // Obtiene el correo desde el archivo web.config
            string fromPassword = WebConfigurationManager.AppSettings["CorreoClave"]; // Obtiene la contraseña desde el archivo web.config

            MailAddress sender = new MailAddress(fromAddress, "Plataforma Ayuda-Tech");
            MailAddress receiver = new MailAddress(correoDestino, "To Name");
            string subject = "Registro Usuario";
            string body = mensaje;

            var smtp = new SmtpClient
            {
                Host = "smtp-mail.outlook.com",
                Port = 587,
                EnableSsl = true,
                DeliveryMethod = SmtpDeliveryMethod.Network,
                UseDefaultCredentials = false,
                Credentials = new NetworkCredential(sender.Address, fromPassword)
            };

            using (var mailMessage = new MailMessage(sender, receiver)
            {
                Subject = subject,
                Body = body
            })
            {
                smtp.Send(mailMessage);
            }
        }
        // METODO PARA HASHEAR LA CONTRASEÑA PARA CUANDO HAYA QUE REGISTRARSE O LOGUEARSE

        public  string HashPassword(string password)
        {
            using (SHA256 sha256 = SHA256.Create())
            {
                byte[] hashedBytes = sha256.ComputeHash(Encoding.UTF8.GetBytes(password));
                return BitConverter.ToString(hashedBytes).Replace("-", "").ToLower();
            }
        }


    }
}

