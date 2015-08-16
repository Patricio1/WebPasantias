<%@ Page Title="" Language="C#" MasterPageFile="~/PaginasMaestras/Forms.master" AutoEventWireup="true" CodeFile="TipoPractica.aspx.cs" Inherits="PaginasMaestras_TipoPractica" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MenuContextual" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContenidoPrincipal" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" Height="174px" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" Width="363px">
    </asp:GridView>
    <asp:Button ID="btnInsertar" runat="server" Text="Insertar" 
        onclick="btnInsertar_Click" />

           <script type="text/javascript" language="javascript">
               function MostrarMensaje(param1, param2, param3) {
                   swal(param1, param2, param3)
               }

               function Confirmacion() {

                   var seleccion = confirm("acepta el mensaje ?");

                   if (seleccion)
                       alert("se acepto el mensaje");
                   else
                       alert("NO se acepto el mensaje");

                   //usado para que no haga postback el boton de asp.net cuando 
                   //no se acepte el confirm
                   return seleccion;

               }

               function MensajeEliminar() {
                   swal({
                       title: 'Are you sure?',
                       text: 'You will not be able to recover this imaginary file!',
                       type: 'warning',
                       showCancelButton: true,
                       confirmButtonColor: '#3085d6',
                       cancelButtonColor: '#d33',
                       confirmButtonText: 'Yes, delete it!',
                       closeOnConfirm: false
                   },
        function () {
            swal(
              'Deleted!',
              'Your file has been deleted.',
              'success'
            );
        });



               }
   

        </script>

        <script src="../App_Themes/sweetalert2/dist/sweetalert2.min.js"></script>
    <link href="../App_Themes/sweetalert2/dist/sweetalert2.css" rel="stylesheet" type="text/css" />

    <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" />


    <asp:Button ID="btnActualizar" runat="server" Text="Actualizar" 
        onclick="btnActualizar_Click" />


    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>


</asp:Content>

