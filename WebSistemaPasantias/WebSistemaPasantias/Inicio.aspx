<%@ Page Title="" Language="VB" MasterPageFile="~/PaginasMaestras/Principal.master" AutoEventWireup="false" CodeFile="Inicio.aspx.vb" Inherits="Inicio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="Imagenes/firebird-logo-300.png" alt="Chania" width="460" height="345">
      </div>

      <div class="item">
        <img src="Imagenes/img_como_instalar_mysql_en_windows_23822_300_square.jpg" alt="Chania" width="460" height="345">
      </div>
    
      <div class="item">
        <img src="Imagenes/postgresql.png" alt="Flower" width="460" height="345">
      </div>

      <div class="item">
        <img src="Imagenes/y5hHl.jpg" alt="Flower" width="460" height="345">
      </div>

      <div class="item">
        <img src="Imagenes/y5hHl.png" alt="Flower" width="460" height="345">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
</asp:Content>
