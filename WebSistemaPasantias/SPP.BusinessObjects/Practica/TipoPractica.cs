using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SPP.BusinessObjects
{
    public class TipoPractica
    {
        #region Propiedades automáticas

        //Campos de la tabla:Alumno
        public string codigo { get; set; }
        public string nombre { get; set; }
        public string descripcion { get; set; }
        public int horasMinimas { get; set; }
        public int creditosminimo { get; set; }
        #endregion
    }
}
