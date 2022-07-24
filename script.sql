/*==============================================================*/
/* DBMS name:      ORACLE Version 12c                           */
/* Created on:     20/07/2022 12:49:53 a.m.                    */
/*==============================================================*/


alter table ASISTENCIA
   drop constraint FK_ASISTENC_HORARIO_A_PRESTAMO;

alter table ASISTENCIA
   drop constraint FK_ASISTENC_PERSONA_A_PERSONA;

alter table CATEGORIA_DEPORTE
   drop constraint FK_CATEGORI_CATEGORIA_CATEGORI;

alter table CATEGORIA_DEPORTE
   drop constraint FK_CATEGORI_DEPORTE_C_DEPORTE;

alter table CURSO
   drop constraint FK_CURSO_CURSO_DOC_DOCENTE;

alter table DOCENTE
   drop constraint FK_DOCENTE_PERSONA_D_PERSONA;

alter table EQUIPO
   drop constraint FK_EQUIPO_EQUIPO_DO_DOCENTE;

alter table EQUIPO_ESTUDIANTE
   drop constraint FK_EQUIPO_E_EQUIPO_ES_EQUIPO;

alter table EQUIPO_ESTUDIANTE
   drop constraint FK_EQUIPO_E_ESTUDIANT_ESTUDIAN;

alter table ESPACIO
   drop constraint FK_ESPACIO_SEDE_ESPA_SEDE;

alter table ESTUDIANTE
   drop constraint FK_ESTUDIAN_PERSONA_E_PERSONA;

alter table ESTUDIANTE_CURSO
   drop constraint FK_ESTUDIAN_CURSO_EST_CURSO;

alter table ESTUDIANTE_CURSO
   drop constraint FK_ESTUDIAN_ESTUAIANT_ESTUDIAN;

alter table HORARIO_MATERIAL
   drop constraint FK_HORARIO__HORARIO_M_PRESTAMO;

alter table HORARIO_MATERIAL
   drop constraint FK_HORARIO__MATERIAL__MATERIAL;

alter table MATERIAL
   drop constraint FK_MATERIAL_CATEGORIA_CATEGORI;

alter table MATERIAL
   drop constraint FK_MATERIAL_MATERIAL__ESTADO;

alter table PASANTE
   drop constraint FK_PASANTE_ESTUDIANT_ESTUDIAN;

alter table PASANTE
   drop constraint FK_PASANTE_PASANTE_P_PERSONAL;

alter table PERSONAL
   drop constraint FK_PERSONAL_CARGO_PER_CARGO;

alter table PERSONAL
   drop constraint FK_PERSONAL_JEFE_PERSONAL;

alter table PERSONAL
   drop constraint FK_PERSONAL_PERSONA_P_PERSONA;

alter table PERSONAL
   drop constraint FK_PERSONAL_SEDE_PERS_SEDE;

alter table PRESTAMO_HORARIO
   drop constraint FK_PRESTAMO_CURSO_PRE_CURSO;

alter table PRESTAMO_HORARIO
   drop constraint FK_PRESTAMO_ESPACIO_P_ESPACIO;

alter table PRESTAMO_HORARIO
   drop constraint FK_PRESTAMO_HORA_PRES_HORA_LIB;

alter table PRESTAMO_HORARIO
   drop constraint FK_PRESTAMO_PERSONAL__PERSONAL;

alter table PRESTAMO_HORARIO
   drop constraint FK_PRESTAMO_PERSONA_P_PERSONA;

alter table PRESTAMO_HORARIO
   drop constraint FK_PRESTAMO_PRESTAMO__DEPORTE;

drop index HORARIO_ASISTENCIA_FK;

drop index PERSONA_ASISTENCIA_FK;

drop table ASISTENCIA cascade constraints;

drop table CARGO cascade constraints;

drop table CATEGORIA cascade constraints;

drop index DEPORTE_CATEGORIA_FK;

drop index CATEGORIA_DEPORTE2_FK;

drop table CATEGORIA_DEPORTE cascade constraints;

drop index CURSO_DOCENTE_FK;

drop table CURSO cascade constraints;

drop table DEPORTE cascade constraints;

drop index PERSONA_DOCENTE_FK;

