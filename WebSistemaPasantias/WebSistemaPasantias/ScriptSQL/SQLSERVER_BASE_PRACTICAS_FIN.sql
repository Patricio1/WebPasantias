/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     6/8/2015 1:06:41                             */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ALUMNOS') and o.name = 'FK_ALUMNOS_RELATIONS_CARRERA')
alter table ALUMNOS
   drop constraint FK_ALUMNOS_RELATIONS_CARRERA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('AVAL_EMPRESA') and o.name = 'FK_AVAL_EMP_RELATIONS_TIPO_PRA')
alter table AVAL_EMPRESA
   drop constraint FK_AVAL_EMP_RELATIONS_TIPO_PRA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('AVAL_EMPRESA') and o.name = 'FK_AVAL_EMP_RELATIONS_ALUMNOS')
alter table AVAL_EMPRESA
   drop constraint FK_AVAL_EMP_RELATIONS_ALUMNOS
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('AVAL_EMPRESA') and o.name = 'FK_AVAL_EMP_RELATIONS_EMPRESAS')
alter table AVAL_EMPRESA
   drop constraint FK_AVAL_EMP_RELATIONS_EMPRESAS
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('AVAL_EMPRESA') and o.name = 'FK_AVAL_EMP_RELATIONS_DOCENTES')
alter table AVAL_EMPRESA
   drop constraint FK_AVAL_EMP_RELATIONS_DOCENTES
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CARRERA') and o.name = 'FK_CARRERA_RELATIONS_FACULTAD')
alter table CARRERA
   drop constraint FK_CARRERA_RELATIONS_FACULTAD
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DATOS_INFORME_CULMINACION') and o.name = 'FK_DATOS_IN_RELATIONS_AVAL_EMP')
alter table DATOS_INFORME_CULMINACION
   drop constraint FK_DATOS_IN_RELATIONS_AVAL_EMP
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DATOS_SOLICITUD_ALUMNO') and o.name = 'FK_DATOS_ALU')
alter table DATOS_SOLICITUD_ALUMNO
   drop constraint FK_DATOS_ALU
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DATOS_SOLICITUD_ALUMNO') and o.name = 'FK_DATOS_DOC')
alter table DATOS_SOLICITUD_ALUMNO
   drop constraint FK_DATOS_DOC
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DATOS_SOLICITUD_ALUMNO') and o.name = 'FK_DATOS_EMP')
alter table DATOS_SOLICITUD_ALUMNO
   drop constraint FK_DATOS_EMP
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DATOS_SOLICITUD_COORDINADOR') and o.name = 'FK_DATOS_PRAC')
alter table DATOS_SOLICITUD_COORDINADOR
   drop constraint FK_DATOS_PRAC
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DATOS_SOLICITUD_COORDINADOR') and o.name = 'FK_DATOS_SO_EMP')
alter table DATOS_SOLICITUD_COORDINADOR
   drop constraint FK_DATOS_SO_EMP
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DATOS_SOLICITUD_COORDINADOR') and o.name = 'FK_DATOS_SO_ALU')
alter table DATOS_SOLICITUD_COORDINADOR
   drop constraint FK_DATOS_SO_ALU
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DATOS_VISITA') and o.name = 'FK_DATOS_VI_RELATIONS_DOCENTES')
alter table DATOS_VISITA
   drop constraint FK_DATOS_VI_RELATIONS_DOCENTES
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DATOS_VISITA') and o.name = 'FK_DATOS_VI_RELATIONS_ALUMNOS')
alter table DATOS_VISITA
   drop constraint FK_DATOS_VI_RELATIONS_ALUMNOS
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DATOS_VISITA') and o.name = 'FK_DATOS_VI_RELATIONS_TUTORES_')
alter table DATOS_VISITA
   drop constraint FK_DATOS_VI_RELATIONS_TUTORES_
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DOCENTES_PRACTICAS') and o.name = 'FK_DOCENTES_RELATIONS_DOCENTES')
alter table DOCENTES_PRACTICAS
   drop constraint FK_DOCENTES_RELATIONS_DOCENTES
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DOCENTES_PRACTICAS') and o.name = 'FK_DOCENTES_RELATIONS_CARGOS_D')
alter table DOCENTES_PRACTICAS
   drop constraint FK_DOCENTES_RELATIONS_CARGOS_D
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('EVALUACIONES') and o.name = 'FK_EVALUACI_RELATIONS_TUTORES_')
alter table EVALUACIONES
   drop constraint FK_EVALUACI_RELATIONS_TUTORES_
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('EVALUACIONES') and o.name = 'FK_EVALUACI_RELATIONS_DOCENTES')
alter table EVALUACIONES
   drop constraint FK_EVALUACI_RELATIONS_DOCENTES
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FUNCIONES_PERFIL') and o.name = 'FK_FUNCIONE_RELATIONS_CARRERA')
alter table FUNCIONES_PERFIL
   drop constraint FK_FUNCIONE_RELATIONS_CARRERA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FUNCION_VISITA') and o.name = 'FK_FUNCION__RELATIONS_FUNCIONE')
alter table FUNCION_VISITA
   drop constraint FK_FUNCION__RELATIONS_FUNCIONE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FUNCION_VISITA') and o.name = 'FK_FUNCION__RELATIONS_DATOS_VI')
