<%@ Page Title="" Language="C#" MasterPageFile="~/Global.Master" AutoEventWireup="true" CodeBehind="Loguearse.aspx.cs" Inherits="ProyectoProgramacionS.Loguearse" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="login-container">
        <asp:Image ID="imgLogo" runat="server" ImageUrl="~/undraw_secure_login_pdn4.svg" CssClass="logo-login" />
        <div>
           <asp:Label ID="lblMensaje" runat="server"></asp:Label>

        </div>
        <table>
            <tr>
                <td>Usuario:</td>
                <td>
                    <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="req_usuario" runat="server" ErrorMessage="*" ControlToValidate="txtUsuario" CssClass="val"></asp:RequiredFieldValidator>   
                </td>
            </tr>
            <tr>
                <td>Clave:</td>
                <td>
                    <asp:TextBox ID="txtClave" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="req_clave" runat="server" ErrorMessage="*" ControlToValidate="txtClave" CssClass="val"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="btnIngresar" runat="server" Text="Ingresar" OnClick="btnIngresar_Click" CssClass="btn-primary" /> 
                </td>
            </tr>
        </table>

    </div>
    <style>
      /* Estilos específicos para la página de Login, ajustados para el Master Page */
        .login-container {
            background-color: var(--white);
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            text-align: center;
            margin: 100px auto; /* Centrar en la página con margen superior */
            max-width: 400px; /* Ancho máximo */
        }

        .logo-login {
            width: 150px;
            height: auto;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            margin-top: 20px;
        }

        td {
            padding: 10px;
            text-align: left;
        }

        .val {
            color: red;
            font-size: 14px;
            display: block;
            margin-top: 5px;
        }

        .btn-primary {
            background-color: var(--secondary);
            color: var(--white);
            border: none;
            padding: 15px 25px;
            font-size: 18px;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        .btn-primary:hover{
            background-color: var(--primary);
        }
    </style>
    
</asp:Content>
