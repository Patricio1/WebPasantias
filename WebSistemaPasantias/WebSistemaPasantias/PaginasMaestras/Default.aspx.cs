using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SPP.BusinessObjects;
using SPP.DataAccessLayer.AlumnoDAL;


public partial class PaginasMaestras_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        AlumnoDAL alumnosDAL = new AlumnoDAL();

        //PRIMERA version del metodo: Select.
        dgvDatos.DataSource = alumnosDAL.SelectPorPrimaryKey("1804600912", "p_select_alumnos_por_primarykey");

        ////SEGUNDA version del método: Select. 
        //dgvDatos.DataSource = customersDAL.Select("p_select_customers");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}