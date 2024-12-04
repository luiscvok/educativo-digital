<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="actividades.aspx.cs" Inherits="ProyectoProgramacionS.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
      <style>
        .espaciado {
            margin: 50px; /* Espaciado externo entre botones */
            margin-top: 20px;
            margin-bottom: 20px;
            margin-left: 10px;
            margin-right: 10px;
        }
        .titulo {
            font-family: 'Courier New', monospace;
            color: darkblue;
            font-size: 24px;
            font-weight: bold;
        }
        .decorativo {
            font-family: 'Pacifico', cursive;
            color: aquamarine;
            font-size: 30px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" 
        Text="En la siguiente actividad se solicita a los alumnos que presten atención a las siguientes imágenes, pronuncien su nombre y vocal inicial, luego escuchar atentamente su pronunciación en inglés." 
        CssClass="titulo decorativo">
    </asp:Label>

    <table>
        <tr>
            <td colspan="2">
                <asp:ImageButton ID="BtnA" runat="server" ImageUrl="~/manzana.jpg" Height="150px" Width="150px" CssClass="espaciado" OnClick="BtnA_Click" />
                <audio src="aple.m4a" controls="controls"></audio>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:ImageButton ID="BtnE" runat="server" ImageUrl="elefantebon.jpg" Height="150px" Width="150px" CssClass="espaciado" OnClick="BtnE_Click" />
                <audio src="elefant.m4a" controls="controls"></audio>
            </td>
        </tr>
        <tr>
            <td>
                <asp:ImageButton ID="BtnI" runat="server" ImageUrl="iglu..jpg" Height="150px" Width="150px" CssClass="espaciado" OnClick="BtnI_Click" />
                <audio src="iglu'.m4a" controls="controls"></audio>
            </td>
        </tr>
        <tr>
            <td>
                <asp:ImageButton ID="BtnO" runat="server" ImageUrl="o.png" Height="150px" Width="150px" CssClass="espaciado" OnClick="BtnO_Click" />
                <audio src="owl.m4a" controls="controls"></audio>
            </td>
        </tr>
        <tr>
            <td>
                <asp:ImageButton ID="BtnU" runat="server" ImageUrl="~/thumbnail_UMBRELLA.jpg" Height="150px" Width="150px" CssClass="espaciado" OnClick="BtnU_Click" />
                <audio src="umbrella.m4a" controls="controls"></audio>
            </td>
        </tr>
    </table>

    <asp:Button ID="BtnFinalizar" runat="server" Text="Finalizar Actividad" Height="50" Width="150" OnClick="BtnFinalizar_Click" />
    <asp:Label ID="LblResultado" runat="server" Text="Total"></asp:Label>
</asp:Content>