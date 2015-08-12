<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CrearUsuario.aspx.cs" Inherits="Login_Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>
    <script type="text/javascript" language="javascript">
        function MostrarMensaje(){
      swal('Buen Trabajo!','Ya estas registrado!', 'success')
        }

    </script>
    <script src="../App_Themes/sweetalert2/dist/sweetalert2.min.js"></script>
    <link href="../App_Themes/sweetalert2/dist/sweetalert2.css" rel="stylesheet" type="text/css" />
    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
 <link href="../App_Themes/Tema1/TemaFondo.css" rel="stylesheet" type="text/css" />
    <link href="../App_Themes/Tema1/Estilo_Login.css" rel="stylesheet" type="text/css" />
</head>
<body >

<script src="../App_Themes/trianglify/dist/trianglify.min.js"></script>
<script>
    var pattern = Trianglify({
        height: window.innerHeight+300,
        width: window.innerWidth,
        cell_size: 60 + Math.random() * 100
    });
        document.body.appendChild(pattern.canvas());
   
</script>

<div id="something">

   <div class="container">
    <div class="row">
        <div class="col-sm-6 col-md-4 col-md-offset-4">
            <h1 class="text-center login-title">Registrar Usuario</h1>
            <div class="account-wall">
                <img class="profile-img" src="../Imagenes/login.png"
                    alt="">
                <form class="form-signin" runat="server">
                  <asp:TextBox ID="txtNombre" runat="server" type="text" class="form-control" 
                    placeholder="Nombre" ToolTip="Escriba aquí su nombre" required autofocus></asp:TextBox> 
                <asp:TextBox ID="txtPassword" runat="server" type="password" class="form-control" 
                    placeholder="Contraseña" ToolTip="Escriba aquí su contraseña" required ></asp:TextBox>
               <asp:TextBox ID="txtPasswordRepeat" runat="server" type="password" class="form-control" 
                    placeholder="Repita su contraseña" ToolTip="Vuelva a escribir aquí su contraseña" required ></asp:TextBox>     
                <asp:TextBox ID="txtCorreo" runat="server" type="text" class="form-control" 
                    placeholder="Correo Electrónico" required ToolTip="Escriba aquí su correo"></asp:TextBox> 
                 <%--<input type="text" class="form-control" placeholder="Correo Electrónico" required>--%>
                <asp:TextBox ID="txtPregunta" runat="server" type="text" class="form-control" 
                    placeholder="Pregunta de Seguridad" required 
                     ToolTip="Escriba aquí su pregunta de seguridad"></asp:TextBox>
                 <%--<input type="text" class="form-control" placeholder="Pregunta de Seguridad" required>--%>
                <asp:TextBox ID="txtRespuesta" runat="server" type="text" class="form-control" 
                    placeholder="Respuesta de Seguridad" required 
                     ToolTip="Escriba aquí la respuesta de seguridad"></asp:TextBox>
                 <%--<input type="text" class="form-control" placeholder="Respuesta de Seguridad" required>--%>
                <asp:Button ID="btnRegistrar" runat="server" Text="Registrar" 
                      class="btn btn-lg btn-primary btn-block" onclick="btnRegistrar_Click"/>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                     ErrorMessage="Correo con formato inválido" ControlToValidate="txtCorreo" 
                     ForeColor="Red" 
                     ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                  <br />
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                      ControlToValidate="txtNombre" ErrorMessage="Nombre con formato inválido" 
                      ForeColor="Red" ValidationExpression="^[A-Z a-z]*$"></asp:RegularExpressionValidator>
                  <br />
                  <asp:CompareValidator ID="CompareValidator1" runat="server" 
                      ControlToCompare="txtPassword" ControlToValidate="txtPasswordRepeat" 
                      ErrorMessage="Las contraseñas no coinciden" ForeColor="Red"></asp:CompareValidator>
               
               
                  <br />
                
               
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Inicio.aspx" 
                      Height="5px" ToolTip="Resgresar a Inicio" ImageUrl="~/Imagenes/home.png" Width="5px">Regresar a Inicio</asp:HyperLink>
                </form>
            </div>
            
        </div>
    </div>
</div>

</div>


</body>
</html>
