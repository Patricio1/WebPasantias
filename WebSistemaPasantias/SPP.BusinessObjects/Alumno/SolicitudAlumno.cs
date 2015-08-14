using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SPP.BusinessObjects
{
    /// <summary>
    /// Objeto o clase de negocio que presenta una tupla de la tabla: Solicitud Alumno.
    /// </summary>
    class SolicitudAlumno
    {
        #region Propiedades automáticas

        //Campos de la tabla: Solicitud Alumno
        public int NumSolicitudAlumno { get; set; }
        public string Id_Param { get; set; }
        public string Valor_Param { get; set; }
        #endregion
    }
}