alter table FUNCION_VISITA
   drop constraint FK_FUNCION__RELATIONS_DATOS_VI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('INFORME_APROBACION') and o.name = 'FK_INFORME_DAT_CUL')
alter table INFORME_APROBACION
   drop constraint FK_INFORME_DAT_CUL
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('INFORME_CULMINACION') and o.name = 'FK_INFORME_CUL_DAT')
alter table INFORME_CULMINACION
   drop constraint FK_INFORME_CUL_DAT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('INFORME_CULMINACION') and o.name = 'FK_INFORME__RELATIONS_PARAM_CU')
alter table INFORME_CULMINACION
   drop constraint FK_INFORME__RELATIONS_PARAM_CU
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('INFORME_CULMINACION') and o.name = 'FK_INFORME__RELATIONS_PERIODO_')
alter table INFORME_CULMINACION
   drop constraint FK_INFORME__RELATIONS_PERIODO_
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('RESPUESTAS') and o.name = 'FK_RESPUEST_RELATIONS_EVALUACI')
alter table RESPUESTAS
   drop constraint FK_RESPUEST_RELATIONS_EVALUACI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('RESPUESTAS') and o.name = 'FK_RESPUEST_RELATIONS_PREGUNTA')
alter table RESPUESTAS
   drop constraint FK_RESPUEST_RELATIONS_PREGUNTA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SOLICITUD_ALUMNO') and o.name = 'FK_SOL_DATOS')
alter table SOLICITUD_ALUMNO
   drop constraint FK_SOL_DATOS
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SOLICITUD_ALUMNO') and o.name = 'FK_SOL_PARAM')
alter table SOLICITUD_ALUMNO
   drop constraint FK_SOL_PARAM
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SOLICITUD_COORDINADOR') and o.name = 'FK_SOLICITU_RELATIONS_DATOS_SO')
alter table SOLICITUD_COORDINADOR
   drop constraint FK_SOLICITU_RELATIONS_DATOS_SO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SOLICITUD_COORDINADOR') and o.name = 'FK_SOL_COOR')
alter table SOLICITUD_COORDINADOR
   drop constraint FK_SOL_COOR
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TUTORES_EMPRESA') and o.name = 'FK_TUTORES__RELATIONS_EMPRESAS')
alter table TUTORES_EMPRESA
   drop constraint FK_TUTORES__RELATIONS_EMPRESAS
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('VISITA') and o.name = 'FK_VISITA_RELATIONS_DATOS_VI')
alter table VISITA
   drop constraint FK_VISITA_RELATIONS_DATOS_VI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('VISITA') and o.name = 'FK_VISITA_RELATIONS_PARAM_VI')
alter table VISITA
   drop constraint FK_VISITA_RELATIONS_PARAM_VI
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ALUMNOS')
            and   name  = 'RELATIONSHIP_2_FK'
            and   indid > 0
            and   indid < 255)
   drop index ALUMNOS.RELATIONSHIP_2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ALUMNOS')
            and   type = 'U')
   drop table ALUMNOS
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('AVAL_EMPRESA')
            and   name  = 'RELATIONSHIP_47_FK'
            and   indid > 0
            and   indid < 255)
   drop index AVAL_EMPRESA.RELATIONSHIP_47_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('AVAL_EMPRESA')
            and   name  = 'RELATIONSHIP_35_FK'
            and   indid > 0
            and   indid < 255)
   drop index AVAL_EMPRESA.RELATIONSHIP_35_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('AVAL_EMPRESA')
            and   name  = 'RELATIONSHIP_41_FK'
            and   indid > 0
            and   indid < 255)
   drop index AVAL_EMPRESA.RELATIONSHIP_41_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('AVAL_EMPRESA')
            and   name  = 'RELATIONSHIP_40_FK'
            and   indid > 0
            and   indid < 255)
   drop index AVAL_EMPRESA.RELATIONSHIP_40_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('AVAL_EMPRESA')
            and   type = 'U')
   drop table AVAL_EMPRESA
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CARGOS_DOCENTES')
            and   type = 'U')
   drop table CARGOS_DOCENTES
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CARRERA')
            and   name  = 'RELATIONSHIP_1_FK'
            and   indid > 0
            and   indid < 255)
   drop index CARRERA.RELATIONSHIP_1_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CARRERA')
            and   type = 'U')
   drop table CARRERA
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DATOS_INFORME_CULMINACION')
            and   name  = 'RELATIONSHIP_44_FK'
            and   indid > 0
            and   indid < 255)
   drop index DATOS_INFORME_CULMINACION.RELATIONSHIP_44_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DATOS_INFORME_CULMINACION')
            and   type = 'U')
   drop table DATOS_INFORME_CULMINACION
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DATOS_SOLICITUD_ALUMNO')
            and   name  = 'RELATIONSHIP_16_FK'
            and   indid > 0
            and   indid < 255)
   drop index DATOS_SOLICITUD_ALUMNO.RELATIONSHIP_16_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DATOS_SOLICITUD_ALUMNO')
            and   name  = 'RELATIONSHIP_15_FK'
            and   indid > 0
            and   indid < 255)
   drop index DATOS_SOLICITUD_ALUMNO.RELATIONSHIP_15_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DATOS_SOLICITUD_ALUMNO')
            and   name  = 'RELATIONSHIP_10_FK'
            and   indid > 0
            and   indid < 255)
   drop index DATOS_SOLICITUD_ALUMNO.RELATIONSHIP_10_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DATOS_SOLICITUD_ALUMNO')
            and   type = 'U')
   drop table DATOS_SOLICITUD_ALUMNO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DATOS_SOLICITUD_COORDINADOR')
            and   name  = 'RELATIONSHIP_19_FK'
            and   indid > 0
            and   indid < 255)
   drop index DATOS_SOLICITUD_COORDINADOR.RELATIONSHIP_19_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DATOS_SOLICITUD_COORDINADOR')
            and   name  = 'RELATIONSHIP_18_FK'
            and   indid > 0
            and   indid < 255)
   drop index DATOS_SOLICITUD_COORDINADOR.RELATIONSHIP_18_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DATOS_SOLICITUD_COORDINADOR')
            and   name  = 'RELATIONSHIP_17_FK'
            and   indid > 0
            and   indid < 255)
   drop index DATOS_SOLICITUD_COORDINADOR.RELATIONSHIP_17_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DATOS_SOLICITUD_COORDINADOR')
            and   type = 'U')
   drop table DATOS_SOLICITUD_COORDINADOR
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DATOS_VISITA')
            and   name  = 'RELATIONSHIP_7_FK'
            and   indid > 0
            and   indid < 255)
   drop index DATOS_VISITA.RELATIONSHIP_7_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DATOS_VISITA')
            and   name  = 'RELATIONSHIP_6_FK'
            and   indid > 0
            and   indid < 255)
   drop index DATOS_VISITA.RELATIONSHIP_6_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DATOS_VISITA')
            and   name  = 'RELATIONSHIP_5_FK'
            and   indid > 0
            and   indid < 255)
   drop index DATOS_VISITA.RELATIONSHIP_5_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DATOS_VISITA')
            and   type = 'U')
   drop table DATOS_VISITA
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DOCENTES')
            and   type = 'U')
   drop table DOCENTES
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DOCENTES_PRACTICAS')
            and   name  = 'RELATIONSHIP_46_FK'
            and   indid > 0
            and   indid < 255)
   drop index DOCENTES_PRACTICAS.RELATIONSHIP_46_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DOCENTES_PRACTICAS')
            and   type = 'U')
   drop table DOCENTES_PRACTICAS
