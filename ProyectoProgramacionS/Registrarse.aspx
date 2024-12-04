<%@ Page Title="" Language="C#" MasterPageFile="~/Global.Master" AutoEventWireup="true" CodeBehind="Registrarse.aspx.cs" Inherits="ProyectoProgramacionS.Registro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
            <td colspan="2">
                <asp:Label ID="LabelMensaje" runat="server" Text=""></asp:Label></td>
        <tr>
            <td>Nombre</td>
            <td><asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                    ErrorMessage="Debe Ingresar Un Nombre" ControlToValidate="txtNombre"
                    CssClass="val"></asp:RequiredFieldValidator>

            </td>
                         
            
        </tr>
        <tr>
            <td>Email</td>
            <td>
                <asp:TextBox ID="TextBoxEmail" runat="server" ></asp:TextBox>
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
 ControlToValidate="TextBoxEmail" CssClass="val" runat="server" ErrorMessage="Formato de Correo Erroneo" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
               
        </tr>
        <tr>
            <td>
                User
            </td>
            <td>
                <asp:TextBox ID="TextBoxUser" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                    ErrorMessage="Debe Ingresar Un Usuario" ControlToValidate="TextBoxUser"
                    CssClass="val"></asp:RequiredFieldValidator>
            </td>

        </tr>
        <tr>
            <td>Clave</td>
            <td>
                <asp:TextBox ID="TextBoxClave" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                    ErrorMessage="Debe Ingresar una Clave" ControlToValidate="TextBoxClave"
                    CssClass="val"></asp:RequiredFieldValidator>
                

            </td>
        </tr>
        <tr>
         <td>RUT (12345678-5) sin Puntos y con guión</td>
          <td>
        <asp:TextBox ID="TextBoxRut" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
            ErrorMessage="Debe ingresar un RUT" ControlToValidate="TextBoxRut"
            CssClass="val"></asp:RequiredFieldValidator>
        </td>
        </tr>



        <tr>
            <td> Rol</td>
            
            <td>
                <asp:DropDownList ID="DropDownListRol" runat="server"></asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4"
                    runat="server" ErrorMessage="Debe Seleccionar Un Rol"
                    ControlToValidate="DropDownListRol" InitialValue="-1" >

                </asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2"> <asp:Button ID="BtnVerificar" runat="server" Text="Ingresar" OnClick="BtnVerificar_Click" /></td>
        </tr>
    </table>
</asp:Content>
