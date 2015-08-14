using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SPP.BusinessObjects
{
    /// <summary>
    /// Objeto o clase de negocio que presenta una tupla de la tabla: Alumno.
    /// </summary>
   public class Alumno
    {
        #region Propiedades automáticas

        //Campos de la tabla:Alumno
        public string Cedula { get; set; }
        public string IdCar { get; set; }
        public string Nombre1 { get; set; }
        public string Nombre2 { get; set; }
        public string Apellido1 { get; set; }
        public string Apellido2 { get; set; }
        public string Telefono { get; set; }
        public string Email { get; set; }
        public string Celular { get; set; }
        public int CreditosAprobados { get; set; }
        public char Genero { get; set; }

        #endregion
    }
}