go

if exists (select 1
            from  sysobjects
           where  id = object_id('EMPRESAS')
            and   type = 'U')
   drop table EMPRESAS
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('EVALUACIONES')
            and   name  = 'RELATIONSHIP_38_FK'
            and   indid > 0
            and   indid < 255)
   drop index EVALUACIONES.RELATIONSHIP_38_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('EVALUACIONES')
            and   name  = 'RELATIONSHIP_37_FK'
            and   indid > 0
            and   indid < 255)
   drop index EVALUACIONES.RELATIONSHIP_37_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('EVALUACIONES')
            and   type = 'U')
   drop table EVALUACIONES
go

if exists (select 1
            from  sysobjects
           where  id = object_id('FACULTAD')
            and   type = 'U')
   drop table FACULTAD
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FUNCIONES_PERFIL')
            and   name  = 'RELATIONSHIP_29_FK'
            and   indid > 0
            and   indid < 255)
   drop index FUNCIONES_PERFIL.RELATIONSHIP_29_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('FUNCIONES_PERFIL')
            and   type = 'U')
   drop table FUNCIONES_PERFIL
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FUNCION_VISITA')
            and   name  = 'RELATIONSHIP_30_FK'
            and   indid > 0
            and   indid < 255)
   drop index FUNCION_VISITA.RELATIONSHIP_30_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FUNCION_VISITA')
            and   name  = 'RELATIONSHIP_8_FK'
            and   indid > 0
            and   indid < 255)
   drop index FUNCION_VISITA.RELATIONSHIP_8_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('FUNCION_VISITA')
            and   type = 'U')
   drop table FUNCION_VISITA
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('INFORME_APROBACION')
            and   name  = 'RELATIONSHIP_48_FK'
            and   indid > 0
            and   indid < 255)
   drop index INFORME_APROBACION.RELATIONSHIP_48_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('INFORME_APROBACION')
            and   type = 'U')
   drop table INFORME_APROBACION
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('INFORME_CULMINACION')
            and   name  = 'RELATIONSHIP_45_FK'
            and   indid > 0
            and   indid < 255)
   drop index INFORME_CULMINACION.RELATIONSHIP_45_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('INFORME_CULMINACION')
            and   name  = 'RELATIONSHIP_39_FK'
            and   indid > 0
            and   indid < 255)
   drop index INFORME_CULMINACION.RELATIONSHIP_39_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('INFORME_CULMINACION')
            and   name  = 'RELATIONSHIP_24_FK'
            and   indid > 0
            and   indid < 255)
   drop index INFORME_CULMINACION.RELATIONSHIP_24_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('INFORME_CULMINACION')
            and   type = 'U')
   drop table INFORME_CULMINACION
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PARAM_CULMINACION')
            and   type = 'U')
   drop table PARAM_CULMINACION
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PARAM_SOL_ALUMNO')
            and   type = 'U')
   drop table PARAM_SOL_ALUMNO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PARAM_SOL_COORDINADOR')
            and   type = 'U')
   drop table PARAM_SOL_COORDINADOR
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PARAM_VISITA')
            and   type = 'U')
   drop table PARAM_VISITA
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PERIODO_ACAD')
            and   type = 'U')
   drop table PERIODO_ACAD
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PREGUNTAS')
            and   type = 'U')
   drop table PREGUNTAS
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('RESPUESTAS')
            and   name  = 'RELATIONSHIP_34_FK'
            and   indid > 0
            and   indid < 255)
   drop index RESPUESTAS.RELATIONSHIP_34_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('RESPUESTAS')
            and   type = 'U')
   drop table RESPUESTAS
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('SOLICITUD_ALUMNO')
            and   name  = 'RELATIONSHIP_14_FK'
            and   indid > 0
            and   indid < 255)
   drop index SOLICITUD_ALUMNO.RELATIONSHIP_14_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('SOLICITUD_ALUMNO')
            and   name  = 'RELATIONSHIP_13_FK'
            and   indid > 0
            and   indid < 255)
   drop index SOLICITUD_ALUMNO.RELATIONSHIP_13_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SOLICITUD_ALUMNO')
            and   type = 'U')
   drop table SOLICITUD_ALUMNO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('SOLICITUD_COORDINADOR')
            and   name  = 'RELATIONSHIP_43_FK'
            and   indid > 0
            and   indid < 255)
   drop index SOLICITUD_COORDINADOR.RELATIONSHIP_43_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('SOLICITUD_COORDINADOR')
            and   name  = 'RELATIONSHIP_20_FK'
            and   indid > 0
            and   indid < 255)
   drop index SOLICITUD_COORDINADOR.RELATIONSHIP_20_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SOLICITUD_COORDINADOR')
            and   type = 'U')
   drop table SOLICITUD_COORDINADOR
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TIPO_PRACTICA')
            and   type = 'U')
   drop table TIPO_PRACTICA
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TUTORES_EMPRESA')
            and   name  = 'RELATIONSHIP_4_FK'
            and   indid > 0
            and   indid < 255)
   drop index TUTORES_EMPRESA.RELATIONSHIP_4_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TUTORES_EMPRESA')
            and   type = 'U')
   drop table TUTORES_EMPRESA
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('VISITA')
            and   name  = 'RELATIONSHIP_42_FK'
            and   indid > 0
            and   indid < 255)
   drop index VISITA.RELATIONSHIP_42_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('VISITA')
            and   name  = 'RELATIONSHIP_33_FK'
            and   indid > 0
            and   indid < 255)
   drop index VISITA.RELATIONSHIP_33_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('VISITA')
            and   type = 'U')
   drop table VISITA
