/*==============================================================*/
/* DBMS name:      ORACLE Version 12c                           */
/* Created on:     31/07/2022 6:43:41 p.�m.                     */
/*==============================================================*/


alter table ASISMIEMBROEQUIPO
   drop constraint FK_ASISMIEM_ASISMIEMB_PROGRAMA;

alter table ASISMIEMBROEQUIPO
   drop constraint FK_ASISMIEM_MIEMBROEQ_MIEMBROE;

alter table ASISTENRESPONSABLE
   drop constraint FK_ASISTENR_ASISTENRE_RESPONSA;

alter table DEPORTE_TIPOELEMENTO
   drop constraint FK_DEPORTE__DEPORTE_T_TIPOELEM;

alter table DEPORTE_TIPOELEMENTO
   drop constraint FK_DEPORTE__DEPORTE_T_DEPORTE;

alter table ELEMENDEPORTIVO
   drop constraint FK_ELEMENDE_ESPACIO___ESPACIO;

alter table ELEMENDEPORTIVO
   drop constraint FK_ELEMENDE_ESTADO_EL_ESTADO;

alter table ELEMENDEPORTIVO
   drop constraint FK_ELEMENDE_MARCA_ELE_MARCA;

alter table ELEMENDEPORTIVO
   drop constraint FK_ELEMENDE_TIPOELEME_TIPOELEM;

alter table EMPLEADO_CARGO
   drop constraint FK_EMPLEADO_CARGO_EMP_CARGO;

alter table EMPLEADO_CARGO
   drop constraint FK_EMPLEADO_EMPLEADO__EMPLEADO;

alter table EMPLEADO_CARGO
   drop constraint FK_EMPLEADO_ESPACIO_E_ESPACIO;

alter table EQUIPO
   drop constraint FK_EQUIPO_DEPORTE___DEPORTE;

alter table EQUIPO
   drop constraint FK_EQUIPO_EMPLEADO__EMPLEADO;

alter table ESPACIO
   drop constraint FK_ESPACIO_ESPACIO___ESPACIO;

alter table ESPACIO
   drop constraint FK_ESPACIO_TIPOESPA__TIPOESPA;

alter table ESPACIO___DEPORTE
   drop constraint FK_ESPACIO__ESPACIO___DEPORTE;

alter table ESPACIO___DEPORTE
   drop constraint FK_ESPACIO__ESPACIO___ESPACIO;

alter table ESTUDIANTE
   drop constraint FK_ESTUDIAN_ESPACIO_E_ESPACIO;

alter table INSCRITOPRACLIBRE
   drop constraint FK_INSCRITO_EMPLEADO__EMPLEADO;

alter table INSCRITOPRACLIBRE
   drop constraint FK_INSCRITO_ESTUDANTE_ESTUDIAN;

alter table INSCRITOPRACLIBRE
   drop constraint FK_INSCRITO_INSCRITOP_PROGRAMA;

alter table MIEMBROEQUIPO
   drop constraint FK_MIEMBROE_ESTUDIANT_ESTUDIAN;

alter table MIEMBROEQUIPO
   drop constraint FK_MIEMBROE_MIEMBROEQ_EQUIPO;

alter table PRESTAMO
   drop constraint FK_PRESTAMO_ASISTRESP_ASISTENR;

alter table PRESTAMO
   drop constraint FK_PRESTAMO_ELEMENTO__ELEMENDE;

alter table PROGRAMACION
   drop constraint FK_PROGRAMA_ACTIVIDAD_ACTIVIDA;

alter table PROGRAMACION
   drop constraint FK_PROGRAMA_DEPORTE___DEPORTE;

alter table PROGRAMACION
   drop constraint FK_PROGRAMA_DIA_PROGR_DIA;

alter table PROGRAMACION
   drop constraint FK_PROGRAMA_ESPACIO_P_ESPACIO;

alter table PROGRAMACION
   drop constraint FK_PROGRAMA_HORA_FIN_HORA;

alter table PROGRAMACION
   drop constraint FK_PROGRAMA_HORA_INIC_HORA;

alter table PROGRAMACION
   drop constraint FK_PROGRAMA_PERIODO_P_PERIODO;

alter table RESPONSABLE
   drop constraint FK_RESPONSA_EMPLEADO__EMPLEADO;

alter table RESPONSABLE
   drop constraint FK_RESPONSA_ESTUDIANT_ESTUDIAN;

alter table RESPONSABLE
   drop constraint FK_RESPONSA_RESPONSAB_PROGRAMA;

