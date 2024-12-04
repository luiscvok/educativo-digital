<%@ Page Title="" Language="C#" MasterPageFile="~/Global.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ProyectoProgramacionS.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 <asp:Label ID="lblWelcomeMessage" runat="server"></asp:Label> 

    <div class="hero-section">
        <h1>Bienvenidos a Your English Friend</h1>
        <p>Un espacio educativo interactivo para niños y apoderados.</p>
        <img src="/imagenes/ninosaprendiendo.jpeg" alt="Imagen de niños aprendiendo inglés" /> 
    </div>

    <div class="features-section">
        <h2>¿Qué encontrarás aquí?</h2>
        <div class="feature">
            <h3>Actividades divertidas</h3>
            <p>Juegos, ejercicios y desafíos para aprender inglés de forma entretenida.</p>
        </div>
        <div class="feature">
            <h3>Gamificación</h3>
            <p>Sistema de puntos, insignias y recompensas para motivar el aprendizaje.</p>
        </div>
        <div class="feature">
            <h3>Recursos para apoderados</h3>
            <p>Información y herramientas para apoyar el aprendizaje de inglés en el hogar.</p>
        </div>
    </div>

    <div class="call-to-action">
        <% if (Session["Usuario"] == null) { %>
            <p>¡Regístrate ahora y comienza a aprender!</p>
            <a href="/Registrarse.aspx" class="button">Registrarse</a>
        <% } else { %>


           



            <a href="/Actividades.aspx" class="button">Ir a Actividades</a>
        <% } %>
    </div>


    <style>
        
        .hero-section {
            text-align: center;
            padding: 100px 20px;  /* Ajusta el padding superior si es necesario */
            background-color: var(--secondary); /* Usando la variable del Master Page */
            color: var(--white);
        }
        .hero-section img {
            max-width: 500px;
            height: auto;
            margin-top: 20px;
            border-radius: 8px; /* Bordes redondeados */
        }

        .features-section {
            padding: 50px 20px;
            text-align: center;
        }
        .feature {
            display: inline-block;  /* Para que las características estén una al lado de la otra */
            width: 30%; /* Ajusta el ancho según el número de características */
            margin: 20px;
            vertical-align: top; /* Alinea las características en la parte superior */
            box-sizing: border-box;  /* Incluye el padding y el border en el ancho */
        }

        .call-to-action {
            text-align: center;
            padding: 30px;
            background-color: var(--primary);
            color: var(--white);
        }

        .button {
            display: inline-block;
            padding: 15px 30px;
            background-color: var(--secondary);
            color: var(--white);
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }
        .button:hover{
            background-color: var(--primary);

        }
    </style>

</asp:Content>