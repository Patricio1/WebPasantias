<%@ Page Title="" Language="C#" MasterPageFile="~/PaginasMaestras/Forms.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="PaginasMaestras_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MenuContextual" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContenidoPrincipal" Runat="Server">
    <p>
    <br />
</p>
<p>
    &nbsp;</p>
<p>
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px">
    </asp:DetailsView>
</p>
<p>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" />
</p>
<p>
</p>
</asp:Content>