drop table DOCENTE cascade constraints;

drop index EQUIPO_DOCENTE_FK;

drop table EQUIPO cascade constraints;

drop index ESTUDIANTE_EQUIPO_FK;

drop index EQUIPO_ESTUDIANTE2_FK;

drop table EQUIPO_ESTUDIANTE cascade constraints;

drop index SEDE_ESPACIO_FK;

drop table ESPACIO cascade constraints;

drop table ESTADO cascade constraints;

drop index PERSONA_ESTUDIANTE_FK;

drop table ESTUDIANTE cascade constraints;

drop index CURSO_ESTUDIANTE_FK;

drop index ESTUAIANTE_CURSO2_FK;

drop table ESTUDIANTE_CURSO cascade constraints;

drop index MATERIAL_HORARIO_FK;

drop index HORARIO_MATERIAL2_FK;

drop table HORARIO_MATERIAL cascade constraints;

drop table HORA_LIBRE_ENTRENAMIENTO cascade constraints;

drop index CATEGORIA_MATERIAL_FK;

drop index MATERIAL_ESTADO_FK;

drop table MATERIAL cascade constraints;

drop index ESTUDIANTE_PASANTE_FK;

drop index PASANTE_PERSONAL_FK;

drop table PASANTE cascade constraints;

drop table PERSONA cascade constraints;

drop index JEFE_FK;

drop index SEDE_PERSONAL_FK;

drop index CARGO_PERSONAL_FK;

drop index PERSONA_PERSONAL_FK;

drop table PERSONAL cascade constraints;

drop index PERSONA_PRESTAMO_FK;

drop index PERSONAL_PRESTAMO_FK;

drop index HORA_PRESTAMO_FK;

drop index PRESTAMO_DEPORTE_FK;

drop index CURSO_PRESTAMO_FK;

drop index ESPACIO_PRESTAMO_FK;

drop table PRESTAMO_HORARIO cascade constraints;

drop table SEDE cascade constraints;

/*==============================================================*/
/* Table: ASISTENCIA                                            */
/*==============================================================*/
create table ASISTENCIA (
   IDASISTENCIA         VARCHAR2(10)          not null,
   IDPERSONA            NUMBER(15)            not null,
   IDPRESTAMO           VARCHAR2(10)          not null,
   FECHAASISTENCIA      DATE                  not null,
   constraint PK_ASISTENCIA primary key (IDASISTENCIA)
);

comment on table ASISTENCIA is
'Entidad que representa los registros de asistencia de cada persona que haya utilizado los espacios en cualquier circunstancia';

/*==============================================================*/
/* Index: PERSONA_ASISTENCIA_FK                                 */
/*==============================================================*/
create index PERSONA_ASISTENCIA_FK on ASISTENCIA (
   IDPERSONA ASC
);

/*==============================================================*/
/* Index: HORARIO_ASISTENCIA_FK                                 */
/*==============================================================*/
create index HORARIO_ASISTENCIA_FK on ASISTENCIA (
   IDPRESTAMO ASC
);

/*==============================================================*/
/* Table: CARGO                                                 */
/*==============================================================*/
create table CARGO (
   IDCARGO              VARCHAR2(8)           not null,
   TIPOCARGO            VARCHAR2(30)          not null,
   constraint PK_CARGO primary key (IDCARGO)
);

insert into cargo values('1', 'Administrador deportivo');
insert into cargo values('2', 'Director deportivo');
insert into cargo values('3', 'Fisioterapeuta');
insert into cargo values('4', 'Entrenador');
insert into cargo values('5', 'Auxiliar deportivo');
insert into cargo values('6', 'Docente');


/*==============================================================*/
/* Table: CATEGORIA                                             */
/*==============================================================*/
create table CATEGORIA (
   IDCATEGORIA          VARCHAR2(10)          not null,
   constraint PK_CATEGORIA primary key (IDCATEGORIA)
);

comment on table CATEGORIA is
'Entidad que representa una categoria de materiales (por ejemplo: todo tipo de raquetas o todo tipo de balones)';