alter table RESPONSABLE
   drop constraint FK_RESPONSA_ROL_RESPO_ROL;

drop table ACTIVIDAD cascade constraints;

drop index ASISMIEMBRO_PROGRAMACION_FK;

drop index MIEMBROEQUI_ASISMIEMB_FK;

drop table ASISMIEMBROEQUIPO cascade constraints;

drop index ASISTENRES_RESPONSABLE_FK;

drop table ASISTENRESPONSABLE cascade constraints;

drop table CARGO cascade constraints;

drop table DEPORTE cascade constraints;

drop index DEPORTE_TIPOELEMENTO_FK;

drop index DEPORTE_TIPOELEMENTO2_FK;

drop table DEPORTE_TIPOELEMENTO cascade constraints;

drop table DIA cascade constraints;

drop index ESPACIO___ELEMENTO_FK;

drop index MARCA_ELEMENTO_FK;

drop index TIPOELEMENTO_ELEMENTO_FK;

drop index ESTADO_ELEMENTO_FK;

drop table ELEMENDEPORTIVO cascade constraints;

drop table EMPLEADO cascade constraints;

drop index ESPACIO_EMPLCARGO_FK;

drop index EMPLEADO_EMPCARGO_FK;

drop index CARGO_EMPLCARGO_FK;

drop table EMPLEADO_CARGO cascade constraints;

drop index EMPLEADO_EQUIPO_FK;

drop index DEPORTE___EQUIPO_FK;

drop table EQUIPO cascade constraints;

drop index TIPOESPA___ESPACIO_FK;

drop index ESPACIO___ESPACIO_FK;

drop table ESPACIO cascade constraints;

drop index ESPACIO___DEPORTE_FK;

drop index ESPACIO___DEPORTE2_FK;

drop table ESPACIO___DEPORTE cascade constraints;

drop table ESTADO cascade constraints;

drop index ESPACIO_ESTUDIANTE_FK;

drop table ESTUDIANTE cascade constraints;

drop table HORA cascade constraints;

drop index INSCRPRAC_PROG_FK;

drop index EMPLEADO_INSCRITOPRAC_FK;

drop index ESTUDANTE_INSCRITOPRAC_FK;

drop table INSCRITOPRACLIBRE cascade constraints;

drop table MARCA cascade constraints;

drop index MIEMBROEQUIPO_EQUIPO_FK;

drop index ESTUDIANTE_MIEMBROEQUIPO_FK;

drop table MIEMBROEQUIPO cascade constraints;

drop table PERIODO cascade constraints;

drop index ASISTRESP___PRESTAMO_FK;

drop index ELEMENTO_PRESTAMO_FK;

drop table PRESTAMO cascade constraints;

drop index HORA_INICIO_FK;

drop index HORA_FIN_FK;

drop index DIA_PROGRAMACION_FK;

drop index ESPACIO_PROGRAMACION_FK;

drop index DEPORTE___PROGRAMACION_FK;

drop index ACTIVIDAD___PROGRAMACION_FK;

drop index PERIODO_PROGRAMACION_FK;

drop table PROGRAMACION cascade constraints;

drop index RESPONSABLE_PROGRAMACION_FK;

drop index ESTUDIANTE_RESPONSABLE_FK;

drop index EMPLEADO_RESPONSABLE_FK;

drop index ROL_RESPONSABLE_FK;

drop table RESPONSABLE cascade constraints;

drop table ROL cascade constraints;

drop table TIPOELEMENTO cascade constraints;

drop table TIPOESPACIO cascade constraints;

/*==============================================================*/
/* Table: ACTIVIDAD                                             */
/*==============================================================*/
create table ACTIVIDAD (
   IDACTIVIDAD          VARCHAR2(2)           not null,
   DESCACTIVIDAD        VARCHAR2(30)          not null,
   constraint PK_ACTIVIDAD primary key (IDACTIVIDAD)
);

/*==============================================================*/
/* Table: ASISMIEMBROEQUIPO                                     */
/*==============================================================*/
create table ASISMIEMBROEQUIPO (
   CONSECPROGRAMACION   NUMBER(4,0)           not null,
   CONMIEMBROEQUIPO     NUMBER(4,0)           not null,
   CONSEEQUIPO          NUMBER(3,0)           not null,
   ITEMMIEMBRO          NUMBER(3,0)           not null,
   constraint PK_ASISMIEMBROEQUIPO primary key (CONSECPROGRAMACION, CONMIEMBROEQUIPO)
);

