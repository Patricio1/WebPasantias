<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Alumnos_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>
</head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
   
      

<body>
<form runat="server">
    <div class="form-group">
    <br />
        <label class="control-label col-xs-3">CI:</label>
        <div class="col-xs-4">
            <input type="email" class="form-control" id="inputEmail" placeholder="Email">
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-xs-3">CARRERA:</label>
        <div class="col-xs-4">
          <%--  <input type="password" class="form-control" id="inputPassword" placeholder="Password">--%>
            <asp:DropDownList ID="DropDownList1" runat="server">
            </asp:DropDownList>
        </div>
    </div>


    <div class="form-group">
        <label class="control-label col-xs-3">1er NOMBRE:</label>
        <div class="col-xs-4">
            <input type="password" class="form-control" placeholder="Confirmar Password">
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-xs-3">2do NOMBRE:</label>
        <div class="col-xs-4">
            <input type="text" class="form-control" placeholder="Nombre">
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-xs-3">1er APELLIDO:</label>
        <div class="col-xs-4">
            <input type="text" class="form-control" placeholder="Apellido">
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-xs-3" >2do APELLIDO:</label>
        <div class="col-xs-4">
            <input type="tel" class="form-control" placeholder="Telefono">
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-xs-3">TELEFONO:</label>
        <div class="col-xs-4">
            <input type="text" class="form-control">
            </div>
        </div>

        <div class="form-group">
        <label class="control-label col-xs-3">EMAIL:</label>
        <div class="col-xs-4">
            <input type="text" class="form-control">
               </div>
        </div>


        <div class="form-group">
        <label class="control-label col-xs-3">CELULAR:</label>
        <div class="col-xs-4">
            <input type="text" class="form-control">
               </div>
        </div>


        <div class="form-group">
        <label class="control-label col-xs-3">CREDITOS APROBADOS:</label>
        <div class="col-xs-4">
            <input type="text" class="form-control">
            </div>
        </div>

        <div class="form-group">
        <label class="control-label col-xs-3">GENERO:</label>
        <div class="col-xs-4">
            <input type="text" class="form-control">
              </div>
        </div>

    <br>
    <div class="form-group">
        <div class="col-xs-offset-3 col-xs-9">
            <input type="submit" class="btn btn-primary" value="Enviar">
            <input type="reset" class="btn btn-default" value="Limpiar">
        </div>
    </div>
    </form>
</body>
</html>