/*==============================================================*/
/* Table: CATEGORIA_DEPORTE                                     */
/*==============================================================*/
create table CATEGORIA_DEPORTE (
   IDDEPORTE            VARCHAR2(5)           not null,
   IDCATEGORIA          VARCHAR2(10)          not null,
   constraint PK_CATEGORIA_DEPORTE primary key (IDDEPORTE, IDCATEGORIA)
);

/*==============================================================*/
/* Index: CATEGORIA_DEPORTE2_FK                                 */
/*==============================================================*/
create index CATEGORIA_DEPORTE2_FK on CATEGORIA_DEPORTE (
   IDCATEGORIA ASC
);

/*==============================================================*/
/* Index: DEPORTE_CATEGORIA_FK                                  */
/*==============================================================*/
create index DEPORTE_CATEGORIA_FK on CATEGORIA_DEPORTE (
   IDDEPORTE ASC
);

/*==============================================================*/
/* Table: CURSO                                                 */
/*==============================================================*/
create table CURSO (
   IDCURSO              VARCHAR2(10)          not null,
   IDDOCENTE            VARCHAR2(10)          not null,
   NOMBRECURSO          CLOB                  not null,
   constraint PK_CURSO primary key (IDCURSO)
);

comment on table CURSO is
'Entidad que representa a un curso de algun deporte';

/*==============================================================*/
/* Index: CURSO_DOCENTE_FK                                      */
/*==============================================================*/
create index CURSO_DOCENTE_FK on CURSO (
   IDDOCENTE ASC
);

/*==============================================================*/
/* Table: DEPORTE                                               */
/*==============================================================*/
create table DEPORTE (
   IDDEPORTE            VARCHAR2(5)           not null,
   TIPODEPORTE          VARCHAR2(30)          not null,
   constraint PK_DEPORTE primary key (IDDEPORTE)
);

comment on table DEPORTE is
'Entidad que identifica a un deporte existente en dicho problema';

/*==============================================================*/
/* Table: DOCENTE                                               */
/*==============================================================*/
create table DOCENTE (
   IDDOCENTE            VARCHAR2(10)          not null,
   IDPERSONA            NUMBER(15)            not null,
   constraint PK_DOCENTE primary key (IDDOCENTE)
);

comment on table DOCENTE is
'Entidad que representa a un docente de los cursos de deporte';

/*==============================================================*/
/* Index: PERSONA_DOCENTE_FK                                    */
/*==============================================================*/
create index PERSONA_DOCENTE_FK on DOCENTE (
   IDPERSONA ASC
);

/*==============================================================*/
/* Table: EQUIPO                                                */
/*==============================================================*/
create table EQUIPO (
   IDEQUIPO             VARCHAR2(10)          not null,
   IDDOCENTE            VARCHAR2(10)          not null,
   NOMBREEQUIPO         VARCHAR2(30)          not null,
   constraint PK_EQUIPO primary key (IDEQUIPO)
);

comment on table EQUIPO is
'Entidad que identifica un equipo universitario';

/*==============================================================*/
/* Index: EQUIPO_DOCENTE_FK                                     */
/*==============================================================*/
create index EQUIPO_DOCENTE_FK on EQUIPO (
   IDDOCENTE ASC
);

/*==============================================================*/
/* Table: EQUIPO_ESTUDIANTE                                     */
/*==============================================================*/
create table EQUIPO_ESTUDIANTE (
   IDESTUDIANTE         VARCHAR2(10)          not null,
   IDEQUIPO             VARCHAR2(10)          not null,
   constraint PK_EQUIPO_ESTUDIANTE primary key (IDESTUDIANTE, IDEQUIPO)
);

/*==============================================================*/
/* Index: EQUIPO_ESTUDIANTE2_FK                                 */
/*==============================================================*/
create index EQUIPO_ESTUDIANTE2_FK on EQUIPO_ESTUDIANTE (
   IDEQUIPO ASC
);

/*==============================================================*/
/* Index: ESTUDIANTE_EQUIPO_FK                                  */
/*==============================================================*/
create index ESTUDIANTE_EQUIPO_FK on EQUIPO_ESTUDIANTE (
   IDESTUDIANTE ASC
);

