<%@ Page Title="" Language="C#" MasterPageFile="~/PaginasMaestras/Forms.master" AutoEventWireup="true" CodeFile="Alumno.aspx.cs" Inherits="Alumnos_Alumno" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MenuContextual" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContenidoPrincipal" Runat="Server">
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
   
   
    <div class="form-group" runat="server">
    <br />
        <label class="control-label col-xs-3">CI:</label>
        <div class="col-xs-5">
          <%--  <input type="text" class="form-control" id="inputEmail" placeholder="CEDULA IDENTIDAD">--%>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="CEDULA IDENTIDAD"></asp:TextBox>
        </div>
        
    </div>

<br />

<div class="form-group">
        <label class="control-label col-xs-3">CARRERA:</label>
        <div class="col-xs-5">
           <%-- <input type="text" class="form-control" id="inputPassword" placeholder="Password">--%>
            <asp:DropDownList ID="DropDownList1" runat="server"  CssClass="form-control">
            </asp:DropDownList>
        </div>
        <br />
        
    </div>
    

    <div class="form-group">
        <label class="control-label col-xs-3">1er NOMBRE:</label>
        <div class="col-xs-5">
            <%--<input type="password" class="form-control" placeholder="Confirmar Password">--%>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="PRIMER NOMBRE"></asp:TextBox>
        </div>
        <br />
    </div>

    
    <div class="form-group">
        <label class="control-label col-xs-3">2do NOMBRE:</label>
        <div class="col-xs-5">
            <%--<input type="password" class="form-control" placeholder="Confirmar Password">--%>
            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" placeholder="SEGUNDO NOMBRE"></asp:TextBox>
        </div>
        <br />
    </div>

    
    <div class="form-group">
        <label class="control-label col-xs-3">1er APELLIDO:</label>
        <div class="col-xs-5">
            <%--<input type="password" class="form-control" placeholder="Confirmar Password">--%>
            <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" placeholder="PRIMER APELLIDO"></asp:TextBox>
        </div>
        <br />
    </div>

    <div class="form-group">
        <label class="control-label col-xs-3">2do APELLIDO:</label>
        <div class="col-xs-5">
            <%--<input type="password" class="form-control" placeholder="Confirmar Password">--%>
            <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" placeholder="SEGUNDO APELLIDO"></asp:TextBox>
        </div>
        <br />
    </div>


    <div class="form-group">
        <label class="control-label col-xs-3">TELEFONO:</label>
        <div class="col-xs-5">
            <%--<input type="password" class="form-control" placeholder="Confirmar Password">--%>
            <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" placeholder="TELEFONO"></asp:TextBox>
        </div>
        <br />
    </div>


    <div class="form-group">
        <label class="control-label col-xs-3">EMAIL:</label>
        <div class="col-xs-5">
            <%--<input type="password" class="form-control" placeholder="Confirmar Password">--%>
            <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control" placeholder="EMAIL"></asp:TextBox>
        </div>
        <br />
        </div>


         <div class="form-group">
        <label class="control-label col-xs-3">CELULAR:</label>
        <div class="col-xs-5">
            <%--<input type="password" class="form-control" placeholder="Confirmar Password">--%>
            <asp:TextBox ID="TextBox9" runat="server" CssClass="form-control" placeholder="CELULAR"></asp:TextBox>
        </div>
        <br />
        </div>



        <label class="control-label col-xs-3"> CREDITOS APROBADOS:</label>
        <div class="col-xs-5">
            <%--<input type="password" class="form-control" placeholder="Confirmar Password">--%>
            <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control">
            </asp:DropDownList>
        </div>
        <br />
    </div>


    <div class="form-group">
        <label class="control-label col-xs-3">CELULAR:</label>
        <div class="col-xs-5">
            <%--<input type="password" class="form-control" placeholder="Confirmar Password">--%>
            <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control" placeholder="CELULAR"></asp:TextBox>
        </div>
        <br />
        </div>


    <div class="form-group">
        <div class="col-xs-offset-3 col-xs-9">
            <input type="submit" class="btn btn-primary" value="Enviar">
            <input type="reset" class="btn btn-default" value="Limpiar">
        </div>
    </div>

    
</asp:Content>