go

/*==============================================================*/
/* Table: ALUMNOS                                               */
/*==============================================================*/
create table ALUMNOS (
   CED_ALU              varchar(10)          not null,
   ID_CAR               varchar(10)          null,
   NOM_ALU_1            varchar(50)          null,
   NOM_ALU_2            varchar(50)          null,
   APE_ALU_1            varchar(50)          null,
   APE_ALU_2            varchar(50)          null,
   TEL_ALU              varchar(10)          null,
   EMAIL_ALU            varchar(60)          null,
   CEL_ALU              varchar(10)          null,
   CRED_APROB           int                  null,
   GENERO               char(1)              null,
   constraint PK_ALUMNOS primary key nonclustered (CED_ALU)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_2_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_2_FK on ALUMNOS (
ID_CAR ASC
)
go

/*==============================================================*/
/* Table: AVAL_EMPRESA                                          */
/*==============================================================*/
create table AVAL_EMPRESA (
   ID_AVAL              int                  not null,
   CED_ALU              varchar(10)          null,
   RUC_EMP              varchar(13)          null,
   CED_DOCENTE          varchar(10)          null,
   ID_CARGO             char(3)              null,
   COD_TIP_PRAC         char(3)              null,
   DEP_ASIG             varchar(50)          null,
   FUNCION              varchar(1000)        null,
   HORARIO              varchar(100)         null,
   FECH_INI             datetime             null,
   FECH_FIN             datetime             null,
   constraint PK_AVAL_EMPRESA primary key nonclustered (ID_AVAL)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_40_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_40_FK on AVAL_EMPRESA (
CED_ALU ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_41_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_41_FK on AVAL_EMPRESA (
RUC_EMP ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_35_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_35_FK on AVAL_EMPRESA (
COD_TIP_PRAC ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_47_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_47_FK on AVAL_EMPRESA (
CED_DOCENTE ASC,
ID_CARGO ASC
)
go

/*==============================================================*/
/* Table: CARGOS_DOCENTES                                       */
/*==============================================================*/
create table CARGOS_DOCENTES (
   ID_CARGO             char(3)              not null,
   NOM_CARGO            varchar(25)          null,
   DES_CARGO            varchar(25)          null,
   constraint PK_CARGOS_DOCENTES primary key nonclustered (ID_CARGO)
)
go

/*==============================================================*/
/* Table: CARRERA                                               */
/*==============================================================*/
create table CARRERA (
   ID_CAR               varchar(10)          not null,
   ID_FAC               varchar(10)          null,
   NOM_CAR              varchar(60)          null,
   DES_CAR              varchar(150)         null,
   constraint PK_CARRERA primary key nonclustered (ID_CAR)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_1_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_1_FK on CARRERA (
ID_FAC ASC
)
go

/*==============================================================*/
/* Table: DATOS_INFORME_CULMINACION                             */
/*==============================================================*/
create table DATOS_INFORME_CULMINACION (
   NUM_INFO             int                  not null,
   ID_AVAL              int                  null,
   PRAC_FIN             char(1)              null,
   OBSERVACION          varchar(500)         null,
   constraint PK_DATOS_INFORME_CULMINACION primary key nonclustered (NUM_INFO)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_44_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_44_FK on DATOS_INFORME_CULMINACION (
ID_AVAL ASC
)
go

/*==============================================================*/
/* Table: DATOS_SOLICITUD_ALUMNO                                */
/*==============================================================*/
create table DATOS_SOLICITUD_ALUMNO (
   NUM_SOL_ALU          int                  not null,
   CED_ALU              varchar(10)          null,
   RUC_EMP              varchar(13)          null,
   CED_DOCENTE          varchar(10)          null,
   ID_CARGO             char(3)              null,
   FEC_SOL              datetime             null,
   constraint PK_DATOS_SOLICITUD_ALUMNO primary key nonclustered (NUM_SOL_ALU)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_10_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_10_FK on DATOS_SOLICITUD_ALUMNO (
CED_ALU ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_15_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_15_FK on DATOS_SOLICITUD_ALUMNO (
CED_DOCENTE ASC,
ID_CARGO ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_16_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_16_FK on DATOS_SOLICITUD_ALUMNO (
RUC_EMP ASC
)
go

/*==============================================================*/
/* Table: DATOS_SOLICITUD_COORDINADOR                           */
/*==============================================================*/
create table DATOS_SOLICITUD_COORDINADOR (
   NUM_SOL_COR          int                  not null,
   RUC_EMP              varchar(13)          null,
   CED_ALU              varchar(10)          null,
   CED_DOCENTE          varchar(10)          null,
   ID_CARGO             char(3)              null,
   FEC_SOL              datetime             null,
   constraint PK_DATOS_SOLICITUD_COORDINADOR primary key nonclustered (NUM_SOL_COR)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_17_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_17_FK on DATOS_SOLICITUD_COORDINADOR (
CED_DOCENTE ASC,
ID_CARGO ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_18_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_18_FK on DATOS_SOLICITUD_COORDINADOR (
RUC_EMP ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_19_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_19_FK on DATOS_SOLICITUD_COORDINADOR (
CED_ALU ASC
)
go

/*==============================================================*/
/* Table: DATOS_VISITA                                          */
/*==============================================================*/
create table DATOS_VISITA (
   NUM_VISITA           int                  not null,
   CED_ALU              varchar(10)          null,
   CED_TUTOR            varchar(10)          null,
   CED_DOCENTE          varchar(10)          null,
   ID_CARGO             char(3)              null,
   FEC_VISITA           datetime             null,
   constraint PK_DATOS_VISITA primary key nonclustered (NUM_VISITA)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_5_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_5_FK on DATOS_VISITA (
CED_DOCENTE ASC,
ID_CARGO ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_6_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_6_FK on DATOS_VISITA (
CED_ALU ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_7_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_7_FK on DATOS_VISITA (
CED_TUTOR ASC
)
go

/*==============================================================*/
/* Table: DOCENTES                                              */
/*==============================================================*/
create table DOCENTES (
   CED_DOCENTE          varchar(10)          not null,
   NOM_DOCENTE          varchar(25)          null,
   APE_DOCENTE          varchar(25)          null,
   constraint PK_DOCENTES primary key nonclustered (CED_DOCENTE)
)
go

/*==============================================================*/
/* Table: DOCENTES_PRACTICAS                                    */
/*==============================================================*/
create table DOCENTES_PRACTICAS (
   CED_DOCENTE          varchar(10)          not null,
   ID_CARGO             char(3)              not null,
   constraint PK_DOCENTES_PRACTICAS primary key nonclustered (CED_DOCENTE, ID_CARGO)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_46_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_46_FK on DOCENTES_PRACTICAS (
ID_CARGO ASC
)
go

/*==============================================================*/
/* Table: EMPRESAS                                              */
/*==============================================================*/
create table EMPRESAS (
   RUC_EMP              varchar(13)          not null,
   NOM_EMP              varchar(50)          null,
   TIP_EMP              varchar(50)          null,
   REP_EMP              varchar(50)          null,
   EMAIL_EMP            varchar(50)          null,
   TEL_EMP              varchar(10)          null,
   constraint PK_EMPRESAS primary key nonclustered (RUC_EMP)
)
go

/*==============================================================*/
/* Table: EVALUACIONES                                          */
/*==============================================================*/
create table EVALUACIONES (
   ID_EVAL              int                  not null,
   CED_TUTOR            varchar(10)          null,
   CED_DOCENTE          varchar(10)          null,
   ID_CARGO             char(3)              null,
   TIPO_EVAL            varchar(25)          null,
   constraint PK_EVALUACIONES primary key nonclustered (ID_EVAL)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_37_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_37_FK on EVALUACIONES (
CED_TUTOR ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_38_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_38_FK on EVALUACIONES (
CED_DOCENTE ASC,
ID_CARGO ASC
)
go

/*==============================================================*/
/* Table: FACULTAD                                              */
/*==============================================================*/
create table FACULTAD (
   ID_FAC               varchar(10)          not null,
   NOM_FAC              varchar(60)          null,
   DES_FAC              varchar(150)         null,
   constraint PK_FACULTAD primary key nonclustered (ID_FAC)
)
go

/*==============================================================*/
/* Table: FUNCIONES_PERFIL                                      */
/*==============================================================*/
create table FUNCIONES_PERFIL (
   ID_FUN               int                  not null,
   ID_CAR               varchar(10)          null,
   NOM_FUN              varchar(50)          null,
   constraint PK_FUNCIONES_PERFIL primary key nonclustered (ID_FUN)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_29_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_29_FK on FUNCIONES_PERFIL (
ID_CAR ASC
)
go

/*==============================================================*/
/* Table: FUNCION_VISITA                                        */
/*==============================================================*/
create table FUNCION_VISITA (
   NUM_VISITA           int                  null,
   ID_FUN               int                  null,
   VALOR_FUN            bit                  null
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_8_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_8_FK on FUNCION_VISITA (
NUM_VISITA ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_30_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_30_FK on FUNCION_VISITA (
ID_FUN ASC
)
go

/*==============================================================*/
/* Table: INFORME_APROBACION                                    */
/*==============================================================*/
create table INFORME_APROBACION (
   ID_INF_APROB         int                  not null,
   NUM_INFO             int                  null,
   RESOL                varchar(50)          null,
   FEC_APROB            datetime             null,
   constraint PK_INFORME_APROBACION primary key nonclustered (ID_INF_APROB)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_48_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_48_FK on INFORME_APROBACION (
NUM_INFO ASC
)
go

/*==============================================================*/
/* Table: INFORME_CULMINACION                                   */
/*==============================================================*/
create table INFORME_CULMINACION (
   NUM_INFO             int                  null,
   COD_PER              varchar(20)          null,
   ID_PARAM             varchar(25)          null,
   VALOR_PARAM          varchar(50)          null
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_24_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_24_FK on INFORME_CULMINACION (
NUM_INFO ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_39_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_39_FK on INFORME_CULMINACION (
ID_PARAM ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_45_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_45_FK on INFORME_CULMINACION (
COD_PER ASC
)
go

/*==============================================================*/
/* Table: PARAM_CULMINACION                                     */
/*==============================================================*/
create table PARAM_CULMINACION (
   ID_PARAM             varchar(25)          not null,
   DES_PARAM            varchar(50)          null,
   constraint PK_PARAM_CULMINACION primary key nonclustered (ID_PARAM)
)
go

/*==============================================================*/
/* Table: PARAM_SOL_ALUMNO                                      */
/*==============================================================*/
create table PARAM_SOL_ALUMNO (
   ID_PARAM             varchar(25)          not null,
   DES_PARAM            varchar(50)          null,
   constraint PK_PARAM_SOL_ALUMNO primary key nonclustered (ID_PARAM)
)
go

/*==============================================================*/
/* Table: PARAM_SOL_COORDINADOR                                 */
/*==============================================================*/
create table PARAM_SOL_COORDINADOR (
   ID_PARAM             varchar(25)          not null,
   DES_PARAM            varchar(50)          null,
   constraint PK_PARAM_SOL_COORDINADOR primary key nonclustered (ID_PARAM)
)
go

/*==============================================================*/
/* Table: PARAM_VISITA                                          */
/*==============================================================*/
create table PARAM_VISITA (
   ID_PARAM             varchar(25)          not null,
   DES_PARAM            varchar(50)          null,
   constraint PK_PARAM_VISITA primary key nonclustered (ID_PARAM)
)
go

/*==============================================================*/
/* Table: PERIODO_ACAD                                          */
/*==============================================================*/
create table PERIODO_ACAD (
   COD_PER              varchar(20)          not null,
   DES_PER              varchar(50)          null,
   constraint PK_PERIODO_ACAD primary key nonclustered (COD_PER)
)
go

/*==============================================================*/
/* Table: PREGUNTAS                                             */
/*==============================================================*/
create table PREGUNTAS (
   ID_PREGUNTA          int                  not null,
   ASPECTOS             varchar(50)          null,
   PREGUNTA             varchar(100)         null,
   constraint PK_PREGUNTAS primary key nonclustered (ID_PREGUNTA)
)
go

/*==============================================================*/
/* Table: RESPUESTAS                                            */
/*==============================================================*/
create table RESPUESTAS (
   ID_PREGUNTA          int                  not null,
   ID_EVAL              int                  null,
   RESPUESTA            int                  null,
   constraint PK_RESPUESTAS primary key nonclustered (ID_PREGUNTA)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_34_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_34_FK on RESPUESTAS (
ID_EVAL ASC
)
go

/*==============================================================*/
/* Table: SOLICITUD_ALUMNO                                      */
/*==============================================================*/
create table SOLICITUD_ALUMNO (
   NUM_SOL_ALU          int                  null,
   ID_PARAM             varchar(25)          null,
   VALOR_PARAM          varchar(50)          null
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_13_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_13_FK on SOLICITUD_ALUMNO (
NUM_SOL_ALU ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_14_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_14_FK on SOLICITUD_ALUMNO (
ID_PARAM ASC
)
go

/*==============================================================*/
/* Table: SOLICITUD_COORDINADOR                                 */
/*==============================================================*/
create table SOLICITUD_COORDINADOR (
   NUM_SOL_COR          int                  null,
   ID_PARAM             varchar(25)          null,
   VALOR_PARAM          varchar(50)          null
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_20_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_20_FK on SOLICITUD_COORDINADOR (
NUM_SOL_COR ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_43_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_43_FK on SOLICITUD_COORDINADOR (
ID_PARAM ASC
)
go

/*==============================================================*/
/* Table: TIPO_PRACTICA                                         */
/*==============================================================*/
create table TIPO_PRACTICA (
   COD_TIP_PRAC         char(3)              not null,
   NOMBRE_PRAC          varchar(50)          null,
   DES_PRAC             varchar(50)          null,
   HORAS_MIN            int                  null,
   CRED_MIN             int                  null,
   constraint PK_TIPO_PRACTICA primary key nonclustered (COD_TIP_PRAC)
)
go

/*==============================================================*/
/* Table: TUTORES_EMPRESA                                       */
/*==============================================================*/
create table TUTORES_EMPRESA (
   CED_TUTOR            varchar(10)          not null,
   RUC_EMP              varchar(13)          null,
   NOM_TUTOR            varchar(25)          null,
   APE_TUTOR            varchar(25)          null,
   TIT_TUTOR            varchar(25)          null,
   CAR_TUTOR            varchar(50)          null,
   CEL_TUTOR            varchar(10)          null,
   EMAIL_TUTOR          varchar(60)          null,
   constraint PK_TUTORES_EMPRESA primary key nonclustered (CED_TUTOR)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_4_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_4_FK on TUTORES_EMPRESA (
RUC_EMP ASC
)
go

/*==============================================================*/
/* Table: VISITA                                                */
/*==============================================================*/
create table VISITA (
   NUM_VISITA           int                  not null,
   ID_PARAM             varchar(25)          null,
   VALOR_PARAM          varchar(25)          null
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_33_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_33_FK on VISITA (
NUM_VISITA ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_42_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_42_FK on VISITA (
ID_PARAM ASC
)
go

alter table ALUMNOS
   add constraint FK_ALUMNOS_RELATIONS_CARRERA foreign key (ID_CAR)
      references CARRERA (ID_CAR)
go

alter table AVAL_EMPRESA
   add constraint FK_AVAL_EMP_RELATIONS_TIPO_PRA foreign key (COD_TIP_PRAC)
      references TIPO_PRACTICA (COD_TIP_PRAC)
go

alter table AVAL_EMPRESA
   add constraint FK_AVAL_EMP_RELATIONS_ALUMNOS foreign key (CED_ALU)
      references ALUMNOS (CED_ALU)
go

alter table AVAL_EMPRESA
   add constraint FK_AVAL_EMP_RELATIONS_EMPRESAS foreign key (RUC_EMP)
      references EMPRESAS (RUC_EMP)
go

alter table AVAL_EMPRESA
   add constraint FK_AVAL_EMP_RELATIONS_DOCENTES foreign key (CED_DOCENTE, ID_CARGO)
      references DOCENTES_PRACTICAS (CED_DOCENTE, ID_CARGO)
go

alter table CARRERA
   add constraint FK_CARRERA_RELATIONS_FACULTAD foreign key (ID_FAC)
      references FACULTAD (ID_FAC)
go

alter table DATOS_INFORME_CULMINACION
   add constraint FK_DATOS_IN_RELATIONS_AVAL_EMP foreign key (ID_AVAL)
      references AVAL_EMPRESA (ID_AVAL)
go

alter table DATOS_SOLICITUD_ALUMNO
   add constraint FK_DATOS_ALU foreign key (CED_ALU)
      references ALUMNOS (CED_ALU)
go

alter table DATOS_SOLICITUD_ALUMNO
   add constraint FK_DATOS_DOC foreign key (CED_DOCENTE, ID_CARGO)
      references DOCENTES_PRACTICAS (CED_DOCENTE, ID_CARGO)
go

alter table DATOS_SOLICITUD_ALUMNO
   add constraint FK_DATOS_EMP foreign key (RUC_EMP)
      references EMPRESAS (RUC_EMP)
go

alter table DATOS_SOLICITUD_COORDINADOR
   add constraint FK_DATOS_PRAC foreign key (CED_DOCENTE, ID_CARGO)
      references DOCENTES_PRACTICAS (CED_DOCENTE, ID_CARGO)
go

alter table DATOS_SOLICITUD_COORDINADOR
   add constraint FK_DATOS_SO_EMP foreign key (RUC_EMP)
      references EMPRESAS (RUC_EMP)
go

alter table DATOS_SOLICITUD_COORDINADOR
   add constraint FK_DATOS_SO_ALU foreign key (CED_ALU)
      references ALUMNOS (CED_ALU)
go

alter table DATOS_VISITA
   add constraint FK_DATOS_VI_RELATIONS_DOCENTES foreign key (CED_DOCENTE, ID_CARGO)
      references DOCENTES_PRACTICAS (CED_DOCENTE, ID_CARGO)
go

alter table DATOS_VISITA
   add constraint FK_DATOS_VI_RELATIONS_ALUMNOS foreign key (CED_ALU)
      references ALUMNOS (CED_ALU)
go

alter table DATOS_VISITA
   add constraint FK_DATOS_VI_RELATIONS_TUTORES_ foreign key (CED_TUTOR)
      references TUTORES_EMPRESA (CED_TUTOR)
go

alter table DOCENTES_PRACTICAS
   add constraint FK_DOCENTES_RELATIONS_DOCENTES foreign key (CED_DOCENTE)
      references DOCENTES (CED_DOCENTE)
go

alter table DOCENTES_PRACTICAS
   add constraint FK_DOCENTES_RELATIONS_CARGOS_D foreign key (ID_CARGO)
      references CARGOS_DOCENTES (ID_CARGO)
go

alter table EVALUACIONES
   add constraint FK_EVALUACI_RELATIONS_TUTORES_ foreign key (CED_TUTOR)
      references TUTORES_EMPRESA (CED_TUTOR)
go

alter table EVALUACIONES
   add constraint FK_EVALUACI_RELATIONS_DOCENTES foreign key (CED_DOCENTE, ID_CARGO)
      references DOCENTES_PRACTICAS (CED_DOCENTE, ID_CARGO)
go

alter table FUNCIONES_PERFIL
   add constraint FK_FUNCIONE_RELATIONS_CARRERA foreign key (ID_CAR)
      references CARRERA (ID_CAR)
go

alter table FUNCION_VISITA
   add constraint FK_FUNCION__RELATIONS_FUNCIONE foreign key (ID_FUN)
      references FUNCIONES_PERFIL (ID_FUN)
go

alter table FUNCION_VISITA
   add constraint FK_FUNCION__RELATIONS_DATOS_VI foreign key (NUM_VISITA)
      references DATOS_VISITA (NUM_VISITA)
go

alter table INFORME_APROBACION
   add constraint FK_INFORME_DAT_CUL foreign key (NUM_INFO)
      references DATOS_INFORME_CULMINACION (NUM_INFO)
go

alter table INFORME_CULMINACION
   add constraint FK_INFORME_CUL_DAT foreign key (NUM_INFO)
      references DATOS_INFORME_CULMINACION (NUM_INFO)
go

alter table INFORME_CULMINACION
   add constraint FK_INFORME__RELATIONS_PARAM_CU foreign key (ID_PARAM)
      references PARAM_CULMINACION (ID_PARAM)
go

alter table INFORME_CULMINACION
   add constraint FK_INFORME__RELATIONS_PERIODO_ foreign key (COD_PER)
      references PERIODO_ACAD (COD_PER)
go

alter table RESPUESTAS
   add constraint FK_RESPUEST_RELATIONS_EVALUACI foreign key (ID_EVAL)
      references EVALUACIONES (ID_EVAL)
go

alter table RESPUESTAS
   add constraint FK_RESPUEST_RELATIONS_PREGUNTA foreign key (ID_PREGUNTA)
      references PREGUNTAS (ID_PREGUNTA)
go

alter table SOLICITUD_ALUMNO
   add constraint FK_SOL_DATOS foreign key (NUM_SOL_ALU)
      references DATOS_SOLICITUD_ALUMNO (NUM_SOL_ALU)
go

alter table SOLICITUD_ALUMNO
   add constraint FK_SOL_PARAM foreign key (ID_PARAM)
      references PARAM_SOL_ALUMNO (ID_PARAM)
go

alter table SOLICITUD_COORDINADOR
   add constraint FK_SOLICITU_RELATIONS_DATOS_SO foreign key (NUM_SOL_COR)
      references DATOS_SOLICITUD_COORDINADOR (NUM_SOL_COR)
go

alter table SOLICITUD_COORDINADOR
   add constraint FK_SOL_COOR foreign key (ID_PARAM)
      references PARAM_SOL_COORDINADOR (ID_PARAM)
go

alter table TUTORES_EMPRESA
   add constraint FK_TUTORES__RELATIONS_EMPRESAS foreign key (RUC_EMP)
      references EMPRESAS (RUC_EMP)
go

alter table VISITA
   add constraint FK_VISITA_RELATIONS_DATOS_VI foreign key (NUM_VISITA)
      references DATOS_VISITA (NUM_VISITA)
go

alter table VISITA
   add constraint FK_VISITA_RELATIONS_PARAM_VI foreign key (ID_PARAM)
      references PARAM_VISITA (ID_PARAM)
go



-- ===================================================================================================================
-- Author:		<FISEI, SISTEMAS>
-- Create date: <04/01/2011>
-- Description:	<Selecciona el registro de la tabla alumnos
-- ===================================================================================================================

CREATE PROCEDURE p_select_alumnos_por_primarykey(@CED_ALU varchar(10))
AS
BEGIN	
	SELECT * from ALUMNOS
	WHERE CED_ALU = @CED_ALU
END

GO


CREATE PROCEDURE p_select_alumnos
AS
BEGIN	
	SELECT * from ALUMNOS
	
END

GO