/*==============================================================*/
/* Table: ESPACIO                                               */
/*==============================================================*/
create table ESPACIO (
   IDESPACIO            VARCHAR2(10)          not null,
   IDSEDE               VARCHAR2(8)           not null,
   LUGAR                VARCHAR2(20)          not null,
   constraint PK_ESPACIO primary key (IDESPACIO)
);

comment on table ESPACIO is
'Entidad que representa un espacio fisico de la universidad donde se impartiran los cursos, horaslibres o entrenamientos para los estudiantes';

/*==============================================================*/
/* Index: SEDE_ESPACIO_FK                                       */
/*==============================================================*/
create index SEDE_ESPACIO_FK on ESPACIO (
   IDSEDE ASC
);

/*==============================================================*/
/* Table: ESTADO                                                */
/*==============================================================*/
create table ESTADO (
   IDESTADO             VARCHAR2(10)          not null,
   ESTADO               VARCHAR2(20)          not null,
   constraint PK_ESTADO primary key (IDESTADO)
);

comment on table ESTADO is
'Entidad que representa en que tipo de estado se encuentran los materiales deportivos';

/*==============================================================*/
/* Table: ESTUDIANTE                                            */
/*==============================================================*/
create table ESTUDIANTE (
   IDESTUDIANTE         VARCHAR2(10)          not null,
   IDPERSONA            NUMBER(15)            not null,
   constraint PK_ESTUDIANTE primary key (IDESTUDIANTE)
);

comment on table ESTUDIANTE is
'Entidad que representa a un estudiante de la universidad';

/*==============================================================*/
/* Index: PERSONA_ESTUDIANTE_FK                                 */
/*==============================================================*/
create index PERSONA_ESTUDIANTE_FK on ESTUDIANTE (
   IDPERSONA ASC
);

/*==============================================================*/
/* Table: ESTUDIANTE_CURSO                                      */
/*==============================================================*/
create table ESTUDIANTE_CURSO (
   IDCURSO              VARCHAR2(10)          not null,
   IDESTUDIANTE         VARCHAR2(10)          not null,
   constraint PK_ESTUDIANTE_CURSO primary key (IDCURSO, IDESTUDIANTE)
);

/*==============================================================*/
/* Index: ESTUAIANTE_CURSO2_FK                                  */
/*==============================================================*/
create index ESTUAIANTE_CURSO2_FK on ESTUDIANTE_CURSO (
   IDESTUDIANTE ASC
);

/*==============================================================*/
/* Index: CURSO_ESTUDIANTE_FK                                   */
/*==============================================================*/
create index CURSO_ESTUDIANTE_FK on ESTUDIANTE_CURSO (
   IDCURSO ASC
);

/*==============================================================*/
/* Table: HORARIO_MATERIAL                                      */
/*==============================================================*/
create table HORARIO_MATERIAL (
   IDMATERIAL           VARCHAR2(10)          not null,
   IDPRESTAMO           VARCHAR2(10)          not null,
   constraint PK_HORARIO_MATERIAL primary key (IDMATERIAL, IDPRESTAMO)
);

/*==============================================================*/
/* Index: HORARIO_MATERIAL2_FK                                  */
/*==============================================================*/
create index HORARIO_MATERIAL2_FK on HORARIO_MATERIAL (
   IDPRESTAMO ASC
);

/*==============================================================*/
/* Index: MATERIAL_HORARIO_FK                                   */
/*==============================================================*/
create index MATERIAL_HORARIO_FK on HORARIO_MATERIAL (
   IDMATERIAL ASC
);

/*==============================================================*/
/* Table: HORA_LIBRE_ENTRENAMIENTO                              */
/*==============================================================*/
create table HORA_LIBRE_ENTRENAMIENTO (
   IDHORA               VARCHAR2(10)          not null,
   TIPOESPACIO          VARCHAR2(30)          not null,
   constraint PK_HORA_LIBRE_ENTRENAMIENTO primary key (IDHORA)
);

comment on table HORA_LIBRE_ENTRENAMIENTO is
'Entidad que representa a las horas libres o entrenamientos que se vayan a solicitar ';

