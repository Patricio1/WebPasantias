﻿using System;
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
    public class TipoPracticaDAL
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
        public DataTable SelectPorPrimaryKey(string COD_TIP_PRAC, string storedProcedure)
        {
            DataSet datos = new DataSet();

            //Utilizar el constructor sin parametros el cual especifica el proveedor a utilizar en
            //el archivo app.config o web.config.
            DatabaseHelper db = new DatabaseHelper();

            db.AddParameter("@COD_TIP_PRAC", COD_TIP_PRAC);


            //Utilizar la TERCERA version del método: ExecuteDataSet().
            datos = db.ExecuteDataSet(storedProcedure, CommandType.StoredProcedure);

            //La sentencia SELECT regresara UN SOLO registro en el DataTable,
            //o CERO registros en caso de no encontrar el registro especificado.
            return datos.Tables[0];
        }

        #endregion

        #region Métodos de persistencia-DML
        public int Insert(TipoPractica practica)
        {
            DatabaseHelper db = new DatabaseHelper();

            //Preparar la sentencia "INSERT".
            string sentenciaInsert = "INSERT INTO alumnos (COD_TIP_PRAC,NOMBRE_PRAC,DES_PRAC,HORAS_MIN,CRED_MIN) " +
    "VALUES (@COD_TIP_PRAC, @NOMBRE_PRAC, @DES_PRAC, @HORAS_MIN, @CRED_MIN)";

            //Como el comando SQL tiene parametros, crear y agregar los parámetros a la 
            //propiedad "Parameters" del "Command".   
            db.AddParameter("@COD_TIP_PRAC", practica.codigo);
            db.AddParameter("@NOMBRE_PRAC", practica.nombre);
            db.AddParameter("@DES_PRAC", practica.descripcion);
            db.AddParameter("@HORAS_MIN", practica.horasMinimas);
            db.AddParameter("@CRED_MIN", practica.creditosminimo);

            //Utilizar la PRIMERA version del método: ExecuteNonQuery().
            db.ExecuteNonQuery(sentenciaInsert);

            //Preparar la sentencia SELECT para recuperar el último "AUTONUMERICO" que
            //genero al base de datos al ejecutar la sentencia  "INSERT" anterior.
            //string sentenciaSelect = "SELECT IDENT_CURRENT('Customers') " +
            //                         "FROM Customers";

            ////Ejecutar el comando y recuperar el código generado por la base de datos.
            ////Utilizar la PRIMERA version del método: ExecuteScalar().
            //int customerID = Convert.ToInt32(db.ExecuteScalar(sentenciaSelect));

            return 1;
        }



        /// <summary>
        /// Inserta un registro en la tabla "Alumnos" utilizando stored procedures.
        /// </summary>
        /// <param name="alumno">Objeto de negocio para pasar datos</param>
        /// <returns>Un entero con el autonumerico generado por la BD</returns>
        public int Insert(TipoPractica practica, string storedProcedure)
        {
            DatabaseHelper db = new DatabaseHelper();

            //Como el STORED PROCEDURE tiene parametros, crear y agregar los parámetros a la 
            //propiedad "Parameters" del "Command".   
            db.AddParameter("@COD_TIP_PRAC", practica.codigo);
            db.AddParameter("@NOMBRE_PRAC", practica.nombre);
            db.AddParameter("@DES_PRAC", practica.descripcion);
            db.AddParameter("@HORAS_MIN", practica.horasMinimas);
            db.AddParameter("@CRED_MIN", practica.creditosminimo);

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
        public int Delete(TipoPractica practica)
        {
            DatabaseHelper db = new DatabaseHelper();

            //Preparar la sentencia "INSERT".
            string sentenciaDelete = "DELETE TIPO_PRACTICA WHERE COD_TIP_PRAC=@COD_TIP_PRAC";

            //Como el comando SQL tiene parametros, crear y agregar los parámetros a la 
            //propiedad "Parameters" del "Command".   
            db.AddParameter("@COD_TIP_PRAC", practica.codigo);


            //Utilizar la PRIMERA version del método: ExecuteNonQuery().
            int resul = db.ExecuteNonQuery(sentenciaDelete);

            //Preparar la sentencia SELECT para recuperar el último "AUTONUMERICO" que
            //genero al base de datos al ejecutar la sentencia  "INSERT" anterior.
            //string sentenciaSelect = "SELECT IDENT_CURRENT('Customers') " +
            //                         "FROM Customers";

            ////Ejecutar el comando y recuperar el código generado por la base de datos.
            ////Utilizar la PRIMERA version del método: ExecuteScalar().
            //int customerID = Convert.ToInt32(db.ExecuteScalar(sentenciaSelect));


            return resul;
        }


        /// <summary>
        /// Actualiza un registro en la tabla "Alumnos" utilizando un stored procedure.
        /// </summary>
        /// <param name="alumnos">Objeto de negocio para pasar datos</param>
        /// <param name="storedProcedure">Nombre del stored procedure</param>
        /// <returns>true si se actualiza, false caso contrario</returns>
        public int Update(TipoPractica practica)
        {
            DatabaseHelper db = new DatabaseHelper();

            //Preparar la sentencia "INSERT".
            string sentenciaUpdate = "UPDATE TIPO_PRACTICA SET NOMBRE_PRAC=@NOMBRE_PRAC,DES_PRAC=@DES_PRAC,HORAS_MIN=@HORAS_MIN,CRED_MIN=@CRED_MIN WHERE CED_ALU=@CED_ALU";

            //Como el comando SQL tiene parametros, crear y agregar los parámetros a la 
            //propiedad "Parameters" del "Command".   
            db.AddParameter("@COD_TIP_PRAC", practica.codigo);
            db.AddParameter("@NOMBRE_PRAC", practica.nombre);
            db.AddParameter("@DES_PRAC", practica.descripcion);
            db.AddParameter("@HORAS_MIN", practica.horasMinimas);
            db.AddParameter("@CRED_MIN", practica.creditosminimo);

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