/*==============================================================*/
/* Index: MIEMBROEQUI_ASISMIEMB_FK                              */
/*==============================================================*/
create index MIEMBROEQUI_ASISMIEMB_FK on ASISMIEMBROEQUIPO (
   CONSEEQUIPO ASC,
   ITEMMIEMBRO ASC
);

/*==============================================================*/
/* Index: ASISMIEMBRO_PROGRAMACION_FK                           */
/*==============================================================*/
create index ASISMIEMBRO_PROGRAMACION_FK on ASISMIEMBROEQUIPO (
   CONSECPROGRAMACION ASC
);

/*==============================================================*/
/* Table: ASISTENRESPONSABLE                                    */
/*==============================================================*/
create table ASISTENRESPONSABLE (
   CONSECPROGRAMACION   NUMBER(4,0)           not null,
   CONCECRES            NUMBER(4,0)           not null,
   CONSECASISRES        NUMBER(4,0)           not null,
   FECHAASISRES         DATE                  not null,
   HORAASISRES          DATE                  not null,
   constraint PK_ASISTENRESPONSABLE primary key (CONSECPROGRAMACION, CONCECRES, CONSECASISRES)
);

/*==============================================================*/
/* Index: ASISTENRES_RESPONSABLE_FK                             */
/*==============================================================*/
create index ASISTENRES_RESPONSABLE_FK on ASISTENRESPONSABLE (
   CONSECPROGRAMACION ASC,
   CONCECRES ASC
);

/*==============================================================*/
/* Table: CARGO                                                 */
/*==============================================================*/
create table CARGO (
   IDCARGO              VARCHAR2(2)           not null,
   DESCARGO             VARCHAR2(25)          not null,
   constraint PK_CARGO primary key (IDCARGO)
);

/*==============================================================*/
/* Table: DEPORTE                                               */
/*==============================================================*/
create table DEPORTE (
   IDDEPORTE            VARCHAR2(2)           not null,
   NOMDEPORTE           VARCHAR2(20)          not null,
   constraint PK_DEPORTE primary key (IDDEPORTE)
);

/*==============================================================*/
/* Table: DEPORTE_TIPOELEMENTO                                  */
/*==============================================================*/
create table DEPORTE_TIPOELEMENTO (
   IDTIPOELEMENTO       VARCHAR2(2)           not null,
   IDDEPORTE            VARCHAR2(2)           not null,
   constraint PK_DEPORTE_TIPOELEMENTO primary key (IDTIPOELEMENTO, IDDEPORTE)
);

/*==============================================================*/
/* Index: DEPORTE_TIPOELEMENTO2_FK                              */
/*==============================================================*/
create index DEPORTE_TIPOELEMENTO2_FK on DEPORTE_TIPOELEMENTO (
   IDDEPORTE ASC
);

/*==============================================================*/
/* Index: DEPORTE_TIPOELEMENTO_FK                               */
/*==============================================================*/
create index DEPORTE_TIPOELEMENTO_FK on DEPORTE_TIPOELEMENTO (
   IDTIPOELEMENTO ASC
);

/*==============================================================*/
/* Table: DIA                                                   */
/*==============================================================*/
create table DIA (
   IDDIA                VARCHAR2(1)           not null,
   NOMDIA               VARCHAR2(10)          not null,
   constraint PK_DIA primary key (IDDIA)
);

/*==============================================================*/
/* Table: ELEMENDEPORTIVO                                       */
/*==============================================================*/
create table ELEMENDEPORTIVO (
   CONSECELEMENTO       NUMBER(5,0)           not null,
   IDESTADO             VARCHAR2(2)           not null,
   IDTIPOELEMENTO       VARCHAR2(2)           not null,
   IDMARCA              VARCHAR2(2)           not null,
   CODESPACIO           VARCHAR2(2)           not null,
   FECHAREGISTRO        DATE                  not null,
   constraint PK_ELEMENDEPORTIVO primary key (CONSECELEMENTO)
);

/*==============================================================*/
/* Index: ESTADO_ELEMENTO_FK                                    */
/*==============================================================*/
create index ESTADO_ELEMENTO_FK on ELEMENDEPORTIVO (
   IDESTADO ASC
);

/*==============================================================*/
/* Index: TIPOELEMENTO_ELEMENTO_FK                              */
/*==============================================================*/
create index TIPOELEMENTO_ELEMENTO_FK on ELEMENDEPORTIVO (
   IDTIPOELEMENTO ASC
);

/*==============================================================*/
/* Index: MARCA_ELEMENTO_FK                                     */
/*==============================================================*/
create index MARCA_ELEMENTO_FK on ELEMENDEPORTIVO (
   IDMARCA ASC
);