/*==============================================================*/
/* Table: MATERIAL                                              */
/*==============================================================*/
create table MATERIAL (
   IDMATERIAL           VARCHAR2(10)          not null,
   IDESTADO             VARCHAR2(10)          not null,
   IDCATEGORIA          VARCHAR2(10)          not null,
   FECHAADQUISICION     DATE                  not null,
   MARCA                VARCHAR2(20)          not null,
   constraint PK_MATERIAL primary key (IDMATERIAL)
);

comment on table MATERIAL is
'Entidad que representa todo lo referente a los elementos deportivos que se usan en las practicas';

/*==============================================================*/
/* Index: MATERIAL_ESTADO_FK                                    */
/*==============================================================*/
create index MATERIAL_ESTADO_FK on MATERIAL (
   IDESTADO ASC
);

/*==============================================================*/
/* Index: CATEGORIA_MATERIAL_FK                                 */
/*==============================================================*/
create index CATEGORIA_MATERIAL_FK on MATERIAL (
   IDCATEGORIA ASC
);

/*==============================================================*/
/* Table: PASANTE                                               */
/*==============================================================*/
create table PASANTE (
   IDPASANTE            VARCHAR2(10)          not null,
   IDPERSONAL           VARCHAR2(5)           not null,
   IDESTUDIANTE         VARCHAR2(10)          not null,
   constraint PK_PASANTE primary key (IDPASANTE)
);

comment on table PASANTE is
'Entidad que representa un pasante (estudiante de la carrera de administracion deportiva)';

/*==============================================================*/
/* Index: PASANTE_PERSONAL_FK                                   */
/*==============================================================*/
create index PASANTE_PERSONAL_FK on PASANTE (
   IDPERSONAL ASC
);

/*==============================================================*/
/* Index: ESTUDIANTE_PASANTE_FK                                 */
/*==============================================================*/
create index ESTUDIANTE_PASANTE_FK on PASANTE (
   IDESTUDIANTE ASC
);

/*==============================================================*/
/* Table: PERSONA                                               */
/*==============================================================*/
create table PERSONA (
   IDPERSONA            NUMBER(15)            not null,
   NOMBRES              VARCHAR2(30)          not null,
   APELLIDOS            VARCHAR2(30)          not null,
   constraint PK_PERSONA primary key (IDPERSONA)
);

comment on table PERSONA is
'Entidad que identifica los atributos de una persona (independientemente si es un docentes, estudiante o personal)';

/*==============================================================*/
/* Table: PERSONAL                                              */
/*==============================================================*/
create table PERSONAL (
   IDPERSONAL           VARCHAR2(5)           not null,
   IDPERSONA            NUMBER(15)            not null,
   IDCARGO              VARCHAR2(8)           not null,
   IDSEDE               VARCHAR2(8)           not null,
   JEFEIDPERSONAL       VARCHAR2(5),
   constraint PK_PERSONAL primary key (IDPERSONAL)
);

comment on table PERSONAL is
'Entidad que identifica al personal de la unidad administrativa';

/*==============================================================*/
/* Index: PERSONA_PERSONAL_FK                                   */
/*==============================================================*/
create index PERSONA_PERSONAL_FK on PERSONAL (
   IDPERSONA ASC
);

/*==============================================================*/
/* Index: CARGO_PERSONAL_FK                                     */
/*==============================================================*/
create index CARGO_PERSONAL_FK on PERSONAL (
   IDCARGO ASC
);

/*==============================================================*/
/* Index: SEDE_PERSONAL_FK                                      */
/*==============================================================*/
create index SEDE_PERSONAL_FK on PERSONAL (
   IDSEDE ASC
);

/*==============================================================*/
/* Index: JEFE_FK                                               */
/*==============================================================*/
create index JEFE_FK on PERSONAL (
   JEFEIDPERSONAL ASC
);

/*==============================================================*/
/* Table: PRESTAMO_HORARIO                                      */
/*==============================================================*/
create table PRESTAMO_HORARIO (
   IDPRESTAMO           VARCHAR2(10)          not null,
   IDESPACIO            VARCHAR2(10)          not null,
   IDPERSONA            NUMBER(15)            not null,
   IDPERSONAL           VARCHAR2(5)           not null,
   IDDEPORTE            VARCHAR2(5)           not null,
   IDCURSO              VARCHAR2(10),
   IDHORA               VARCHAR2(10),
   FECHA                DATE                  not null,
   HORAINICIO           DATE                  not null,
   HORAFIN              DATE,
   constraint PK_PRESTAMO_HORARIO primary key (IDPRESTAMO)
);

