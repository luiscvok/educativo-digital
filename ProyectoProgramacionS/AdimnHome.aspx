<%@ Page Title="" Language="C#" MasterPageFile="~/Global.Master" AutoEventWireup="true" CodeBehind="AdimnHome.aspx.cs" Inherits="ProyectoProgramacionS.AdimnHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="admin-home-container">

        <h2>Panel de Administración</h2>

        <p>Bienvenido/a, Administrador/a. Desde aquí puedes gestionar usuarios, actividades y otros aspectos del sistema.</p>

        <div class="admin-sections">


            <div class="admin-section">
                <h3>Gestión de Usuarios</h3>
                <ul>
                    <li><a href="GestionUsuarios.aspx">Ver y editar usuarios</a></li> <%-- Link to user management page --%>
                    <li><a href="CrearUsuario.aspx">Crear nuevo usuario</a></li> <%-- Link to create user page --%>

                    <%-- Add more user management links as needed --%>
                </ul>
            </div>

            <div class="admin-section">
                <h3>Gestión de Actividades</h3>
                <ul>
                    <li><a href="GestionActividades.aspx">Ver y editar actividades</a></li> <%-- Link to activity management page --%>
                    <li><a href="CrearActividad.aspx">Crear nueva actividad</a></li> <%-- Link to create activity page --%>
                    <%-- Add more activity management links as needed --%>
                </ul>
            </div>

           <%--  Add more sections for other admin tasks as required --%>
            <div class="admin-section">  <%-- Example: Reports section --%>
                <h3>Reportes</h3>
                <ul>
                    <li><a href="ReporteUsuarios.aspx">Reporte de Usuarios</a></li>
                    <li><a href="ReporteActividades.aspx">Reporte de Actividades</a></li>
                    <%-- Add more report links here --%>

                </ul>

            </div>




        </div>
    </div>

    <style>
        /* Styles for AdminHome.aspx */
        .admin-home-container {
            max-width: 960px;
            margin: 80px auto; /* Adjust for sticky menu */
            padding: 20px;
        }

        .admin-sections {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
        }

        .admin-section {
            width: 30%; /* Adjust width as needed */
            margin-bottom: 20px;
            padding: 20px;
            border: 1px solid var(--secondary); /* Use your global styles */
            border-radius: 8px;
            box-sizing: border-box;
        }

        /* ... add more admin-specific styles here ... */
    </style>
</asp:Content>