using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SMC.DataAccessLayer
{
    /// <summary>
    /// Permite almacenar y manipular los parámetros de conexión de una base de datos.
    /// Es decir los datos pasados en la cadena de conexión (ConnectionString) del
    /// objeto "Connection.
    /// </summary>
    public static class ConectarBaseDatos
    {
        #region Propiedades automáticas
        
         //Proposito: 
        //Información de la propiedad "ConnectionString" que se desea almacenar
        //en los datos estáticos, para poder utilizar sus valores en cualquier
        //parte de la aplicación.
        //Este dato es el más importante.
        public static string CadenaConexion { get; set; }
        
        //Datos adicionales.
        public static string Servidor { get; set; }
        public static string BaseDatos { get; set; }
        public static string Usuario { get; set; }
        public static string Contraseña { get; set; }

        #endregion
    }
}