comment on table PRESTAMO_HORARIO is
'Entidad donde se almacena la informacion referente al prestamo y los horarios asignados para los cursos, practicas libres y entrenamientos';

/*==============================================================*/
/* Index: ESPACIO_PRESTAMO_FK                                   */
/*==============================================================*/
create index ESPACIO_PRESTAMO_FK on PRESTAMO_HORARIO (
   IDESPACIO ASC
);

/*==============================================================*/
/* Index: CURSO_PRESTAMO_FK                                     */
/*==============================================================*/
create index CURSO_PRESTAMO_FK on PRESTAMO_HORARIO (
   IDCURSO ASC
);

/*==============================================================*/
/* Index: PRESTAMO_DEPORTE_FK                                   */
/*==============================================================*/
create index PRESTAMO_DEPORTE_FK on PRESTAMO_HORARIO (
   IDDEPORTE ASC
);

/*==============================================================*/
/* Index: HORA_PRESTAMO_FK                                      */
/*==============================================================*/
create index HORA_PRESTAMO_FK on PRESTAMO_HORARIO (
   IDHORA ASC
);

/*==============================================================*/
/* Index: PERSONAL_PRESTAMO_FK                                  */
/*==============================================================*/
create index PERSONAL_PRESTAMO_FK on PRESTAMO_HORARIO (
   IDPERSONAL ASC
);

/*==============================================================*/
/* Index: PERSONA_PRESTAMO_FK                                   */
/*==============================================================*/
create index PERSONA_PRESTAMO_FK on PRESTAMO_HORARIO (
   IDPERSONA ASC
);

/*==============================================================*/
/* Table: SEDE                                                  */
/*==============================================================*/
create table SEDE (
   IDSEDE               VARCHAR2(8)           not null,
   NOMBRE               VARCHAR2(30)          not null,
   constraint PK_SEDE primary key (IDSEDE)
);

insert into SEDE values('1', 'Aduanilla de Paiba');
insert into SEDE values('2', 'Calle 34');
insert into SEDE values('3', 'Facultad de ingenieria');
insert into SEDE values('4', 'Calle 64');
insert into SEDE values('5', 'Bosa Porvenir');
insert into SEDE values('6', 'Macarena A');
insert into SEDE values('7', 'Macarena B');
insert into SEDE values('8', 'Facultad tecnologica');
insert into SEDE values('9', 'Vivero');
insert into SEDE values('10', 'ASAB');

comment on table SEDE is
'Entidad que identifica una sede de la universidad';

alter table ASISTENCIA
   add constraint FK_ASISTENC_HORARIO_A_PRESTAMO foreign key (IDPRESTAMO)
      references PRESTAMO_HORARIO (IDPRESTAMO);

alter table ASISTENCIA
   add constraint FK_ASISTENC_PERSONA_A_PERSONA foreign key (IDPERSONA)
      references PERSONA (IDPERSONA);

alter table CATEGORIA_DEPORTE
   add constraint FK_CATEGORI_CATEGORIA_CATEGORI foreign key (IDCATEGORIA)
      references CATEGORIA (IDCATEGORIA);

alter table CATEGORIA_DEPORTE
   add constraint FK_CATEGORI_DEPORTE_C_DEPORTE foreign key (IDDEPORTE)
      references DEPORTE (IDDEPORTE);

alter table CURSO
   add constraint FK_CURSO_CURSO_DOC_DOCENTE foreign key (IDDOCENTE)
      references DOCENTE (IDDOCENTE);

alter table DOCENTE
   add constraint FK_DOCENTE_PERSONA_D_PERSONA foreign key (IDPERSONA)
      references PERSONA (IDPERSONA);

alter table EQUIPO
   add constraint FK_EQUIPO_EQUIPO_DO_DOCENTE foreign key (IDDOCENTE)
      references DOCENTE (IDDOCENTE);

alter table EQUIPO_ESTUDIANTE
   add constraint FK_EQUIPO_E_EQUIPO_ES_EQUIPO foreign key (IDEQUIPO)
      references EQUIPO (IDEQUIPO);

