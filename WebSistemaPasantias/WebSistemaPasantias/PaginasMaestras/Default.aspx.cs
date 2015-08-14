using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SPP.BusinessObjects;
using SPP.DataAccessLayer.AlumnoDAL;
using SPP.DataAccessLayer;


public partial class PaginasMaestras_Default : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        AlumnoDAL alumnosDAL = new AlumnoDAL();

        //PRIMERA version del metodo: Select.  p_select_alumnos
        //dgvDatos.DataSource = alumnosDAL.SelectPorPrimaryKey("1804600912", "p_select_alumnos_por_primarykey");

        DetailsView1.DataSource = alumnosDAL.Select("p_select_alumnos");
        DetailsView1.DataBind();

        ////SEGUNDA version del método: Select. 
        //dgvDatos.DataSource = customersDAL.Select("p_select_customers");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Alumno alumno = new Alumno();
        //Configurar los valores para ejecutar el comando: INSERT.           
        alumno.Cedula = "1900000";
        alumno.IdCar = "C001";
        alumno.Nombre1 = "NOMBRE";
        alumno.Nombre2 = "DIRECCION";
        alumno.Apellido1 = "APELLIDO1";
        alumno.Apellido2 = "APELLIDO2";
        alumno.Telefono = "TELEFONO";
        alumno.Email = "abchotmail.com";
        alumno.Celular = "CELULAR";
        alumno.CreditosAprobados = 120;
        alumno.Genero = 'M';
        

       AlumnoDAL alumnoDAL = new AlumnoDAL();

        ////PRIMERA version del metodo: Insert. Utiliza SQL embebido.
        //int autonumerico = customersDAL.Insert(customer);


        //SEGUNDA version del metodo: Insert.  Utiliza Stored Procedure.
       //int autonumerico = alumnoDAL.Insert(alumno, "p_insert_alumnos");

      int autonumerico = alumnoDAL.Insert(alumno);

       // MessageBox.Show(autonumerico.ToString(), "AUTONUMERICO");

        
        //Label1.Text = autonumerico.ToString();

        //Mostrar mensaje alerta personalizado
        string cadenaAviso="Ya estas registrado!";
      ClientScript.RegisterStartupScript(GetType(), "mostrarMensaje", "MostrarMensaje('"+cadenaAviso+"')", true);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Alumno alumno = new Alumno();
        //Configurar los valores para ejecutar el comando: INSERT.           
        alumno.Cedula = "1804015";
        alumno.IdCar = "C001";
        alumno.Nombre1 = "jhonny";
        alumno.Nombre2 = "DIRECCION";
        alumno.Apellido1 = "APELLIDO1";
        alumno.Apellido2 = "APELLIDO2";
        alumno.Telefono = "TELEFONO";
        alumno.Email = "abchotmail.com";
        alumno.Celular = "CELULARh";
        alumno.CreditosAprobados = 120;
        alumno.Genero = 'M';

        string cadenaAviso = "";
        string tipoAviso = "";
        string aviso ="";

        AlumnoDAL alumnoDAL = new AlumnoDAL();

        try
        {
 int autonumerico = alumnoDAL.Update(alumno);

     

        //Mostrar mensaje alerta personalizado
        if (autonumerico >= 1)
        {
             cadenaAviso = "Registro Actualizado correctamente!";
             tipoAviso = "success";
             aviso="Buen Trabajo!";
            ClientScript.RegisterStartupScript(GetType(), "mostrarMensaje", "MostrarMensaje('"+aviso+"','" + cadenaAviso + "','"+tipoAviso+"')", true);
            //Label1.Text = autonumerico.ToString();
        }
        else {
             cadenaAviso = "Registro no Actualizado!";
             tipoAviso = "warning";
             aviso = "Fallo Actualizacion!";
             ClientScript.RegisterStartupScript(GetType(), "mostrarMensaje", "MostrarMensaje('" + aviso + "','" + cadenaAviso + "','" + tipoAviso + "')", true);
            //Label1.Text = autonumerico.ToString();
        }
        }catch(Exception ex){
             cadenaAviso = "Registro no Actualizado!";
             tipoAviso = "";
            ClientScript.RegisterStartupScript(GetType(), "mostrarMensaje", "MostrarMensaje('" + cadenaAviso + "','" + tipoAviso + "')", true);
        }

       
        
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        //ClientScript.RegisterStartupScript(GetType(), "mostrarMensaje", "MensajeEliminar()", true);
        Alumno alumno = new Alumno();
      //  ClientScript.RegisterStartupScript(GetType(), "mostrarMensaje", "Confirmacion();", true);
        
        
        //Configurar los valores para ejecutar el comando: INSERT.           
        alumno.Cedula = "180460665";


        AlumnoDAL alumnoDAL = new AlumnoDAL();
        int autonumerico = 0;
        try
        {
            autonumerico = alumnoDAL.Delete(alumno);
        }
        catch (Exception ex)
        {
           // Label1.Text = autonumerico.ToString();
          string  cadenaAviso = "Registro no Eliminado!";
          string   tipoAviso = "warning";
          string  aviso = "Fallo Eliminacion!";
            ClientScript.RegisterStartupScript(GetType(), "mostrarMensaje", "MostrarMensaje('" + aviso + "','" + cadenaAviso + "','" + tipoAviso + "')", true);
            Label1.Text = autonumerico.ToString();
        }

        
    }
}