/*==============================================================*/
/* Index: ESPACIO___ELEMENTO_FK                                 */
/*==============================================================*/
create index ESPACIO___ELEMENTO_FK on ELEMENDEPORTIVO (
   CODESPACIO ASC
);

/*==============================================================*/
/* Table: EMPLEADO                                              */
/*==============================================================*/
create table EMPLEADO (
   CODEMPLEADO          VARCHAR2(4)           not null,
   NOMEMPLEADO          VARCHAR2(20)          not null,
   APELEMPLEADO         VARCHAR2(20)          not null,
   FECHAREGISTRO        DATE                  not null,
   CORREOUD             VARCHAR2(30)          not null,
   constraint PK_EMPLEADO primary key (CODEMPLEADO)
);

/*==============================================================*/
/* Table: EMPLEADO_CARGO                                        */
/*==============================================================*/
create table EMPLEADO_CARGO (
   CONSEC               NUMBER(3,0)           not null,
   IDCARGO              VARCHAR2(2)           not null,
   CODEMPLEADO          VARCHAR2(4)           not null,
   CODESPACIO           VARCHAR2(2)           not null,
   FECHACARGO           DATE                  not null,
   FECHAFINALCAR        DATE,
   constraint PK_EMPLEADO_CARGO primary key (CONSEC)
);

/*==============================================================*/
/* Index: CARGO_EMPLCARGO_FK                                    */
/*==============================================================*/
create index CARGO_EMPLCARGO_FK on EMPLEADO_CARGO (
   IDCARGO ASC
);

/*==============================================================*/
/* Index: EMPLEADO_EMPCARGO_FK                                  */
/*==============================================================*/
create index EMPLEADO_EMPCARGO_FK on EMPLEADO_CARGO (
   CODEMPLEADO ASC
);

/*==============================================================*/
/* Index: ESPACIO_EMPLCARGO_FK                                  */
/*==============================================================*/
create index ESPACIO_EMPLCARGO_FK on EMPLEADO_CARGO (
   CODESPACIO ASC
);

/*==============================================================*/
/* Table: EQUIPO                                                */
/*==============================================================*/
create table EQUIPO (
   CONSEEQUIPO          NUMBER(3,0)           not null,
   IDDEPORTE            VARCHAR2(2)           not null,
   CODEMPLEADO          VARCHAR2(4)           not null,
   FECHARESOL           DATE                  not null,
   constraint PK_EQUIPO primary key (CONSEEQUIPO)
);

/*==============================================================*/
/* Index: DEPORTE___EQUIPO_FK                                   */
/*==============================================================*/
create index DEPORTE___EQUIPO_FK on EQUIPO (
   IDDEPORTE ASC
);

/*==============================================================*/
/* Index: EMPLEADO_EQUIPO_FK                                    */
/*==============================================================*/
create index EMPLEADO_EQUIPO_FK on EQUIPO (
   CODEMPLEADO ASC
);

/*==============================================================*/
/* Table: ESPACIO                                               */
/*==============================================================*/
create table ESPACIO (
   CODESPACIO           VARCHAR2(2)           not null,
   ESP_CODESPACIO       VARCHAR2(2),
   IDTIPOESPACIO        VARCHAR2(2)           not null,
   NOMESPACIO           VARCHAR2(30)          not null,
   constraint PK_ESPACIO primary key (CODESPACIO)
);

/*==============================================================*/
/* Index: ESPACIO___ESPACIO_FK                                  */
/*==============================================================*/
create index ESPACIO___ESPACIO_FK on ESPACIO (
   ESP_CODESPACIO ASC
);

/*==============================================================*/
/* Index: TIPOESPA___ESPACIO_FK                                 */
/*==============================================================*/
create index TIPOESPA___ESPACIO_FK on ESPACIO (
   IDTIPOESPACIO ASC
);

/*==============================================================*/
/* Table: ESPACIO___DEPORTE                                     */
/*==============================================================*/
create table ESPACIO___DEPORTE (
   IDDEPORTE            VARCHAR2(2)           not null,
   CODESPACIO           VARCHAR2(2)           not null,
   constraint PK_ESPACIO___DEPORTE primary key (IDDEPORTE, CODESPACIO)
);

/*==============================================================*/
/* Index: ESPACIO___DEPORTE2_FK                                 */
/*==============================================================*/
create index ESPACIO___DEPORTE2_FK on ESPACIO___DEPORTE (
   CODESPACIO ASC
);

