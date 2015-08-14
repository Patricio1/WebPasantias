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

namespace SPP.DataAccessLayer.AlumnoDAL
{
    /// <summary>
    /// Contiene los métodos de persistencia y selección para la tabla "Alumnos".
    /// </summary>
   public class AlumnoDAL
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
        /// Recupera un registro de la tabla "Alumno" según la clave primaria
        /// "CED_ALU" especificada, utilizando un "procedimiento almacenado".
        /// </summary>
        /// <param name="CED_ALU">Valor de la  CED_ALU a recuperar.</param>
        /// <param name="storedProcedure">Nombre del procedimiento almacenado 
        /// que contiene la consulta</param>
        /// <returns></returns>
        public DataTable SelectPorPrimaryKey(string CedulaAlumno, string storedProcedure)
        {
            DataSet datos = new DataSet();

            //Utilizar el constructor sin parametros el cual especifica el proveedor a utilizar en
            //el archivo app.config o web.config.
            DatabaseHelper db = new DatabaseHelper();

            db.AddParameter("@CED_ALU", CedulaAlumno);


            //Utilizar la TERCERA version del método: ExecuteDataSet().
            datos = db.ExecuteDataSet(storedProcedure, CommandType.StoredProcedure);

            //La sentencia SELECT regresara UN SOLO registro en el DataTable,
            //o CERO registros en caso de no encontrar el registro especificado.
            return datos.Tables[0];
        }

        #endregion

        #region Métodos de persistencia-DML

        /// <summary>
        /// Inserta un registro en la tabla "Customers" utilizando stored procedures.
        /// </summary>
        /// <param name="alumno">Objeto de negocio para pasar datos</param>
        /// <returns>Un entero con el autonumerico generado por la BD</returns>
        //public int Insert(Alumno alumno, string storedProcedure)
        //{
        //    DatabaseHelper db = new DatabaseHelper();

        //    //Como el STORED PROCEDURE tiene parametros, crear y agregar los parámetros a la 
        //    //propiedad "Parameters" del "Command".   
        //    db.AddParameter("@CED_ALU", alumno.Cedula);
        //    db.AddParameter("@ID_CAR", alumno.IdCar);
        //    db.AddParameter("@NOM_ALU_1", alumno.Nombre1);
        //    db.AddParameter("@NOM_ALU_2", alumno.Nombre2);
        //    db.AddParameter("@APE_ALU_1", alumno.Apellido1);
        //    db.AddParameter("@APE_ALU_2", alumno.Apellido2);
        //    db.AddParameter("@TEL_ALU", alumno.Telefono);
        //    db.AddParameter("@EMAIL_ALU", alumno.Email);
        //    db.AddParameter("@CEL_ALU", alumno.Celular);
        //    db.AddParameter("@CRED_APROB", alumno.CreditosAprobados);
        //    db.AddParameter("@GENERO", alumno.Genero);

        //    //Utilizar la TERCERA version del método: ExecuteNonQuery().
        //    int i = db.ExecuteNonQuery(storedProcedure, CommandType.StoredProcedure);

        //    //Ejecutar el comando y recuperar el código generado por la base de datos.
        //    //Utilizar la TERCERA version del método: ExecuteScalar().
        //    int customerID = Convert.ToInt32(db.ExecuteScalar("p_select_customers_autonumerico", CommandType.StoredProcedure));

        //    return customerID;
        //}

        #endregion


        #region Métodos DML


        /// <summary>
        /// Elimina un registro en la tabla "Customers" utilizando un stored procedure.
        /// </summary>
        /// <param name="customerID">Clave primaria del registro a eliminar</param>
        /// <param name="storedProcedure">Nombre del stored procedure</param>
        /// <returns>true si se elimina, false caso contrario</returns>
        public bool Delete(int customerID, string storedProcedure)
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
                comandoDelete.Parameters.Add("@CustomerID", SqlDbType.Int, 4).Value = customerID;


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
        /// Actualiza un registro en la tabla "Customers" utilizando un stored procedure.
        /// </summary>
        /// <param name="customer">Objeto de negocio para pasar datos</param>
        /// <param name="storedProcedure">Nombre del stored procedure</param>
        /// <returns>true si se actualiza, false caso contrario</returns>
        //public bool Update(Alumno customer, string storedProcedure)
        //{
        //    ////Instanciar un "Connection".
        //    //SqlConnection conexion = new SqlConnection();

        //    //try
        //    //{
        //    //    //Crear y configurar el "Connection".
        //    //    conexion.ConnectionString = ConectarBaseDatos.CadenaConexion;


        //    //    //Instanciar un "Command".
        //    //    SqlCommand comandoUpdate = new SqlCommand(storedProcedure, conexion);
        //    //    comandoUpdate.CommandType = CommandType.StoredProcedure;//Ejecutar un stored procedure.

        //    //    //Como el "Stored Procedure" tiene un parametro, crear y agregar los parámetros a la 
        //    //    //propiedad "Parameters" del "Command".                 
        //    //    comandoUpdate.Parameters.Add("@Name", SqlDbType.VarChar, 100).Value = customer.Name;
        //    //    comandoUpdate.Parameters.Add("@Address", SqlDbType.VarChar, 50).Value = customer.Address;
        //    //    comandoUpdate.Parameters.Add("@City", SqlDbType.VarChar, 20).Value = customer.City;
        //    //    comandoUpdate.Parameters.Add("@State", SqlDbType.Char, 2).Value = customer.State;
        //    //    comandoUpdate.Parameters.Add("@ZipCode", SqlDbType.Char, 15).Value = customer.ZipCode;
        //    //    comandoUpdate.Parameters.Add("@CustomerID", SqlDbType.Int, 4).Value = customer.CustomerID;


        //    //    //Abrir la conexion.
        //    //    conexion.Open();

        //    //    //Ejecutar el comando, y retornar el numero de registros afectados
        //    //    //por el comando UPDATE.
        //    //    int cantidadRegistrosAfectados = comandoUpdate.ExecuteNonQuery();

        //    //    if (cantidadRegistrosAfectados > 0)
        //    //        return true;//Se elimino el registro.
        //    //    else
        //            return false;//No se puedo actualizar el registro.
        //    //}
        //    //catch (SqlException excepcion)
        //    //{
        //    //    //Lanzar la excepcion.
        //    //    throw excepcion;
        //    //}
        //    //catch (Exception excepcion)
        //    //{
        //    //    //Lanzar la excepcion.
        //    //    throw excepcion;
        //    //}
        //    //finally
        //    //{
        //    //    //Cerrar la conexion.
        //    //    conexion.Close();
        //    //    //Liberar memoria.
        //    //    conexion.Dispose();
        //    //}
        //}

        #endregion        
    }
}
