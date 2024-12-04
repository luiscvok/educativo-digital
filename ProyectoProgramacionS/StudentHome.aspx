<%@ Page Title="" Language="C#" MasterPageFile="~/Global.Master" AutoEventWireup="true" CodeBehind="StudentHome.aspx.cs" Inherits="ProyectoProgramacionS.StudentHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="student-home-container">

        <h2>Bienvenido/a, <% if (Session["Usuario"] != null) { %><%= Session["Usuario"] %><% } %>!</h2> <%-- Personalized welcome message --%>

        <p>
            ¡Prepárate para aprender inglés de forma divertida! Explora las actividades y juegos que tenemos para ti.
        </p>



        <div class="sections-container">


            <div class="section">
                <h3>Actividades Disponibles</h3>

                <ul> <%-- Placeholder for activity links --%>
                    <li><a href="actividades.aspx">Actividad 1</a></li>
                    <li><a href="#">Actividad 2</a></li>
                    <li><a href="#">Actividad 3</a></li>


                    <%-- Your team will add more activity links here --%>
                </ul>
            </div>

            <div class="section">
                <h3>Mi Progreso</h3>

                <p>Puntaje actual:  <%-- Placeholder for current score --%> [Puntaje]</p>
                <p>Insignias obtenidas: <%-- Placeholder for earned badges --%> [Insignias] </p>

                <%--  Your team will add more progress details here (e.g., progress bar, charts) --%>



            </div>

            <div class="section">
                <h3>Recursos Adicionales</h3>
                 <ul> <%-- Placeholder for resource links --%>
                    <li><a href="https://wordwall.net/es-ar/community/english/activities" target="_blank"> WordWall </a></li>

                    <li><a href="https://learnenglishkids.britishcouncil.org/fun-games" target="_blank"> LearnEnglishKids </a></li>
                    <li><a href="https://www.funenglishgames.com/" target="_blank"> FunEnglishGames </a></li>

                    <%--  Your team will add more resource links here --%>

                </ul>

            </div>

        </div>


    </div>


    <style>
        /* Styles for StudentHome.aspx (can be very similar to ParentHome styles) */

        .student-home-container {
            max-width: 960px;
            margin: 80px auto; /* Adjust top margin for sticky menu as needed */
            padding: 20px;
        }

        /* ... (reuse or adapt styles from ParentHome.aspx) ... */

        /*  Add student-specific styles here if necessary */

    </style>
</asp:Content>