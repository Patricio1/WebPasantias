<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login_Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">


<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>
    <!-- Latest compiled and minified CSS -->

   
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <link href="../App_Themes/Tema1/Estilo_Login.css" rel="stylesheet" type="text/css" />
      <link href="../App_Themes/Tema1/TemaFondo.css" rel="stylesheet" type="text/css" />
</head>
<body>

<script src="../App_Themes/trianglify/dist/trianglify.min.js"></script>
<script>
    var pattern = Trianglify({
        height: window.innerHeight,
        width: window.innerWidth,
        cell_size: 60 + Math.random() * 100
    });
    document.body.appendChild(pattern.canvas());
</script>
<div id="something">
   <div class="container">
    <div class="row">
        <div class="col-sm-6 col-md-4 col-md-offset-4">
            <h1 class="text-center login-title">Iniciar Sesión</h1>
            <div class="account-wall">
                <img class="profile-img" src="../Imagenes/login.png"
                    alt="">
                <form class="form-signin" runat="server">

                <input type="text" class="form-control" placeholder="Usuario" required autofocus>
                <input type="password" class="form-control" placeholder="Password" required>
                <asp:Button ID="btnIngresar" runat="server" Text="Ingresar" 
                    class="btn btn-lg btn-primary btn-block" onclick="btnIngresar_Click"/>
             
                <label class="checkbox pull-left">
                    <input type="checkbox" value="remember-me">
                    Recordarme
                </label>
                <a href="#" class="pull-right need-help">Necesita ayuda? </a><span class="clearfix"></span>
                </form>
            </div>
            <a href="CrearUsuario.aspx" class="text-center new-account">Registrarse </a>
        </div>
    </div>
</div>

</div>


</body>
</html>
