using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using System.Data.SqlClient;//Proveedor para SQL Server.

namespace SMC.DataAccessLayer
{
    /// <summary>
    /// Permite gestionar las excepciones producidas tanto 
    /// a nivel de la base datos (SQL Server) como en el cliente (C#).
    /// </summary>
    /// <remarks>Clase estática.</remarks>
    public static class Excepciones
    {
        #region Datos

        /// <summary>
        /// Permite retornar el mensaje de error personalizado 
        /// por el programador, este se va a visualizar al usuario
        /// de la aplicación cuando se produzca una excepción.
        /// </summary>
        /// <remarks>Dato estático.</remarks>
        private static string _mensajePersonalizado;

        #endregion

        #region Propiedades

        /// <summary>
        /// Permite manipular el campo privado _mensajePersonalizado.
        /// </summary>
        /// <remarks>Propiedad estática.</remarks>
        /// <value>string.</value>
        public static string MensajePersonalizado
        {
            get
            {
                return _mensajePersonalizado;
            }

            //------------
            //NOTA:
            //------------
            //NO SE NECESITA PARA ESTE CASO LA PROPIEDA DE ESCRITURA (set).
        }

        #endregion

        #region Métodos

        /// <summary>
        /// Permite gestionar las excepciones producidas a nivel de la base de   ///datos.
        /// </summary>
        /// <remarks>Solo permite trabajar  con SQL Server.</remarks>
        /// <param name="excepcion">Permite pasar las excepciones generadas en ///SQL Server.</param>
        public static void Gestionar(SqlException excepcion, Plataforma plataforma)
        {
            //---------------------------------------------------
            //Capturar las excepciones generadas en la BD
            //y personalizar los mensajes de error al usuario
            //---------------------------------------------------

            //Permite realizar un salto de linea, para poder
            //mostrar los mensajes de error en varias líneas al
            //usuario de una forma más presentable.

            // string saltoLinea = "\n";

            string saltoLinea = "";

            if (plataforma == Plataforma.Windows)
                saltoLinea = "\n";

            if (plataforma == Plataforma.Web)
                saltoLinea = "<br>";

            //Mensajes para desplegar al usuario.
            //Si cambia el mensaje, unicamente modificamos estas variables 
            //de forma sencilla, haciendo el código más facil de mantener.
            string problema = "EL PROBLEMA GENERADO PUEDE DEBERSE A LOS SIGUIENTES FACTORES:";
            string solucion = "POR FAVOR, PRUEBE LA SIGUIENTE SOLUCIÓN: ";
            string mensajeFinal = "NOTA: En caso de persistir el problema, llame a Soporte Técnico," +
                                  saltoLinea +
                                  "o consulte con el Administrador del Sistema.";

            //Contiene la cadena con el mensaje de error a desplegar
            //al usuario.
            string mensaje = null;

            //Verificar el número de error generado en la BD
            //y personalizarlos.
            switch (excepcion.Number)
            {
                //Errores personalizados.
                //case 4060:
                //    break;

                case 18456:

                    mensaje = problema +
                              saltoLinea +
                              "1.- El nombre de usuario o la contraseña ingresados no son válidos." +
                              saltoLinea +
                              saltoLinea +
                              solucion +
                              saltoLinea +
                             "1.- Verifique que el nombre de usuario y/o contraseña sean correctos." +
                              saltoLinea +
                              saltoLinea +
                              mensajeFinal;
                    break;

                //Errores desconocidos.
                default:
                    mensaje = "ERROR DESCONOCIDO:" +
                              saltoLinea +
                              saltoLinea +
                              "MENSAJE: " + excepcion.Message +
                              saltoLinea +
                              "NÚMERO: " + excepcion.Number +
                              saltoLinea +
                              "FUENTE: " + excepcion.Source +
                              saltoLinea +
                              "SERVIDOR: " + excepcion.Server +
                              saltoLinea +
                              "LÍNEA: " + excepcion.StackTrace;
                    break;
            }

            //Retornar el mensaje de error personalizado en
            //el campo privado "_mensajePersonalizado" de la clase.
            //Para que quien utilice la clase, decida como
            //expone el mensaje de error el formulario. 
            //Podría por ejemplo usar la  clase "MessageBox" para hacerlo,
            //talvez un "ErrorProvider", un "ToolTip" o cualquier otra técnica.
            _mensajePersonalizado = mensaje;
        }

        /// <summary>
        /// Permite gestionar las excepciones producidas a nivel de la aplicación (C#).        
        /// </summary>
        /// <remarks>Método estático.</remarks>
        /// <param name="excepcion">Permite pasar las excepciones generadas en ///C#.</param>
        public static void Gestionar(Exception excepcion, Plataforma plataforma)
        {
            //string saltoLinea = "\n";
            string saltoLinea = "";

            if (plataforma == Plataforma.Windows)
                saltoLinea = "\n";

            if (plataforma == Plataforma.Web)
                saltoLinea = "<br>";


            //Mensajes para desplegar al usuario.
            string problema = "EL PROBLEMA GENERADO PUEDE DEBERSE A LOS SIGUIENTES FACTORES:";
            string solucion = "POR FAVOR, PRUEBE LA SIGUIENTE SOLUCIÓN: ";
            string mensajeFinal = "NOTA: En caso de persistir el problema, llame a Soporte Técnico," +
                                  saltoLinea +
                                  "o consulte con el Administrador del Sistema.";

            string mensaje = null;

            //Obtener la excepción producida y convertirlar a un "string", puesto //que
            //el "switch" solo acepta datos de tipo: "entero, caracteres, cadenas //y enumeraciones"
            //y el método "GetType" regresa un dato de tipo diferente a los //anteriores.
            string tipoExcepcion = excepcion.GetType().ToString();

            //Verificar el número de error generado en el cliente(c#)
            //y personalizarlos.
            switch (tipoExcepcion)
            {
                //Errores personalizados.
                case "System.ArgumentException":

                    mensaje = problema +
                              saltoLinea +
                              "1.- El argumento especificado no es válido." +
                              saltoLinea +
                              saltoLinea +
                              solucion +
                              saltoLinea +
                              "1.- Verifique que el argumento sea correcto." +
                              saltoLinea +
                              saltoLinea +
                              mensajeFinal;
                    break;

                //Errores desconocidos.
                default:
                    mensaje = "ERROR DESCONOCIDO:" +
                              saltoLinea +
                              saltoLinea +
                              "MENSAJE: " + excepcion.Message +
                              saltoLinea +
                              "TIPO: " + excepcion.GetType() +
                              saltoLinea +
                              "FUENTE: " + excepcion.Source +
                              saltoLinea +
                              "LÍNEA: " + excepcion.StackTrace;
                    break;
            }

            //Retornar el mensaje de error personalizado en
            //el campo privado "_mensajePersonalizado" de la clase.
            //Para que quien utilice la clase, decida como
            //expone el mensaje de error el formulario. 
            //Podría por ejemplo usar la  clase "MessageBox" para hacerlo,
            //talvez un "ErrorProvider", un "ToolTip" o cualquier otra técnica.
            _mensajePersonalizado = mensaje;
        }

        #endregion
    }
}
