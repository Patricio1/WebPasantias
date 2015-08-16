using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;//Objetos de datos genericos.
using System.Data.SqlClient;//Proveedor para SQL Server.
using SPP.BusinessObjects;
using SPP.DataAccessLayer;
using BinaryIntellect.DataAccess;
using SMC.DataAccessLayer;

namespace SPP.DataAccessLayer.PracticasDAL
{
    public class FuncionPerfilDAL
    {
        #region Métodos de selección

        /// <summary>
        /// Recuperar todos los registros de la tabla "Alumnos" 
        /// utilizando un stored procedure.
        /// </summary>
        /// <param name="storedProcedure">Nombre del procedimiento almacenado
        /// que contiene el comando SELECT</param>
        /// <returns>Un DataTable con los datos.</returns>
        public DataTable Select(string storedProcedure)
        {
            DataSet datos = new DataSet();

            //Utilizar el constructor sin parametros el cual especifica el proveedor a utilizar en
            //el archivo app.config o web.config.
            DatabaseHelper db = new DatabaseHelper();

            //Utilizar la TERCERA version del método: ExecuteDataSet().
            datos = db.ExecuteDataSet(storedProcedure, CommandType.StoredProcedure);

            return datos.Tables[0];
        }




        /// <summary>
        /// Recupera un registro de la tabla "TIPO PRACTICA" según la clave primaria
        /// "COD_TIP_PRAC" especificada, utilizando un "procedimiento almacenado".
        /// </summary>
        /// <param name="CED_ALU">Valor de la  COD_TIP_PRAC a recuperar.</param>
        /// <param name="storedProcedure">Nombre del procedimiento almacenado 
        /// que contiene la consulta</param>
        /// <returns></returns>
        public DataTable SelectPorPrimaryKey(string ID_FUN, string storedProcedure)
        {
            DataSet datos = new DataSet();

            //Utilizar el constructor sin parametros el cual especifica el proveedor a utilizar en
            //el archivo app.config o web.config.
            DatabaseHelper db = new DatabaseHelper();

            db.AddParameter("@ID_FUN", ID_FUN);


            //Utilizar la TERCERA version del método: ExecuteDataSet().
            datos = db.ExecuteDataSet(storedProcedure, CommandType.StoredProcedure);

            //La sentencia SELECT regresara UN SOLO registro en el DataTable,
            //o CERO registros en caso de no encontrar el registro especificado.
            return datos.Tables[0];
        }

        #endregion

        #region Métodos de persistencia-DML
        public int Insert(FuncionPerfil funcion)
        {
            DatabaseHelper db = new DatabaseHelper();

            //Preparar la sentencia "INSERT".
            string sentenciaInsert = "INSERT INTO FUNCIONES_PERFIL (ID_FUN,ID_CAR,NOM_FUN) " +
    "VALUES (@ID_FUN, @ID_CAR, @NOM_FUN)";

            //Como el comando SQL tiene parametros, crear y agregar los parámetros a la 
            //propiedad "Parameters" del "Command".   
            db.AddParameter("@ID_FUN", funcion.IdFuncion);
            db.AddParameter("@ID_CAR", funcion.IdCarrera);
            db.AddParameter("@NOM_FUN", funcion.NombreFuncion);
            


            //Utilizar la PRIMERA version del método: ExecuteNonQuery().
            db.ExecuteNonQuery(sentenciaInsert);


            //para comprovar si se ejecuto la sentencia
            return 1;
        }



        /// <summary>
        /// Inserta un registro en la tabla "Alumnos" utilizando stored procedures.
        /// </summary>
        /// <param name="alumno">Objeto de negocio para pasar datos</param>
        /// <returns>Un entero con el autonumerico generado por la BD</returns>
        public int Insert(FuncionPerfil funcion, string storedProcedure)
        {
            DatabaseHelper db = new DatabaseHelper();

            //Como el STORED PROCEDURE tiene parametros, crear y agregar los parámetros a la 
            //propiedad "Parameters" del "Command".   
            db.AddParameter("@ID_FUN", funcion.IdFuncion);
            db.AddParameter("@ID_CAR", funcion.IdCarrera);
            db.AddParameter("@NOM_FUN", funcion.NombreFuncion);

            //Utilizar la TERCERA version del método: ExecuteNonQuery().
            int i = db.ExecuteNonQuery(storedProcedure, CommandType.StoredProcedure);

            //Ejecutar el comando y recuperar el código generado por la base de datos.
            //Utilizar la TERCERA version del método: ExecuteScalar().
            // int customerID = Convert.ToInt32(db.ExecuteScalar("p_select_customers_autonumerico", CommandType.StoredProcedure));

            return i;
        }

        #endregion


        #region Métodos DML