/*==============================================================*/
/* Index: ESPACIO___DEPORTE_FK                                  */
/*==============================================================*/
create index ESPACIO___DEPORTE_FK on ESPACIO___DEPORTE (
   IDDEPORTE ASC
);

/*==============================================================*/
/* Table: ESTADO                                                */
/*==============================================================*/
create table ESTADO (
   IDESTADO             VARCHAR2(2)           not null,
   DESCESTADO           VARCHAR2(20)          not null,
   constraint PK_ESTADO primary key (IDESTADO)
);

/*==============================================================*/
/* Table: ESTUDIANTE                                            */
/*==============================================================*/
create table ESTUDIANTE (
   CODESTUDIANTE        VARCHAR2(12)          not null,
   CODESPACIO           VARCHAR2(2)           not null,
   NOMESTUDIANTE        VARCHAR2(30)          not null,
   APELESTUDIANTE       VARCHAR2(30)          not null,
   FECHAREGESTUDIANTE   DATE                  not null,
   CORREOUDESTUDIANTE   VARCHAR2(30)          not null,
   FECHANACESTUDIANTE   DATE                  not null,
   constraint PK_ESTUDIANTE primary key (CODESTUDIANTE)
);

/*==============================================================*/
/* Index: ESPACIO_ESTUDIANTE_FK                                 */
/*==============================================================*/
create index ESPACIO_ESTUDIANTE_FK on ESTUDIANTE (
   CODESPACIO ASC
);

/*==============================================================*/
/* Table: HORA                                                  */
/*==============================================================*/
create table HORA (
   IDHORA               VARCHAR2(5)           not null,
   constraint PK_HORA primary key (IDHORA)
);

/*==============================================================*/
/* Table: INSCRITOPRACLIBRE                                     */
/*==============================================================*/
create table INSCRITOPRACLIBRE (
   CONSECPROGRAMACION   NUMBER(4,0)           not null,
   CONSECPRACT          NUMBER(4)             not null,
   CODESTUDIANTE        VARCHAR2(12),
   CODEMPLEADO          VARCHAR2(4),
   constraint PK_INSCRITOPRACLIBRE primary key (CONSECPROGRAMACION, CONSECPRACT)
);

/*==============================================================*/
/* Index: ESTUDANTE_INSCRITOPRAC_FK                             */
/*==============================================================*/
create index ESTUDANTE_INSCRITOPRAC_FK on INSCRITOPRACLIBRE (
   CODESTUDIANTE ASC
);

/*==============================================================*/
/* Index: EMPLEADO_INSCRITOPRAC_FK                              */
/*==============================================================*/
create index EMPLEADO_INSCRITOPRAC_FK on INSCRITOPRACLIBRE (
   CODEMPLEADO ASC
);

/*==============================================================*/
/* Index: INSCRPRAC_PROG_FK                                     */
/*==============================================================*/
create index INSCRPRAC_PROG_FK on INSCRITOPRACLIBRE (
   CONSECPROGRAMACION ASC
);

/*==============================================================*/
/* Table: MARCA                                                 */
/*==============================================================*/
create table MARCA (
   IDMARCA              VARCHAR2(3)           not null,
   NOMMARCA             VARCHAR2(20)          not null,
   constraint PK_MARCA primary key (IDMARCA)
);

/*==============================================================*/
/* Table: MIEMBROEQUIPO                                         */
/*==============================================================*/
create table MIEMBROEQUIPO (
   CONSEEQUIPO          NUMBER(3,0)           not null,
   ITEMMIEMBRO          NUMBER(3,0)           not null,
   CODESTUDIANTE        VARCHAR2(12)          not null,
   constraint PK_MIEMBROEQUIPO primary key (CONSEEQUIPO, ITEMMIEMBRO)
);

/*==============================================================*/
/* Index: ESTUDIANTE_MIEMBROEQUIPO_FK                           */
/*==============================================================*/
create index ESTUDIANTE_MIEMBROEQUIPO_FK on MIEMBROEQUIPO (
   CODESTUDIANTE ASC
);

/*==============================================================*/
/* Index: MIEMBROEQUIPO_EQUIPO_FK                               */
/*==============================================================*/
create index MIEMBROEQUIPO_EQUIPO_FK on MIEMBROEQUIPO (
   CONSEEQUIPO ASC
);

/*==============================================================*/
/* Table: PERIODO                                               */
/*==============================================================*/
create table PERIODO (
   IDPERIODO            VARCHAR2(5)           not null,
   constraint PK_PERIODO primary key (IDPERIODO)
);

