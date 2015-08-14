using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SPP.BusinessObjects
{
    /// <summary>
    /// Objeto o clase de negocio que presenta una tupla de la tabla: Datos Solicitud Alumno.
    /// </summary>
    class DatosSolicitudAlumno
    {
        #region Propiedades automáticas

        //Campos de la tabla: Datos_Solicitud_Alumno
        public int NumeroSolicitudAlumno { get; set; }
        public string CedulaAlumno { get; set; }
        public string RucEmpresa { get; set; }
        public string CedulaDocente { get; set; }
        public string IdCargo { get; set; }
        public DateTime FechaSolicitud { get; set; }
        #endregion
    }
}