        /// <summary>
        /// Elimina un registro en la tabla "Alumnos" utilizando un stored procedure.
        /// </summary>
        /// <param name="CED_ALU">Clave primaria del registro a eliminar</param>
        /// <param name="storedProcedure">Nombre del stored procedure</param>
        /// <returns>true si se elimina, false caso contrario</returns>
        public bool Delete(string ID_FUN, string storedProcedure)
        {
            //Instanciar un "Connection".
            SqlConnection conexion = new SqlConnection();

            try
            {
                //Crear y configurar el "Connection".
                conexion.ConnectionString = ConectarBaseDatos.CadenaConexion;

                //Instanciar un "Command".
                SqlCommand comandoDelete = new SqlCommand(storedProcedure, conexion);
                comandoDelete.CommandType = CommandType.StoredProcedure;//Ejecutar un stored procedure.

                //Como el "Stored Procedure" tiene un parametro, crear y agregar el parámetro a la 
                //propiedad "Parameters" del "Command".                
                comandoDelete.Parameters.Add("@ID_FUN", SqlDbType.Int, 4).Value = ID_FUN;


                //Abrir la conexion.
                conexion.Open();

                //Ejecutar el comando, y retornar el numero de registros afectados
                //por el comando DELETE.
                int cantidadRegistrosAfectados = comandoDelete.ExecuteNonQuery();

                if (cantidadRegistrosAfectados > 0)
                    return true;//Se elimino el registro.
                else
                    return false;//No se puedo eliminar el registro.
            }
            catch (SqlException excepcion)
            {
                //Lanzar la excepcion.
                throw excepcion;
            }
            catch (Exception excepcion)
            {
                //Lanzar la excepcion.
                throw excepcion;
            }
            finally
            {
                //Cerrar la conexion.
                conexion.Close();
                //Liberar memoria.
                conexion.Dispose();
            }
        }


        /// <summary>
        /// Actualiza un registro en la tabla "Alumnos" utilizando un stored procedure.
        /// </summary>
        /// <param name="alumnos">Objeto de negocio para pasar datos</param>
        /// <param name="storedProcedure">Nombre del stored procedure</param>
        /// <returns>true si se actualiza, false caso contrario</returns>
        public int Update(FuncionPerfil funcion, string storedProcedure)
        {
            //Instanciar un "Connection".
            SqlConnection conexion = new SqlConnection();

            try
            {
                //Crear y configurar el "Connection".
                conexion.ConnectionString = ConectarBaseDatos.CadenaConexion;


                //Instanciar un "Command".
                SqlCommand comandoUpdate = new SqlCommand(storedProcedure, conexion);
                comandoUpdate.CommandType = CommandType.StoredProcedure;//Ejecutar un stored procedure.

                //Como el "Stored Procedure" tiene un parametro, crear y agregar los parámetros a la 
                //propiedad "Parameters" del "Command".                 
                comandoUpdate.Parameters.Add("@ID_FUN", SqlDbType.Int, 4).Value = funcion.IdFuncion;
                comandoUpdate.Parameters.Add("@ID_CAR", SqlDbType.VarChar, 10).Value = funcion.IdCarrera;
                comandoUpdate.Parameters.Add("@NOM_FUN", SqlDbType.VarChar, 50).Value = funcion.NombreFuncion;
                



                //Abrir la conexion.
                conexion.Open();

                //Ejecutar el comando, y retornar el numero de registros afectados
                //por el comando UPDATE.
                int cantidadRegistrosAfectados = comandoUpdate.ExecuteNonQuery();

                if (cantidadRegistrosAfectados > 0)
                    return 1;//Se elimino el registro.
                else
                    return 0;//No se puedo actualizar el registro.
            }
            catch (SqlException excepcion)
            {
                //Lanzar la excepcion.
                throw excepcion;
            }
            catch (Exception excepcion)
            {
                //Lanzar la excepcion.
                throw excepcion;
            }
            finally
            {
                //Cerrar la conexion.
                conexion.Close();
                //Liberar memoria.
                conexion.Dispose();
            }
        }

        public int Update(FuncionPerfil funcion)
        {
            DatabaseHelper db = new DatabaseHelper();

            //Preparar la sentencia "INSERT".
            string sentenciaUpdate = "UPDATE FUNCIONES_PERFIL SET ID_CAR=@ID_CAR,NOM_FUN=@NOM_FUN, WHERE ID_FUN=@ID_FUN";

            //Como el comando SQL tiene parametros, crear y agregar los parámetros a la 
            //propiedad "Parameters" del "Command".   
            db.AddParameter("@ID_FUN", funcion.IdFuncion);
            db.AddParameter("@ID_CAR", funcion.IdCarrera);
            db.AddParameter("@NOM_FUN", funcion.NombreFuncion);

            //Utilizar la PRIMERA version del método: ExecuteNonQuery().
            int resul = db.ExecuteNonQuery(sentenciaUpdate);

            //Preparar la sentencia SELECT para recuperar el último "AUTONUMERICO" que
            //genero al base de datos al ejecutar la sentencia  "INSERT" anterior.
            //string sentenciaSelect = "SELECT IDENT_CURRENT('Customers') " +
            //                         "FROM Customers";

            ////Ejecutar el comando y recuperar el código generado por la base de datos.
            ////Utilizar la PRIMERA version del método: ExecuteScalar().
            //int customerID = Convert.ToInt32(db.ExecuteScalar(sentenciaSelect));


            return resul;
        }

        #endregion        
    }
}
