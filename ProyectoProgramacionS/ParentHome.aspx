<%@ Page Title="" Language="C#" MasterPageFile="~/Global.Master" AutoEventWireup="true" CodeBehind="ParentHome.aspx.cs" Inherits="ProyectoProgramacionS.ParentHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="parent-home-container">  <%-- Main container for the parent home page --%>

        <h2>Bienvenido/a, Apoderado/a!</h2>  <%-- Main heading --%>


        <p>
            Esta es la página de inicio para apoderados. Aquí encontrará información y recursos para apoyar el aprendizaje de inglés de su hijo/a.
        </p>


        <div class="sections-container"> <%-- Container for the sections below --%>



            <div class="section">
                <h3>Recursos</h3>
                <ul>

                    <li><a href="#">Enlace a Recurso 1</a></li>

                    <li><a href="#">Enlace a Recurso 2</a></li>
                    <li><a href="#">Enlace a Recurso 3</a></li>


                </ul>
            </div>

            <div class="section">
                <h3>Actividades de su hijo/a</h3>

                <%--  Placeholders for student activity information (to be implemented by your team) --%>



                <p>Nombre del estudiante: [Nombre del Estudiante]</p>

                <p>Puntaje actual: [Puntaje Actual]</p>

                <p>Actividades recientes: [Actividades Recientes]</p>


            </div>


            <div class="section">
                <h3>Comunicaciones</h3>


                <%--  Placeholder for communication updates (to be implemented by your team) --%>

                <p>Próximos eventos: [Próximos eventos]</p>

                <p>Anuncios importantes: [Anuncios importantes]</p>
            </div>

        </div>


    </div>



    <style>
        /* Styles for ParentHome.aspx */

        .parent-home-container {
             max-width: 960px;
             margin: 80px auto;  /* Top margin to account for sticky menu, adjust as needed */
             padding: 20px;
        }

        .sections-container {
             display: flex;
             flex-wrap: wrap;  /* Allow sections to wrap on smaller screens */
             justify-content: space-around;
        }

        .section {
             width: 30%;  /* Adjust width as needed */
             margin-bottom: 20px;
             padding: 20px;
             border: 1px solid var(--secondary); /* Use a color from your Global.Master */
             border-radius: 8px;
             box-sizing: border-box;  /* Include padding and border in element's total width and height */
        }

       
    </style>


</asp:Content>