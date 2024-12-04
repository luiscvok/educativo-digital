<%@ Page Title="" Language="C#" MasterPageFile="~/Global.Master" AutoEventWireup="true" CodeBehind="RegistroExitoso.aspx.cs" Inherits="ProyectoProgramacionS.RegistroExitoso" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registro Exitoso</title>
    <script type="text/javascript">
        // Redirige al usuario a la página de inicio de sesión después de 3 segundos
        setTimeout(function () {
            window.location.href = 'Loguearse.aspx'; // Corrige la URL
        }, 3000);
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align: center; margin-top: 100px;">
            <h1>¡Registro Exitoso!</h1>
            <p>Serás redirigido al login en unos segundos...</p>
        </div>
    </form>
</body>
</html>