/*==============================================================*/
/* Table: PRESTAMO                                              */
/*==============================================================*/
create table PRESTAMO (
   CONSECPRESTAMO       NUMBER(4,0)           not null,
   CONSECELEMENTO       NUMBER(5,0)           not null,
   CONSECPROGRAMACION   NUMBER(4,0)           not null,
   CONCECRES            NUMBER(4,0)           not null,
   CONSECASISRES        NUMBER(4,0)           not null,
   constraint PK_PRESTAMO primary key (CONSECPRESTAMO)
);

/*==============================================================*/
/* Index: ELEMENTO_PRESTAMO_FK                                  */
/*==============================================================*/
create index ELEMENTO_PRESTAMO_FK on PRESTAMO (
   CONSECELEMENTO ASC
);

/*==============================================================*/
/* Index: ASISTRESP___PRESTAMO_FK                               */
/*==============================================================*/
create index ASISTRESP___PRESTAMO_FK on PRESTAMO (
   CONSECPROGRAMACION ASC,
   CONCECRES ASC,
   CONSECASISRES ASC
);

/*==============================================================*/
/* Table: PROGRAMACION                                          */
/*==============================================================*/
create table PROGRAMACION (
   CONSECPROGRAMACION   NUMBER(4,0)           not null,
   IDPERIODO            VARCHAR2(5)           not null,
   IDACTIVIDAD          VARCHAR2(2)           not null,
   IDDEPORTE            VARCHAR2(2)           not null,
   CODESPACIO           VARCHAR2(2)           not null,
   IDDIA                VARCHAR2(1)           not null,
   IDHORA_FIN           VARCHAR2(5)           not null,
   IDHORA_INI           VARCHAR2(5)           not null,
   CUPO                 NUMBER(3,0)           not null,
   INSCRITOS            NUMBER(3,0),
   constraint PK_PROGRAMACION primary key (CONSECPROGRAMACION)
);

/*==============================================================*/
/* Index: PERIODO_PROGRAMACION_FK                               */
/*==============================================================*/
create index PERIODO_PROGRAMACION_FK on PROGRAMACION (
   IDPERIODO ASC
);

/*==============================================================*/
/* Index: ACTIVIDAD___PROGRAMACION_FK                           */
/*==============================================================*/
create index ACTIVIDAD___PROGRAMACION_FK on PROGRAMACION (
   IDACTIVIDAD ASC
);

/*==============================================================*/
/* Index: DEPORTE___PROGRAMACION_FK                             */
/*==============================================================*/
create index DEPORTE___PROGRAMACION_FK on PROGRAMACION (
   IDDEPORTE ASC
);

/*==============================================================*/
/* Index: ESPACIO_PROGRAMACION_FK                               */
/*==============================================================*/
create index ESPACIO_PROGRAMACION_FK on PROGRAMACION (
   CODESPACIO ASC
);

/*==============================================================*/
/* Index: DIA_PROGRAMACION_FK                                   */
/*==============================================================*/
create index DIA_PROGRAMACION_FK on PROGRAMACION (
   IDDIA ASC
);

/*==============================================================*/
/* Index: HORA_FIN_FK                                           */
/*==============================================================*/
create index HORA_FIN_FK on PROGRAMACION (
   IDHORA_FIN ASC
);

/*==============================================================*/
/* Index: HORA_INICIO_FK                                        */
/*==============================================================*/
create index HORA_INICIO_FK on PROGRAMACION (
   IDHORA_INI ASC
);

/*==============================================================*/
/* Table: RESPONSABLE                                           */
/*==============================================================*/
create table RESPONSABLE (
   CONSECPROGRAMACION   NUMBER(4,0)           not null,
   CONCECRES            NUMBER(4,0)           not null,
   IDROL                VARCHAR2(1),
   CODEMPLEADO          VARCHAR2(4)           not null,
   CODESTUDIANTE        VARCHAR2(12),
   FECHAINI             DATE                  not null,
   FECHAFIN             DATE                  not null,
   constraint PK_RESPONSABLE primary key (CONSECPROGRAMACION, CONCECRES)
);

/*==============================================================*/
/* Index: ROL_RESPONSABLE_FK                                    */
/*==============================================================*/
create index ROL_RESPONSABLE_FK on RESPONSABLE (
   IDROL ASC
);

/*==============================================================*/
/* Index: EMPLEADO_RESPONSABLE_FK                               */
/*==============================================================*/
create index EMPLEADO_RESPONSABLE_FK on RESPONSABLE (
   CODEMPLEADO ASC
);

/*==============================================================*/
/* Index: ESTUDIANTE_RESPONSABLE_FK                             */
/*==============================================================*/
create index ESTUDIANTE_RESPONSABLE_FK on RESPONSABLE (
   CODESTUDIANTE ASC
);

