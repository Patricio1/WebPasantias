using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnRegistrar_Click(object sender, EventArgs e)
    {
        string script = @"<script type='text/javascript'>
                        MostrarMensaje();
                  </script>";

        ScriptManager.RegisterStartupScript(this, typeof(Page), "MostrarMensaje()", script, false);

        #region LIMPIAR DATOS
        txtNombre.Text = "";
        txtPassword.Text = "";
        txtPasswordRepeat.Text = "";
        txtCorreo.Text = "";
        txtPregunta.Text = "";
        txtRespuesta.Text = "";
        #endregion
    }
}