alter table EQUIPO_ESTUDIANTE
   add constraint FK_EQUIPO_E_ESTUDIANT_ESTUDIAN foreign key (IDESTUDIANTE)
      references ESTUDIANTE (IDESTUDIANTE);

alter table ESPACIO
   add constraint FK_ESPACIO_SEDE_ESPA_SEDE foreign key (IDSEDE)
      references SEDE (IDSEDE);

alter table ESTUDIANTE
   add constraint FK_ESTUDIAN_PERSONA_E_PERSONA foreign key (IDPERSONA)
      references PERSONA (IDPERSONA);

alter table ESTUDIANTE_CURSO
   add constraint FK_ESTUDIAN_CURSO_EST_CURSO foreign key (IDCURSO)
      references CURSO (IDCURSO);

alter table ESTUDIANTE_CURSO
   add constraint FK_ESTUDIAN_ESTUAIANT_ESTUDIAN foreign key (IDESTUDIANTE)
      references ESTUDIANTE (IDESTUDIANTE);

alter table HORARIO_MATERIAL
   add constraint FK_HORARIO__HORARIO_M_PRESTAMO foreign key (IDPRESTAMO)
      references PRESTAMO_HORARIO (IDPRESTAMO);

alter table HORARIO_MATERIAL
   add constraint FK_HORARIO__MATERIAL__MATERIAL foreign key (IDMATERIAL)
      references MATERIAL (IDMATERIAL);

alter table MATERIAL
   add constraint FK_MATERIAL_CATEGORIA_CATEGORI foreign key (IDCATEGORIA)
      references CATEGORIA (IDCATEGORIA);

alter table MATERIAL
   add constraint FK_MATERIAL_MATERIAL__ESTADO foreign key (IDESTADO)
      references ESTADO (IDESTADO);

alter table PASANTE
   add constraint FK_PASANTE_ESTUDIANT_ESTUDIAN foreign key (IDESTUDIANTE)
      references ESTUDIANTE (IDESTUDIANTE);

alter table PASANTE
   add constraint FK_PASANTE_PASANTE_P_PERSONAL foreign key (IDPERSONAL)
      references PERSONAL (IDPERSONAL);

alter table PERSONAL
   add constraint FK_PERSONAL_CARGO_PER_CARGO foreign key (IDCARGO)
      references CARGO (IDCARGO);

alter table PERSONAL
   add constraint FK_PERSONAL_JEFE_PERSONAL foreign key (JEFEIDPERSONAL)
      references PERSONAL (IDPERSONAL);

alter table PERSONAL
   add constraint FK_PERSONAL_PERSONA_P_PERSONA foreign key (IDPERSONA)
      references PERSONA (IDPERSONA);

alter table PERSONAL
   add constraint FK_PERSONAL_SEDE_PERS_SEDE foreign key (IDSEDE)
      references SEDE (IDSEDE);

alter table PRESTAMO_HORARIO
   add constraint FK_PRESTAMO_CURSO_PRE_CURSO foreign key (IDCURSO)
      references CURSO (IDCURSO);

alter table PRESTAMO_HORARIO
   add constraint FK_PRESTAMO_ESPACIO_P_ESPACIO foreign key (IDESPACIO)
      references ESPACIO (IDESPACIO);

alter table PRESTAMO_HORARIO
   add constraint FK_PRESTAMO_HORA_PRES_HORA_LIB foreign key (IDHORA)
      references HORA_LIBRE_ENTRENAMIENTO (IDHORA);

alter table PRESTAMO_HORARIO
   add constraint FK_PRESTAMO_PERSONAL__PERSONAL foreign key (IDPERSONAL)
      references PERSONAL (IDPERSONAL);

alter table PRESTAMO_HORARIO
   add constraint FK_PRESTAMO_PERSONA_P_PERSONA foreign key (IDPERSONA)
      references PERSONA (IDPERSONA);

alter table PRESTAMO_HORARIO
   add constraint FK_PRESTAMO_PRESTAMO__DEPORTE foreign key (IDDEPORTE)
      references DEPORTE (IDDEPORTE);