/*==============================================================*/
/* Index: RESPONSABLE_PROGRAMACION_FK                           */
/*==============================================================*/
create index RESPONSABLE_PROGRAMACION_FK on RESPONSABLE (
   CONSECPROGRAMACION ASC
);

/*==============================================================*/
/* Table: ROL                                                   */
/*==============================================================*/
create table ROL (
   IDROL                VARCHAR2(1)           not null,
   DESCROL              VARCHAR2(20)          not null,
   constraint PK_ROL primary key (IDROL)
);

/*==============================================================*/
/* Table: TIPOELEMENTO                                          */
/*==============================================================*/
create table TIPOELEMENTO (
   IDTIPOELEMENTO       VARCHAR2(2)           not null,
   DESCTIPOELEMENTO     VARCHAR2(40)          not null,
   constraint PK_TIPOELEMENTO primary key (IDTIPOELEMENTO)
);

/*==============================================================*/
/* Table: TIPOESPACIO                                           */
/*==============================================================*/
create table TIPOESPACIO (
   IDTIPOESPACIO        VARCHAR2(2)           not null,
   DESCTIPOESPACIO      VARCHAR2(30)          not null,
   constraint PK_TIPOESPACIO primary key (IDTIPOESPACIO)
);

alter table ASISMIEMBROEQUIPO
   add constraint FK_ASISMIEM_ASISMIEMB_PROGRAMA foreign key (CONSECPROGRAMACION)
      references PROGRAMACION (CONSECPROGRAMACION);

alter table ASISMIEMBROEQUIPO
   add constraint FK_ASISMIEM_MIEMBROEQ_MIEMBROE foreign key (CONSEEQUIPO, ITEMMIEMBRO)
      references MIEMBROEQUIPO (CONSEEQUIPO, ITEMMIEMBRO);

alter table ASISTENRESPONSABLE
   add constraint FK_ASISTENR_ASISTENRE_RESPONSA foreign key (CONSECPROGRAMACION, CONCECRES)
      references RESPONSABLE (CONSECPROGRAMACION, CONCECRES);

alter table DEPORTE_TIPOELEMENTO
   add constraint FK_DEPORTE__DEPORTE_T_TIPOELEM foreign key (IDTIPOELEMENTO)
      references TIPOELEMENTO (IDTIPOELEMENTO);

alter table DEPORTE_TIPOELEMENTO
   add constraint FK_DEPORTE__DEPORTE_T_DEPORTE foreign key (IDDEPORTE)
      references DEPORTE (IDDEPORTE);

alter table ELEMENDEPORTIVO
   add constraint FK_ELEMENDE_ESPACIO___ESPACIO foreign key (CODESPACIO)
      references ESPACIO (CODESPACIO);

alter table ELEMENDEPORTIVO
   add constraint FK_ELEMENDE_ESTADO_EL_ESTADO foreign key (IDESTADO)
      references ESTADO (IDESTADO);

alter table ELEMENDEPORTIVO
   add constraint FK_ELEMENDE_MARCA_ELE_MARCA foreign key (IDMARCA)
      references MARCA (IDMARCA);

alter table ELEMENDEPORTIVO
   add constraint FK_ELEMENDE_TIPOELEME_TIPOELEM foreign key (IDTIPOELEMENTO)
      references TIPOELEMENTO (IDTIPOELEMENTO);

alter table EMPLEADO_CARGO
   add constraint FK_EMPLEADO_CARGO_EMP_CARGO foreign key (IDCARGO)
      references CARGO (IDCARGO);

alter table EMPLEADO_CARGO
   add constraint FK_EMPLEADO_EMPLEADO__EMPLEADO foreign key (CODEMPLEADO)
      references EMPLEADO (CODEMPLEADO);

alter table EMPLEADO_CARGO
   add constraint FK_EMPLEADO_ESPACIO_E_ESPACIO foreign key (CODESPACIO)
      references ESPACIO (CODESPACIO);

alter table EQUIPO
   add constraint FK_EQUIPO_DEPORTE___DEPORTE foreign key (IDDEPORTE)
      references DEPORTE (IDDEPORTE);

alter table EQUIPO
   add constraint FK_EQUIPO_EMPLEADO__EMPLEADO foreign key (CODEMPLEADO)
      references EMPLEADO (CODEMPLEADO);

alter table ESPACIO
   add constraint FK_ESPACIO_ESPACIO___ESPACIO foreign key (ESP_CODESPACIO)
      references ESPACIO (CODESPACIO);

