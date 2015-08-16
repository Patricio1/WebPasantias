using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SPP.BusinessObjects;
using SPP.DataAccessLayer.PracticasDAL;
using SPP.DataAccessLayer;


public partial class PaginasMaestras_TipoPractica : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TipoPracticaDAL practicas = new TipoPracticaDAL();

        //PRIMERA version del metodo: Select.  p_select_alumnos
        //dgvDatos.DataSource = alumnosDAL.SelectPorPrimaryKey("1804600912", "p_select_alumnos_por_primarykey");

        GridView1.DataSource = practicas.Select("p_select_TIPO_PRACTICA");
        GridView1.DataBind();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void btnInsertar_Click(object sender, EventArgs e)
    {
        TipoPractica practica = new TipoPractica();
        
        //Configurar los valores para ejecutar el comando: INSERT.           
        practica.codigo = "PR2";
        practica.nombrePracticas = "practoca2";
        practica.descripcion = "practicas";
        practica.horasMinimo = 200;
        practica.creditosMinimo = 100;

        TipoPracticaDAL practicasDal = new TipoPracticaDAL();

        ////PRIMERA version del metodo: Insert. Utiliza SQL embebido.
        //int autonumerico = customersDAL.Insert(customer);


        //SEGUNDA version del metodo: Insert.  Utiliza Stored Procedure.
        int autonumerico = practicasDal.Insert(practica, "p_insert_tipo_practica");

        //  int autonumerico = alumnoDAL.Insert(alumno);

        // MessageBox.Show(autonumerico.ToString(), "AUTONUMERICO");


        Label1.Text = autonumerico.ToString();
    }
    protected void btnActualizar_Click(object sender, EventArgs e)
    {
        TipoPractica practica = new TipoPractica();
        //Configurar los valores para ejecutar el comando: INSERT.           
        practica.codigo = "PR2";
        practica.nombrePracticas = "practoca2 actualizada";
        practica.descripcion = "practicas";
        practica.horasMinimo = 300;
        practica.creditosMinimo = 150;

        string cadenaAviso = "";
        string tipoAviso = "";
        string aviso = "";

        TipoPracticaDAL practicasDal = new TipoPracticaDAL();

        try
        {
            int autonumerico = practicasDal.Update(practica, "p_update_TIPO_PRACTICA");



            //Mostrar mensaje alerta personalizado
            if (autonumerico >= 1)
            {
                cadenaAviso = "Registro Actualizado correctamente!";
                tipoAviso = "success";
                aviso = "Buen Trabajo!";
                ClientScript.RegisterStartupScript(GetType(), "mostrarMensaje", "MostrarMensaje('" + aviso + "','" + cadenaAviso + "','" + tipoAviso + "')", true);
                //Label1.Text = autonumerico.ToString();
            }
            else
            {
                cadenaAviso = "Registro no Actualizado!";
                tipoAviso = "warning";
                aviso = "Fallo Actualizacion!";
                ClientScript.RegisterStartupScript(GetType(), "mostrarMensaje", "MostrarMensaje('" + aviso + "','" + cadenaAviso + "','" + tipoAviso + "')", true);
                //Label1.Text = autonumerico.ToString();
            }
        }
        catch (Exception ex)
        {
            cadenaAviso = "Registro no Actualizado!";
            tipoAviso = "";
            ClientScript.RegisterStartupScript(GetType(), "mostrarMensaje", "MostrarMensaje('" + cadenaAviso + "','" + tipoAviso + "')", true);
        }
    }
}