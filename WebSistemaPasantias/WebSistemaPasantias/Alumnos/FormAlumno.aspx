<%@ Page Title="" Language="C#" MasterPageFile="~/PaginasMaestras/Forms.master" AutoEventWireup="true" CodeFile="FormAlumno.aspx.cs" Inherits="Alumnos_FormAlumno" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MenuContextual" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContenidoPrincipal" Runat="Server">
      
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>


  


&nbsp;<br />
&nbsp;&nbsp;
    <br />
    <br />
    <table align="center" 
        style="width: 100%; position: relative; z-index: inherit;">
        <tr>
            <td style="width: 323px">
                <asp:Label ID="Label1" runat="server" Text="CI"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <br />
            </td>
            <td>
                2do APELLIDO
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td style="width: 323px">
                <asp:Label ID="Label2" runat="server" Text="CARRERA"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <br />
            </td>
            <td>
                <asp:Label ID="Label3" runat="server" Text="TELEFONO"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td style="width: 323px">
                1er NOMBRE&nbsp;
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <br />
            </td>
            <td>
                <asp:Label ID="Label4" runat="server" Text="EMAIL"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td style="width: 323px">
                2do NOMBRE
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <br />
            </td>
            <td>
                <asp:Label ID="Label5" runat="server" Text="CELULAR"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td style="width: 323px">
                1er APELLIDO
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                <br />
            </td>
            <td>
                <asp:Label ID="Label6" runat="server" Text="CREDITOS APROBADOS"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td style="width: 323px">
                <asp:Label ID="Label7" runat="server" Text="GENERO"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                <br />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <br />
    <br />
    <br />
    <br />
    <br />
&nbsp;</asp:Content>