alter table ESPACIO
   add constraint FK_ESPACIO_TIPOESPA__TIPOESPA foreign key (IDTIPOESPACIO)
      references TIPOESPACIO (IDTIPOESPACIO);

alter table ESPACIO___DEPORTE
   add constraint FK_ESPACIO__ESPACIO___DEPORTE foreign key (IDDEPORTE)
      references DEPORTE (IDDEPORTE);

alter table ESPACIO___DEPORTE
   add constraint FK_ESPACIO__ESPACIO___ESPACIO foreign key (CODESPACIO)
      references ESPACIO (CODESPACIO);

alter table ESTUDIANTE
   add constraint FK_ESTUDIAN_ESPACIO_E_ESPACIO foreign key (CODESPACIO)
      references ESPACIO (CODESPACIO);

alter table INSCRITOPRACLIBRE
   add constraint FK_INSCRITO_EMPLEADO__EMPLEADO foreign key (CODEMPLEADO)
      references EMPLEADO (CODEMPLEADO);

alter table INSCRITOPRACLIBRE
   add constraint FK_INSCRITO_ESTUDANTE_ESTUDIAN foreign key (CODESTUDIANTE)
      references ESTUDIANTE (CODESTUDIANTE);

alter table INSCRITOPRACLIBRE
   add constraint FK_INSCRITO_INSCRITOP_PROGRAMA foreign key (CONSECPROGRAMACION)
      references PROGRAMACION (CONSECPROGRAMACION);

alter table MIEMBROEQUIPO
   add constraint FK_MIEMBROE_ESTUDIANT_ESTUDIAN foreign key (CODESTUDIANTE)
      references ESTUDIANTE (CODESTUDIANTE);

alter table MIEMBROEQUIPO
   add constraint FK_MIEMBROE_MIEMBROEQ_EQUIPO foreign key (CONSEEQUIPO)
      references EQUIPO (CONSEEQUIPO);

alter table PRESTAMO
   add constraint FK_PRESTAMO_ASISTRESP_ASISTENR foreign key (CONSECPROGRAMACION, CONCECRES, CONSECASISRES)
      references ASISTENRESPONSABLE (CONSECPROGRAMACION, CONCECRES, CONSECASISRES);

alter table PRESTAMO
   add constraint FK_PRESTAMO_ELEMENTO__ELEMENDE foreign key (CONSECELEMENTO)
      references ELEMENDEPORTIVO (CONSECELEMENTO);

alter table PROGRAMACION
   add constraint FK_PROGRAMA_ACTIVIDAD_ACTIVIDA foreign key (IDACTIVIDAD)
      references ACTIVIDAD (IDACTIVIDAD);

alter table PROGRAMACION
   add constraint FK_PROGRAMA_DEPORTE___DEPORTE foreign key (IDDEPORTE)
      references DEPORTE (IDDEPORTE);

alter table PROGRAMACION
   add constraint FK_PROGRAMA_DIA_PROGR_DIA foreign key (IDDIA)
      references DIA (IDDIA);

alter table PROGRAMACION
   add constraint FK_PROGRAMA_ESPACIO_P_ESPACIO foreign key (CODESPACIO)
      references ESPACIO (CODESPACIO);

alter table PROGRAMACION
   add constraint FK_PROGRAMA_HORA_FIN_HORA foreign key (IDHORA_FIN)
      references HORA (IDHORA);

alter table PROGRAMACION
   add constraint FK_PROGRAMA_HORA_INIC_HORA foreign key (IDHORA_INI)
      references HORA (IDHORA);

alter table PROGRAMACION
   add constraint FK_PROGRAMA_PERIODO_P_PERIODO foreign key (IDPERIODO)
      references PERIODO (IDPERIODO);

alter table RESPONSABLE
   add constraint FK_RESPONSA_EMPLEADO__EMPLEADO foreign key (CODEMPLEADO)
      references EMPLEADO (CODEMPLEADO);

alter table RESPONSABLE
   add constraint FK_RESPONSA_ESTUDIANT_ESTUDIAN foreign key (CODESTUDIANTE)
      references ESTUDIANTE (CODESTUDIANTE);

alter table RESPONSABLE
   add constraint FK_RESPONSA_RESPONSAB_PROGRAMA foreign key (CONSECPROGRAMACION)
      references PROGRAMACION (CONSECPROGRAMACION);

alter table RESPONSABLE
   add constraint FK_RESPONSA_ROL_RESPO_ROL foreign key (IDROL)
      references ROL (IDROL);


