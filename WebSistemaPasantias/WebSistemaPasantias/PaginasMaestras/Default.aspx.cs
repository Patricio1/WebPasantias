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
        alumno.Cedula = "18046063";
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
       int autonumerico = alumnoDAL.Insert(alumno, "p_insert_alumnos");

     //  int autonumerico = alumnoDAL.Insert(alumno);

       // MessageBox.Show(autonumerico.ToString(), "AUTONUMERICO");

        
        Label1.Text = autonumerico.ToString();
    }
}