INSERT ALL
    INTO TipoEspacio(IDTIPOESPACIO, DESCTIPOESPACIO) VALUES ('1', 'Unidad')
    INTO TipoEspacio(IDTIPOESPACIO, DESCTIPOESPACIO) VALUES ('2', 'Sede')
    INTO TipoEspacio(IDTIPOESPACIO, DESCTIPOESPACIO) VALUES ('3', 'Campo')
    INTO TipoEspacio(IDTIPOESPACIO, DESCTIPOESPACIO) VALUES ('4', 'Pista')
    INTO TipoEspacio(IDTIPOESPACIO, DESCTIPOESPACIO) VALUES ('5', 'Salon')
    INTO TipoEspacio(IDTIPOESPACIO, DESCTIPOESPACIO) VALUES ('6', 'Piscina')
    INTO TipoEspacio(IDTIPOESPACIO, DESCTIPOESPACIO) VALUES ('7', 'Sala Máquinas')
    INTO TipoEspacio(IDTIPOESPACIO, DESCTIPOESPACIO) VALUES ('8', 'Muro Escalar')
SELECT * FROM dual;

INSERT ALL
    INTO Deporte(IDDEPORTE, NOMDEPORTE) VALUES ('1', 'Atletismo')
    INTO Deporte(IDDEPORTE, NOMDEPORTE) VALUES ('2', 'Tenis')
    INTO Deporte(IDDEPORTE, NOMDEPORTE) VALUES ('3', 'Tenis Mesa')
    INTO Deporte(IDDEPORTE, NOMDEPORTE) VALUES ('4', 'Natación')
    INTO Deporte(IDDEPORTE, NOMDEPORTE) VALUES ('5', 'Voleibol')
    INTO Deporte(IDDEPORTE, NOMDEPORTE) VALUES ('6', 'Futbol')
    INTO Deporte(IDDEPORTE, NOMDEPORTE) VALUES ('7', 'Futbol sala')
    INTO Deporte(IDDEPORTE, NOMDEPORTE) VALUES ('8', 'Bádminton')
    INTO Deporte(IDDEPORTE, NOMDEPORTE) VALUES ('9', 'Aeróbicos')
    INTO Deporte(IDDEPORTE, NOMDEPORTE) VALUES ('10', 'Boxeo')
    INTO Deporte(IDDEPORTE, NOMDEPORTE) VALUES ('11', 'Artes Marciales')
    INTO Deporte(IDDEPORTE, NOMDEPORTE) VALUES ('12', 'Gimnasia Olimpica')
SELECT * FROM dual;

INSERT ALL
    INTO Estado(IDESTADO, DESCESTADO) VALUES ('1', 'Activo')
    INTO Estado(IDESTADO, DESCESTADO) VALUES ('2', 'Prestado')
    INTO Estado(IDESTADO, DESCESTADO) VALUES ('3', 'Dañado')
    INTO Estado(IDESTADO, DESCESTADO) VALUES ('4', 'Perdido')
    INTO Estado(IDESTADO, DESCESTADO) VALUES ('5', 'De baja')
SELECT * FROM dual;
    
INSERT ALL
    INTO Periodo(IDPERIODO) VALUES ('20192')
    INTO Periodo(IDPERIODO) VALUES ('20191')
    INTO Periodo(IDPERIODO) VALUES ('20193')
    INTO Periodo(IDPERIODO) VALUES ('20201')
    INTO Periodo(IDPERIODO) VALUES ('20202')
    INTO Periodo(IDPERIODO) VALUES ('20203')
    INTO Periodo(IDPERIODO) VALUES ('20211')
    INTO Periodo(IDPERIODO) VALUES ('20212')
    INTO Periodo(IDPERIODO) VALUES ('20213')
    INTO Periodo(IDPERIODO) VALUES ('20221')
SELECT * FROM dual;

INSERT ALL
    INTO TipoElemento(IDTIPOELEMENTO, DESCTIPOELEMENTO) VALUES ('1', 'Balón Baloncesto')
    INTO TipoElemento(IDTIPOELEMENTO, DESCTIPOELEMENTO) VALUES ('2', 'Balón Futbol')
    INTO TipoElemento(IDTIPOELEMENTO, DESCTIPOELEMENTO) VALUES ('3', 'Balón Voleibol')
    INTO TipoElemento(IDTIPOELEMENTO, DESCTIPOELEMENTO) VALUES ('4', 'Pelota Tenis mesa')
    INTO TipoElemento(IDTIPOELEMENTO, DESCTIPOELEMENTO) VALUES ('5', 'Pelota Tenis campo')
    INTO TipoElemento(IDTIPOELEMENTO, DESCTIPOELEMENTO) VALUES ('6', 'Colchoneta')
    INTO TipoElemento(IDTIPOELEMENTO, DESCTIPOELEMENTO) VALUES ('7', 'Lazo salto')
    INTO TipoElemento(IDTIPOELEMENTO, DESCTIPOELEMENTO) VALUES ('8', 'Guantes Box')
    INTO TipoElemento(IDTIPOELEMENTO, DESCTIPOELEMENTO) VALUES ('9', 'Malla Volibol')
    INTO TipoElemento(IDTIPOELEMENTO, DESCTIPOELEMENTO) VALUES ('10', 'Saco Boxeo')
    INTO TipoElemento(IDTIPOELEMENTO, DESCTIPOELEMENTO) VALUES ('11', 'Aros hula-hula')
    INTO TipoElemento(IDTIPOELEMENTO, DESCTIPOELEMENTO) VALUES ('12', 'Chaleco Boxeo')
    INTO TipoElemento(IDTIPOELEMENTO, DESCTIPOELEMENTO) VALUES ('13', 'Malla Pimpón')
SELECT * FROM dual;
        
INSERT ALL
    INTO Actividad(IDACTIVIDAD, DESCACTIVIDAD) VALUES ('CU', 'Curso')
    INTO Actividad(IDACTIVIDAD, DESCACTIVIDAD) VALUES ('PR', 'Práctica')
    INTO Actividad(IDACTIVIDAD, DESCACTIVIDAD) VALUES ('EN', 'Entrenamiento')
SELECT * FROM dual;

INSERT ALL
    INTO Hora(IDHORA) VALUES ('6:00')
    INTO Hora(IDHORA) VALUES ('7:00')
    INTO Hora(IDHORA) VALUES ('8:00')
    INTO Hora(IDHORA) VALUES ('9:00')
    INTO Hora(IDHORA) VALUES ('10:00')
    INTO Hora(IDHORA) VALUES ('11:00')
    INTO Hora(IDHORA) VALUES ('12:00')
    INTO Hora(IDHORA) VALUES ('13:00')
    INTO Hora(IDHORA) VALUES ('14:00')
    INTO Hora(IDHORA) VALUES ('15:00')
    INTO Hora(IDHORA) VALUES ('16:00')
    INTO Hora(IDHORA) VALUES ('17:00')
    INTO Hora(IDHORA) VALUES ('18:00')
    INTO Hora(IDHORA) VALUES ('19:00')
    INTO Hora(IDHORA) VALUES ('20:00')
    INTO Hora(IDHORA) VALUES ('21:00')
    INTO Hora(IDHORA) VALUES ('22:00')
SELECT * FROM dual;

INSERT ALL
    INTO dia(IDDIA, NOMDIA) VALUES ('1', 'Lunes')
    INTO dia(IDDIA, NOMDIA) VALUES ('2', 'Martes')
    INTO dia(IDDIA, NOMDIA) VALUES ('3', 'Miercoles')
    INTO dia(IDDIA, NOMDIA) VALUES ('4', 'Jueves')
    INTO dia(IDDIA, NOMDIA) VALUES ('5', 'Viernes')
    INTO dia(IDDIA, NOMDIA) VALUES ('6', 'Sabado')
SELECT * FROM dual;

INSERT ALL
    INTO Marca(IDMARCA, NOMMARCA) VALUES ('10', 'Nike')
    INTO Marca(IDMARCA, NOMMARCA) VALUES ('20', 'Adidas')
    INTO Marca(IDMARCA, NOMMARCA) VALUES ('30', 'Puma')
    INTO Marca(IDMARCA, NOMMARCA) VALUES ('40', 'Reebok')
    INTO Marca(IDMARCA, NOMMARCA) VALUES ('50', 'Fila')
    INTO Marca(IDMARCA, NOMMARCA) VALUES ('60', 'Asics')
    INTO Marca(IDMARCA, NOMMARCA) VALUES ('70', 'Kappa')
    INTO Marca(IDMARCA, NOMMARCA) VALUES ('80', 'The North Face')
    INTO Marca(IDMARCA, NOMMARCA) VALUES ('90', 'Under Armour')
    INTO Marca(IDMARCA, NOMMARCA) VALUES ('100', 'Under Armour')
    INTO Marca(IDMARCA, NOMMARCA) VALUES ('110', 'Converse')
    INTO Marca(IDMARCA, NOMMARCA) VALUES ('120', 'TI Colombia')
SELECT * FROM dual;

INSERT ALL
    INTO Rol(IDROL, DESCROL) VALUES ('1', 'Director Deportivo')
    INTO Rol(IDROL, DESCROL) VALUES ('2', 'Docente')
    INTO Rol(IDROL, DESCROL) VALUES ('3', 'Entrenador')
SELECT * FROM dual;

INSERT ALL
    INTO Cargo(IDCARGO, DESCARGO) VALUES ('1', 'Auxiliar')
    INTO Cargo(IDCARGO, DESCARGO) VALUES ('2', 'Docente')
    INTO Cargo(IDCARGO, DESCARGO) VALUES ('3', 'Director Deportivo')
    INTO Cargo(IDCARGO, DESCARGO) VALUES ('4', 'Administrador Deportivo')
    INTO Cargo(IDCARGO, DESCARGO) VALUES ('5', 'Fisioterapeuta')
    INTO Cargo(IDCARGO, DESCARGO) VALUES ('6', 'Entrenador')
SELECT * FROM dual;

---Incluir 10 espacios 1 unidad, 3 sedes, de cada sede un campo, una pista, una piscina, 10 salones y una sala de maquinas

INSERT ALL
    INTO Espacio(CODESPACIO, ESP_CODESPACIO, IDTIPOESPACIO, NOMESPACIO) VALUES ('1', '', '1', 'Unididad deportiva')
    INTO Espacio(CODESPACIO, ESP_CODESPACIO, IDTIPOESPACIO, NOMESPACIO) VALUES ('2', '', '2', 'Sede de ingenieria')
    INTO Espacio(CODESPACIO, ESP_CODESPACIO, IDTIPOESPACIO, NOMESPACIO) VALUES ('5', '2', '3', 'Campo ingenieria')
    INTO Espacio(CODESPACIO, ESP_CODESPACIO, IDTIPOESPACIO, NOMESPACIO) VALUES ('8', '2', '4', 'Pista ingenieria')
    INTO Espacio(CODESPACIO, ESP_CODESPACIO, IDTIPOESPACIO, NOMESPACIO) VALUES ('11', '2', '6', 'Piscina ingenieria')
    INTO Espacio(CODESPACIO, ESP_CODESPACIO, IDTIPOESPACIO, NOMESPACIO) VALUES ('14', '2', '7', 'Sala de máquinas ingenieria')
    INTO Espacio(CODESPACIO, ESP_CODESPACIO, IDTIPOESPACIO, NOMESPACIO) VALUES ('17', '2', '5', 'Salon I-204')
    INTO Espacio(CODESPACIO, ESP_CODESPACIO, IDTIPOESPACIO, NOMESPACIO) VALUES ('18', '2', '5', 'Salon I-305')
    INTO Espacio(CODESPACIO, ESP_CODESPACIO, IDTIPOESPACIO, NOMESPACIO) VALUES ('19', '2', '5', 'Salon I-506')
    INTO Espacio(CODESPACIO, ESP_CODESPACIO, IDTIPOESPACIO, NOMESPACIO) VALUES ('20', '2', '5', 'Salon I-201')
    INTO Espacio(CODESPACIO, ESP_CODESPACIO, IDTIPOESPACIO, NOMESPACIO) VALUES ('21', '2', '5', 'Salon I-601')
    INTO Espacio(CODESPACIO, ESP_CODESPACIO, IDTIPOESPACIO, NOMESPACIO) VALUES ('22', '2', '5', 'Salon I-507')
    INTO Espacio(CODESPACIO, ESP_CODESPACIO, IDTIPOESPACIO, NOMESPACIO) VALUES ('23', '2', '5', 'Salon I-406')
    INTO Espacio(CODESPACIO, ESP_CODESPACIO, IDTIPOESPACIO, NOMESPACIO) VALUES ('24', '2', '5', 'Salon I-205')
    INTO Espacio(CODESPACIO, ESP_CODESPACIO, IDTIPOESPACIO, NOMESPACIO) VALUES ('25', '2', '5', 'Salon I-302')
    INTO Espacio(CODESPACIO, ESP_CODESPACIO, IDTIPOESPACIO, NOMESPACIO) VALUES ('26', '2', '5', 'Salon I-705')
    INTO Espacio(CODESPACIO, ESP_CODESPACIO, IDTIPOESPACIO, NOMESPACIO) VALUES ('3', '', '2', 'Sede Bosa')
    INTO Espacio(CODESPACIO, ESP_CODESPACIO, IDTIPOESPACIO, NOMESPACIO) VALUES ('6', '3', '3', 'Campo Bosa')
    INTO Espacio(CODESPACIO, ESP_CODESPACIO, IDTIPOESPACIO, NOMESPACIO) VALUES ('9', '3', '4', 'Pista Bosa')
    INTO Espacio(CODESPACIO, ESP_CODESPACIO, IDTIPOESPACIO, NOMESPACIO) VALUES ('12', '3', '6', 'Piscina Bosa')
    INTO Espacio(CODESPACIO, ESP_CODESPACIO, IDTIPOESPACIO, NOMESPACIO) VALUES ('15', '3', '7', 'Sala de máquinas Bosa')
    INTO Espacio(CODESPACIO, ESP_CODESPACIO, IDTIPOESPACIO, NOMESPACIO) VALUES ('27', '3', '5', 'Salon B-204')
    INTO Espacio(CODESPACIO, ESP_CODESPACIO, IDTIPOESPACIO, NOMESPACIO) VALUES ('28', '3', '5', 'Salon B-305')
    INTO Espacio(CODESPACIO, ESP_CODESPACIO, IDTIPOESPACIO, NOMESPACIO) VALUES ('29', '3', '5', 'Salon B-506')
    INTO Espacio(CODESPACIO, ESP_CODESPACIO, IDTIPOESPACIO, NOMESPACIO) VALUES ('30', '3', '5', 'Salon B-201')
    INTO Espacio(CODESPACIO, ESP_CODESPACIO, IDTIPOESPACIO, NOMESPACIO) VALUES ('31', '3', '5', 'Salon B-601')
    INTO Espacio(CODESPACIO, ESP_CODESPACIO, IDTIPOESPACIO, NOMESPACIO) VALUES ('32', '3', '5', 'Salon B-507')
    INTO Espacio(CODESPACIO, ESP_CODESPACIO, IDTIPOESPACIO, NOMESPACIO) VALUES ('33', '3', '5', 'Salon B-406')
    INTO Espacio(CODESPACIO, ESP_CODESPACIO, IDTIPOESPACIO, NOMESPACIO) VALUES ('34', '3', '5', 'Salon B-205')
    INTO Espacio(CODESPACIO, ESP_CODESPACIO, IDTIPOESPACIO, NOMESPACIO) VALUES ('35', '3', '5', 'Salon B-302')
    INTO Espacio(CODESPACIO, ESP_CODESPACIO, IDTIPOESPACIO, NOMESPACIO) VALUES ('36', '3', '5', 'Salon B-705')
    INTO Espacio(CODESPACIO, ESP_CODESPACIO, IDTIPOESPACIO, NOMESPACIO) VALUES ('4', '', '2', 'Sede la Macarena')
    INTO Espacio(CODESPACIO, ESP_CODESPACIO, IDTIPOESPACIO, NOMESPACIO) VALUES ('7', '4', '3', 'Campo la macarena')
    INTO Espacio(CODESPACIO, ESP_CODESPACIO, IDTIPOESPACIO, NOMESPACIO) VALUES ('10', '4', '4', 'Pista la macarena')
    INTO Espacio(CODESPACIO, ESP_CODESPACIO, IDTIPOESPACIO, NOMESPACIO) VALUES ('13', '4', '6', 'Piscina la macarena')
    INTO Espacio(CODESPACIO, ESP_CODESPACIO, IDTIPOESPACIO, NOMESPACIO) VALUES ('16', '4', '7', 'Sala de máquinas macarena')
    INTO Espacio(CODESPACIO, ESP_CODESPACIO, IDTIPOESPACIO, NOMESPACIO) VALUES ('37', '4', '5', 'Salon M-204')
    INTO Espacio(CODESPACIO, ESP_CODESPACIO, IDTIPOESPACIO, NOMESPACIO) VALUES ('38', '4', '5', 'Salon M-305')
    INTO Espacio(CODESPACIO, ESP_CODESPACIO, IDTIPOESPACIO, NOMESPACIO) VALUES ('39', '4', '5', 'Salon M-506')
    INTO Espacio(CODESPACIO, ESP_CODESPACIO, IDTIPOESPACIO, NOMESPACIO) VALUES ('40', '4', '5', 'Salon M-201')
    INTO Espacio(CODESPACIO, ESP_CODESPACIO, IDTIPOESPACIO, NOMESPACIO) VALUES ('41', '4', '5', 'Salon M-601')
    INTO Espacio(CODESPACIO, ESP_CODESPACIO, IDTIPOESPACIO, NOMESPACIO) VALUES ('42', '4', '5', 'Salon M-507')
    INTO Espacio(CODESPACIO, ESP_CODESPACIO, IDTIPOESPACIO, NOMESPACIO) VALUES ('43', '4', '5', 'Salon M-406')
    INTO Espacio(CODESPACIO, ESP_CODESPACIO, IDTIPOESPACIO, NOMESPACIO) VALUES ('44', '4', '5', 'Salon M-205')
    INTO Espacio(CODESPACIO, ESP_CODESPACIO, IDTIPOESPACIO, NOMESPACIO) VALUES ('45', '4', '5', 'Salon M-302')
    INTO Espacio(CODESPACIO, ESP_CODESPACIO, IDTIPOESPACIO, NOMESPACIO) VALUES ('46', '4', '5', 'Salon M-705')
SELECT * FROM dual;

-- AGREGAR 12 EMPLEADOS CADA UNO, CON LOS CARGOS EN LA TABAL SIGUINETE A LAS SEDES CON ID 3 Y 4
-- Cargos
/*
    1 director deportivo
    2 fisioterapeutas
    4 docentes
    2 auxiliares
    3 entrenadadores
*/
INSERT ALL
    INTO empleado(CODEMPLEADO, NOMEMPLEADO, APELEMPLEADO, FECHAREGISTRO, CORREOUD) VALUES ('1', 'Juan', 'Perez' ,TO_DATE('21/04/2004', 'dd/mm/yyyy'), 'juaper@udistrital.edu.co')
    INTO empleado(CODEMPLEADO, NOMEMPLEADO, APELEMPLEADO, FECHAREGISTRO, CORREOUD) VALUES ('2', 'Maria', 'Rodriguez' ,TO_DATE('04/06/2010', 'dd/mm/yyyy'), 'marrod@udistrital.edu.co')
    INTO empleado(CODEMPLEADO, NOMEMPLEADO, APELEMPLEADO, FECHAREGISTRO, CORREOUD) VALUES ('3', 'Andres', 'Sanchez' ,TO_DATE('15/05/2021', 'dd/mm/yyyy'), 'andsan@udistrital.edu.co')
    INTO empleado(CODEMPLEADO, NOMEMPLEADO, APELEMPLEADO, FECHAREGISTRO, CORREOUD) VALUES ('4', 'Felipe', 'Urrego' ,TO_DATE('06/01/2001', 'dd/mm/yyyy'), 'felurr@udistrital.edu.co')
    INTO empleado(CODEMPLEADO, NOMEMPLEADO, APELEMPLEADO, FECHAREGISTRO, CORREOUD) VALUES ('5', 'Paola', 'Lopez' ,TO_DATE('22/03/2009', 'dd/mm/yyyy'), 'paolop@udistrital.edu.co')
    INTO empleado(CODEMPLEADO, NOMEMPLEADO, APELEMPLEADO, FECHAREGISTRO, CORREOUD) VALUES ('6', 'Andrea', 'Oviedo' ,TO_DATE('19/07/2012', 'dd/mm/yyyy'), 'andovi@udistrital.edu.co')
    INTO empleado(CODEMPLEADO, NOMEMPLEADO, APELEMPLEADO, FECHAREGISTRO, CORREOUD) VALUES ('7', 'Camilo', 'Jimenez' ,TO_DATE('07/04/2020', 'dd/mm/yyyy'), 'camjim@udistrital.edu.co')
    INTO empleado(CODEMPLEADO, NOMEMPLEADO, APELEMPLEADO, FECHAREGISTRO, CORREOUD) VALUES ('8', 'Jhon', 'Sambrano' ,TO_DATE('14/08/2021', 'dd/mm/yyyy'), 'jonsam@udistrital.edu.co')
    INTO empleado(CODEMPLEADO, NOMEMPLEADO, APELEMPLEADO, FECHAREGISTRO, CORREOUD) VALUES ('9', 'Esteban', 'Perez' ,TO_DATE('21/10/2019', 'dd/mm/yyyy'), 'estper@udistrital.edu.co')
    INTO empleado(CODEMPLEADO, NOMEMPLEADO, APELEMPLEADO, FECHAREGISTRO, CORREOUD) VALUES ('10', 'Julian', 'Serrano' ,TO_DATE('01/02/2022', 'dd/mm/yyyy'), 'julser@udistrital.edu.co')
    INTO empleado(CODEMPLEADO, NOMEMPLEADO, APELEMPLEADO, FECHAREGISTRO, CORREOUD) VALUES ('11', 'Lizeth', 'Alcalde' ,TO_DATE('10/11/2018', 'dd/mm/yyyy'), 'lizalc@udistrital.edu.co')
    INTO empleado(CODEMPLEADO, NOMEMPLEADO, APELEMPLEADO, FECHAREGISTRO, CORREOUD) VALUES ('12', 'Josa', 'Guzman' ,TO_DATE('01/06/2020', 'dd/mm/yyyy'), 'josguz@udistrital.edu.co')
SELECT * FROM dual;

INSERT ALL
    INTO empleado_cargo(CONSEC, IDCARGO, CODEMPLEADO, CODESPACIO, FECHACARGO) VALUES (1, '3', '1' , '2', '21/04/2004')
    INTO empleado_cargo(CONSEC, IDCARGO, CODEMPLEADO, CODESPACIO, FECHACARGO) VALUES (2, '5', '2' , '2', '21/04/2004')
    INTO empleado_cargo(CONSEC, IDCARGO, CODEMPLEADO, CODESPACIO, FECHACARGO) VALUES (3, '5', '3' , '2', '21/04/2004')
    INTO empleado_cargo(CONSEC, IDCARGO, CODEMPLEADO, CODESPACIO, FECHACARGO) VALUES (4, '2', '4' , '2', '21/04/2004')
    INTO empleado_cargo(CONSEC, IDCARGO, CODEMPLEADO, CODESPACIO, FECHACARGO) VALUES (5, '2', '5' , '2', '21/04/2004')
    INTO empleado_cargo(CONSEC, IDCARGO, CODEMPLEADO, CODESPACIO, FECHACARGO) VALUES (6, '2', '6' , '2', '21/04/2004')
    INTO empleado_cargo(CONSEC, IDCARGO, CODEMPLEADO, CODESPACIO, FECHACARGO) VALUES (7, '2', '7' , '2', '21/04/2004')
    INTO empleado_cargo(CONSEC, IDCARGO, CODEMPLEADO, CODESPACIO, FECHACARGO) VALUES (8, '1', '8' , '2', '21/04/2004')
    INTO empleado_cargo(CONSEC, IDCARGO, CODEMPLEADO, CODESPACIO, FECHACARGO) VALUES (9, '1', '9' , '2', '21/04/2004')
    INTO empleado_cargo(CONSEC, IDCARGO, CODEMPLEADO, CODESPACIO, FECHACARGO) VALUES (10, '6', '10' , '2', '21/04/2004')
    INTO empleado_cargo(CONSEC, IDCARGO, CODEMPLEADO, CODESPACIO, FECHACARGO) VALUES (11, '6', '11' , '2', '21/04/2004')
    INTO empleado_cargo(CONSEC, IDCARGO, CODEMPLEADO, CODESPACIO, FECHACARGO) VALUES (12, '6', '12' , '2', '21/04/2004')
SELECT * FROM dual;

-- Incluir 10 estudiantes de diferentes sedes
INSERT ALL
    into Estudiante (CODESTUDIANTE, CODESPACIO, NOMESTUDIANTE, APELESTUDIANTE, FECHAREGESTUDIANTE, CORREOUDESTUDIANTE, FECHANACESTUDIANTE) VALUES ('20211020001','2','Melanie','Vicente',TO_DATE('25/09/2021', 'dd/mm/yyyy'),'non.magna@udistrital.edu.co',TO_DATE('17/11/1995', 'dd/mm/yyyy'))
    into Estudiante (CODESTUDIANTE, CODESPACIO, NOMESTUDIANTE, APELESTUDIANTE, FECHAREGESTUDIANTE, CORREOUDESTUDIANTE, FECHANACESTUDIANTE) VALUES ('20211020002','2','Hyatt','Prieto',TO_DATE('10/03/2022', 'dd/mm/yyyy'),'scelerisque@udistrital.edu.co',TO_DATE('06/04/1998', 'dd/mm/yyyy'))
    into Estudiante (CODESTUDIANTE, CODESPACIO, NOMESTUDIANTE, APELESTUDIANTE, FECHAREGESTUDIANTE, CORREOUDESTUDIANTE, FECHANACESTUDIANTE) VALUES ('20211020003','2','Sacha','Trinidad',TO_DATE('23/09/2022', 'dd/mm/yyyy'),'erat.neque@udistrital.edu.co',TO_DATE('02/08/2000', 'dd/mm/yyyy'))
    into Estudiante (CODESTUDIANTE, CODESPACIO, NOMESTUDIANTE, APELESTUDIANTE, FECHAREGESTUDIANTE, CORREOUDESTUDIANTE, FECHANACESTUDIANTE) VALUES ('20211020004','2','Harper','Valenzuela',TO_DATE('15/04/2015', 'dd/mm/yyyy'),'vel.nisl@udistrital.edu.co',TO_DATE('07/07/1995', 'dd/mm/yyyy'))
    into Estudiante (CODESTUDIANTE, CODESPACIO, NOMESTUDIANTE, APELESTUDIANTE, FECHAREGESTUDIANTE, CORREOUDESTUDIANTE, FECHANACESTUDIANTE) VALUES ('20211020005','2','Thor','Castro',TO_DATE('24/12/2014', 'dd/mm/yyyy'),'tempor.augue@udistrital.edu.co',TO_DATE('23/12/2001', 'dd/mm/yyyy'))
    into Estudiante (CODESTUDIANTE, CODESPACIO, NOMESTUDIANTE, APELESTUDIANTE, FECHAREGESTUDIANTE, CORREOUDESTUDIANTE, FECHANACESTUDIANTE) VALUES ('20211020006','3','Lee','Carrasco',TO_DATE('01/11/2014', 'dd/mm/yyyy'),'dignissim@udistrital.edu.co',TO_DATE('19/12/2000', 'dd/mm/yyyy'))
    into Estudiante (CODESTUDIANTE, CODESPACIO, NOMESTUDIANTE, APELESTUDIANTE, FECHAREGESTUDIANTE, CORREOUDESTUDIANTE, FECHANACESTUDIANTE) VALUES ('20211020007','3','Orli','Matilde',TO_DATE('02/08/2017', 'dd/mm/yyyy'),'pede.nonummy@udistrital.edu.co',TO_DATE('17/01/1996', 'dd/mm/yyyy'))
    into Estudiante (CODESTUDIANTE, CODESPACIO, NOMESTUDIANTE, APELESTUDIANTE, FECHAREGESTUDIANTE, CORREOUDESTUDIANTE, FECHANACESTUDIANTE) VALUES ('20211020008','3','Raymond','Vega',TO_DATE('06/11/2018', 'dd/mm/yyyy'),'quisque@udistrital.edu.co',TO_DATE('22/02/1996', 'dd/mm/yyyy'))
    into Estudiante (CODESTUDIANTE, CODESPACIO, NOMESTUDIANTE, APELESTUDIANTE, FECHAREGESTUDIANTE, CORREOUDESTUDIANTE, FECHANACESTUDIANTE) VALUES ('20211020009','3','Carlos','Ignacio',TO_DATE('16/10/2020', 'dd/mm/yyyy'),'senectus.et@udistrital.edu.co',TO_DATE('03/02/1996', 'dd/mm/yyyy'))
    into Estudiante (CODESTUDIANTE, CODESPACIO, NOMESTUDIANTE, APELESTUDIANTE, FECHAREGESTUDIANTE, CORREOUDESTUDIANTE, FECHANACESTUDIANTE) VALUES ('20211020010','3','Aidan','Diem',TO_DATE('12/02/2020', 'dd/mm/yyyy'),'iaculis.odio@udistrital.edu.co',TO_DATE('08/01/1998', 'dd/mm/yyyy'))
SELECT * FROM dual;

-- Incluir registros para la programación: 4 registros de cursos, 4 registros de equipos entrenamiento, 4 registros practica libre
INSERT ALL
    INTO programacion(CONSECPROGRAMACION, IDPERIODO, IDACTIVIDAD, IDDEPORTE, CODESPACIO, IDDIA, IDHORA_FIN, IDHORA_INI, CUPO) VALUES (1, '20211', 'CU', '2', '8', '1', '9:00', '7:00', 10)
    INTO programacion(CONSECPROGRAMACION, IDPERIODO, IDACTIVIDAD, IDDEPORTE, CODESPACIO, IDDIA, IDHORA_FIN, IDHORA_INI, CUPO) VALUES (2, '20211', 'CU', '4', '11', '1', '11:00', '9:00', 10)
    INTO programacion(CONSECPROGRAMACION, IDPERIODO, IDACTIVIDAD, IDDEPORTE, CODESPACIO, IDDIA, IDHORA_FIN, IDHORA_INI, CUPO) VALUES (3, '20211', 'CU', '11', '8', '2', '14:00', '12:00', 10)
    INTO programacion(CONSECPROGRAMACION, IDPERIODO, IDACTIVIDAD, IDDEPORTE, CODESPACIO, IDDIA, IDHORA_FIN, IDHORA_INI, CUPO) VALUES (4, '20211', 'CU', '12', '5', '1', '8:00', '6:00', 10)
    INTO programacion(CONSECPROGRAMACION, IDPERIODO, IDACTIVIDAD, IDDEPORTE, CODESPACIO, IDDIA, IDHORA_FIN, IDHORA_INI, CUPO) VALUES (5, '20211', 'EN', '4', '11', '6', '8:00', '6:00', 10)
    INTO programacion(CONSECPROGRAMACION, IDPERIODO, IDACTIVIDAD, IDDEPORTE, CODESPACIO, IDDIA, IDHORA_FIN, IDHORA_INI, CUPO) VALUES (6, '20211', 'EN', '6', '8', '3', '14:00', '12:00', 10)
    INTO programacion(CONSECPROGRAMACION, IDPERIODO, IDACTIVIDAD, IDDEPORTE, CODESPACIO, IDDIA, IDHORA_FIN, IDHORA_INI, CUPO) VALUES (7, '20211', 'EN', '12', '8', '6', '11:00', '9:00', 10)
    INTO programacion(CONSECPROGRAMACION, IDPERIODO, IDACTIVIDAD, IDDEPORTE, CODESPACIO, IDDIA, IDHORA_FIN, IDHORA_INI, CUPO) VALUES (8, '20211', 'EN', '11', '5', '2', '8:00', '6:00', 10)
    INTO programacion(CONSECPROGRAMACION, IDPERIODO, IDACTIVIDAD, IDDEPORTE, CODESPACIO, IDDIA, IDHORA_FIN, IDHORA_INI, CUPO) VALUES (9, '20211', 'PR', '6', '8', '4', '9:00', '7:00', 10)
    INTO programacion(CONSECPROGRAMACION, IDPERIODO, IDACTIVIDAD, IDDEPORTE, CODESPACIO, IDDIA, IDHORA_FIN, IDHORA_INI, CUPO) VALUES (10, '20211', 'PR', '11', '5', '3', '11:00', '9:00', 10)
    INTO programacion(CONSECPROGRAMACION, IDPERIODO, IDACTIVIDAD, IDDEPORTE, CODESPACIO, IDDIA, IDHORA_FIN, IDHORA_INI, CUPO) VALUES (11, '20211', 'PR', '2', '5', '4', '9:00', '7:00', 10)
    INTO programacion(CONSECPROGRAMACION, IDPERIODO, IDACTIVIDAD, IDDEPORTE, CODESPACIO, IDDIA, IDHORA_FIN, IDHORA_INI, CUPO) VALUES (12, '20211', 'PR', '6', '8', '5', '14:00', '12:00', 10)
SELECT * FROM dual;

-- Incluir 10 registros en la tabla espacio-deporte
INSERT ALL
    INTO espacio___deporte(IDDEPORTE, CODESPACIO) VALUES ('6', '5')
    INTO espacio___deporte(IDDEPORTE, CODESPACIO) VALUES ('9', '6')
    INTO espacio___deporte(IDDEPORTE, CODESPACIO) VALUES ('1', '10')
    INTO espacio___deporte(IDDEPORTE, CODESPACIO) VALUES ('1', '9')
    INTO espacio___deporte(IDDEPORTE, CODESPACIO) VALUES ('4', '11')
    INTO espacio___deporte(IDDEPORTE, CODESPACIO) VALUES ('4', '13')
    INTO espacio___deporte(IDDEPORTE, CODESPACIO) VALUES ('3', '20')
    INTO espacio___deporte(IDDEPORTE, CODESPACIO) VALUES ('3', '22')
    INTO espacio___deporte(IDDEPORTE, CODESPACIO) VALUES ('10', '21')
    INTO espacio___deporte(IDDEPORTE, CODESPACIO) VALUES ('10', '41')
SELECT * FROM dual;

-- Incluir 10 registros en la tabla ElemenDeprotivo con estado activo y prestado para las 3 sedes
INSERT ALL
    INTO ELEMENDEPORTIVO(CONSECELEMENTO, IDESTADO, IDTIPOELEMENTO, IDMARCA, CODESPACIO, FECHAREGISTRO) VALUES (1, '1', '2','10', '11', TO_DATE('25/09/2021', 'dd/mm/yyyy'))
    INTO ELEMENDEPORTIVO(CONSECELEMENTO, IDESTADO, IDTIPOELEMENTO, IDMARCA, CODESPACIO, FECHAREGISTRO) VALUES (2, '1', '7','30', '9', TO_DATE('23/09/2022', 'dd/mm/yyyy'))
    INTO ELEMENDEPORTIVO(CONSECELEMENTO, IDESTADO, IDTIPOELEMENTO, IDMARCA, CODESPACIO, FECHAREGISTRO) VALUES (3, '1', '2','50', '7', TO_DATE('24/12/2014', 'dd/mm/yyyy'))
    INTO ELEMENDEPORTIVO(CONSECELEMENTO, IDESTADO, IDTIPOELEMENTO, IDMARCA, CODESPACIO, FECHAREGISTRO) VALUES (4, '1', '8','70', '37', TO_DATE('02/08/2017', 'dd/mm/yyyy'))
    INTO ELEMENDEPORTIVO(CONSECELEMENTO, IDESTADO, IDTIPOELEMENTO, IDMARCA, CODESPACIO, FECHAREGISTRO) VALUES (5, '1', '10','10', '17', TO_DATE('06/11/2018', 'dd/mm/yyyy'))
    INTO ELEMENDEPORTIVO(CONSECELEMENTO, IDESTADO, IDTIPOELEMENTO, IDMARCA, CODESPACIO, FECHAREGISTRO) VALUES (6, '2', '11','30', '28', TO_DATE('12/02/2020', 'dd/mm/yyyy'))
    INTO ELEMENDEPORTIVO(CONSECELEMENTO, IDESTADO, IDTIPOELEMENTO, IDMARCA, CODESPACIO, FECHAREGISTRO) VALUES (7, '2', '3','20', '5', TO_DATE('16/10/2020', 'dd/mm/yyyy'))
    INTO ELEMENDEPORTIVO(CONSECELEMENTO, IDESTADO, IDTIPOELEMENTO, IDMARCA, CODESPACIO, FECHAREGISTRO) VALUES (8, '2', '1','40', '6', TO_DATE('01/11/2014', 'dd/mm/yyyy'))
    INTO ELEMENDEPORTIVO(CONSECELEMENTO, IDESTADO, IDTIPOELEMENTO, IDMARCA, CODESPACIO, FECHAREGISTRO) VALUES (9, '2', '6','60', '7', TO_DATE('15/04/2015', 'dd/mm/yyyy'))
    INTO ELEMENDEPORTIVO(CONSECELEMENTO, IDESTADO, IDTIPOELEMENTO, IDMARCA, CODESPACIO, FECHAREGISTRO) VALUES (10, '2', '11','80', '13', TO_DATE('10/03/2022', 'dd/mm/yyyy'))
SELECT * FROM dual;


-- Los equipos le falta el id del empleado encargado y la fecha 
INSERT ALL
    INTO Equipo(CONSEEQUIPO, IDDEPORTE, CODEMPLEADO, FECHARESOL) VALUES (1, '1','10', TO_DATE('16/09/2020', 'dd/mm/yyyy'))
    INTO Equipo(CONSEEQUIPO, IDDEPORTE, CODEMPLEADO, FECHARESOL) VALUES (2, '3', '11', TO_DATE('02/08/2020', 'dd/mm/yyyy'))
    INTO Equipo(CONSEEQUIPO, IDDEPORTE, CODEMPLEADO, FECHARESOL) VALUES (3, '4','12' , TO_DATE('16/11/2019', 'dd/mm/yyyy'))
    INTO Equipo(CONSEEQUIPO, IDDEPORTE, CODEMPLEADO, FECHARESOL) VALUES (4, '5','10' , TO_DATE('17/05/2021', 'dd/mm/yyyy'))
    INTO Equipo(CONSEEQUIPO, IDDEPORTE, CODEMPLEADO, FECHARESOL) VALUES (5, '6','11' , TO_DATE('10/10/2020', 'dd/mm/yyyy'))
    INTO Equipo(CONSEEQUIPO, IDDEPORTE, CODEMPLEADO, FECHARESOL) VALUES (6, '7','12' , TO_DATE('19/04/2020', 'dd/mm/yyyy'))
    INTO Equipo(CONSEEQUIPO, IDDEPORTE, CODEMPLEADO, FECHARESOL) VALUES (7, '9','10' , TO_DATE('22/06/2020', 'dd/mm/yyyy'))
    INTO Equipo(CONSEEQUIPO, IDDEPORTE, CODEMPLEADO, FECHARESOL) VALUES (8, '10','11' , TO_DATE('16/03/2021', 'dd/mm/yyyy'))
    INTO Equipo(CONSEEQUIPO, IDDEPORTE, CODEMPLEADO, FECHARESOL) VALUES (9, '11','12' , TO_DATE('06/07/2020', 'dd/mm/yyyy'))
    INTO Equipo(CONSEEQUIPO, IDDEPORTE, CODEMPLEADO, FECHARESOL) VALUES (10, '12','10' , TO_DATE('03/08/2020', 'dd/mm/yyyy'))
SELECT * FROM dual;

--Agregar integrantes a los equipos 
INSERT ALL
    INTO MiembroEquipo(CONSEEQUIPO, ITEMMIEMBRO, CODESTUDIANTE) VALUES (1, 1, '20211020001')
    INTO MiembroEquipo(CONSEEQUIPO, ITEMMIEMBRO, CODESTUDIANTE) VALUES (1, 2, '20211020002')
    INTO MiembroEquipo(CONSEEQUIPO, ITEMMIEMBRO, CODESTUDIANTE) VALUES (2, 3, '20211020003')
    INTO MiembroEquipo(CONSEEQUIPO, ITEMMIEMBRO, CODESTUDIANTE) VALUES (2, 4, '20211020004')
    INTO MiembroEquipo(CONSEEQUIPO, ITEMMIEMBRO, CODESTUDIANTE) VALUES (3, 5, '20211020005')
    INTO MiembroEquipo(CONSEEQUIPO, ITEMMIEMBRO, CODESTUDIANTE) VALUES (3, 6, '20211020006')
    INTO MiembroEquipo(CONSEEQUIPO, ITEMMIEMBRO, CODESTUDIANTE) VALUES (3, 7, '20211020007')
    INTO MiembroEquipo(CONSEEQUIPO, ITEMMIEMBRO, CODESTUDIANTE) VALUES (4, 8, '20211020008')
    INTO MiembroEquipo(CONSEEQUIPO, ITEMMIEMBRO, CODESTUDIANTE) VALUES (4, 9, '20211020009')
    INTO MiembroEquipo(CONSEEQUIPO, ITEMMIEMBRO, CODESTUDIANTE) VALUES (4, 10, '20211020010')
    INTO MiembroEquipo(CONSEEQUIPO, ITEMMIEMBRO, CODESTUDIANTE) VALUES (4, 11, '20211020001')
    INTO MiembroEquipo(CONSEEQUIPO, ITEMMIEMBRO, CODESTUDIANTE) VALUES (4, 12, '20211020002')
    INTO MiembroEquipo(CONSEEQUIPO, ITEMMIEMBRO, CODESTUDIANTE) VALUES (5, 13, '20211020003')
    INTO MiembroEquipo(CONSEEQUIPO, ITEMMIEMBRO, CODESTUDIANTE) VALUES (5, 14, '20211020004')
    INTO MiembroEquipo(CONSEEQUIPO, ITEMMIEMBRO, CODESTUDIANTE) VALUES (5, 15, '20211020005')
    INTO MiembroEquipo(CONSEEQUIPO, ITEMMIEMBRO, CODESTUDIANTE) VALUES (5, 17, '20211020006')
    INTO MiembroEquipo(CONSEEQUIPO, ITEMMIEMBRO, CODESTUDIANTE) VALUES (6, 18, '20211020007')
    INTO MiembroEquipo(CONSEEQUIPO, ITEMMIEMBRO, CODESTUDIANTE) VALUES (6, 19, '20211020008')
    INTO MiembroEquipo(CONSEEQUIPO, ITEMMIEMBRO, CODESTUDIANTE) VALUES (6, 20, '20211020009')
    INTO MiembroEquipo(CONSEEQUIPO, ITEMMIEMBRO, CODESTUDIANTE) VALUES (6, 21, '20211020010')
    INTO MiembroEquipo(CONSEEQUIPO, ITEMMIEMBRO, CODESTUDIANTE) VALUES (6, 22, '20211020001')
    INTO MiembroEquipo(CONSEEQUIPO, ITEMMIEMBRO, CODESTUDIANTE) VALUES (7, 23, '20211020002')
    INTO MiembroEquipo(CONSEEQUIPO, ITEMMIEMBRO, CODESTUDIANTE) VALUES (7, 24, '20211020003')
    INTO MiembroEquipo(CONSEEQUIPO, ITEMMIEMBRO, CODESTUDIANTE) VALUES (8, 25, '20211020004')
    INTO MiembroEquipo(CONSEEQUIPO, ITEMMIEMBRO, CODESTUDIANTE) VALUES (8, 26, '20211020005')
    INTO MiembroEquipo(CONSEEQUIPO, ITEMMIEMBRO, CODESTUDIANTE) VALUES (9, 27, '20211020006')
    INTO MiembroEquipo(CONSEEQUIPO, ITEMMIEMBRO, CODESTUDIANTE) VALUES (9, 28, '20211020007')
    INTO MiembroEquipo(CONSEEQUIPO, ITEMMIEMBRO, CODESTUDIANTE) VALUES (10, 29, '20211020008')
    INTO MiembroEquipo(CONSEEQUIPO, ITEMMIEMBRO, CODESTUDIANTE) VALUES (10, 30, '20211020009')
    INTO MiembroEquipo(CONSEEQUIPO, ITEMMIEMBRO, CODESTUDIANTE) VALUES (10, 31, '20211020010')
SELECT * FROM dual;

into Estudiante (CODESTUDIANTE, CODESPACIO, NOMESTUDIANTE, APELESTUDIANTE, FECHAREGESTUDIANTE, CORREOUDESTUDIANTE, FECHANACESTUDIANTE) VALUES ('20211020001','2','Melanie','Vicente',TO_DATE('25/09/2021', 'dd/mm/yyyy'),'non.magna@udistrital.edu.co',TO_DATE('17/11/1995', 'dd/mm/yyyy'))
    into Estudiante (CODESTUDIANTE, CODESPACIO, NOMESTUDIANTE, APELESTUDIANTE, FECHAREGESTUDIANTE, CORREOUDESTUDIANTE, FECHANACESTUDIANTE) VALUES ('20211020002','2','Hyatt','Prieto',TO_DATE('10/03/2022', 'dd/mm/yyyy'),'scelerisque@udistrital.edu.co',TO_DATE('06/04/1998', 'dd/mm/yyyy'))
    into Estudiante (CODESTUDIANTE, CODESPACIO, NOMESTUDIANTE, APELESTUDIANTE, FECHAREGESTUDIANTE, CORREOUDESTUDIANTE, FECHANACESTUDIANTE) VALUES ('20211020003','2','Sacha','Trinidad',TO_DATE('23/09/2022', 'dd/mm/yyyy'),'erat.neque@udistrital.edu.co',TO_DATE('02/08/2000', 'dd/mm/yyyy'))
    into Estudiante (CODESTUDIANTE, CODESPACIO, NOMESTUDIANTE, APELESTUDIANTE, FECHAREGESTUDIANTE, CORREOUDESTUDIANTE, FECHANACESTUDIANTE) VALUES ('20211020004','2','Harper','Valenzuela',TO_DATE('15/04/2015', 'dd/mm/yyyy'),'vel.nisl@udistrital.edu.co',TO_DATE('07/07/1995', 'dd/mm/yyyy'))
    into Estudiante (CODESTUDIANTE, CODESPACIO, NOMESTUDIANTE, APELESTUDIANTE, FECHAREGESTUDIANTE, CORREOUDESTUDIANTE, FECHANACESTUDIANTE) VALUES ('20211020005','2','Thor','Castro',TO_DATE('24/12/2014', 'dd/mm/yyyy'),'tempor.augue@udistrital.edu.co',TO_DATE('23/12/2001', 'dd/mm/yyyy'))
    into Estudiante (CODESTUDIANTE, CODESPACIO, NOMESTUDIANTE, APELESTUDIANTE, FECHAREGESTUDIANTE, CORREOUDESTUDIANTE, FECHANACESTUDIANTE) VALUES ('20211020006','3','Lee','Carrasco',TO_DATE('01/11/2014', 'dd/mm/yyyy'),'dignissim@udistrital.edu.co',TO_DATE('19/12/2000', 'dd/mm/yyyy'))
    into Estudiante (CODESTUDIANTE, CODESPACIO, NOMESTUDIANTE, APELESTUDIANTE, FECHAREGESTUDIANTE, CORREOUDESTUDIANTE, FECHANACESTUDIANTE) VALUES ('20211020007','3','Orli','Matilde',TO_DATE('02/08/2017', 'dd/mm/yyyy'),'pede.nonummy@udistrital.edu.co',TO_DATE('17/01/1996', 'dd/mm/yyyy'))
    into Estudiante (CODESTUDIANTE, CODESPACIO, NOMESTUDIANTE, APELESTUDIANTE, FECHAREGESTUDIANTE, CORREOUDESTUDIANTE, FECHANACESTUDIANTE) VALUES ('20211020008','3','Raymond','Vega',TO_DATE('06/11/2018', 'dd/mm/yyyy'),'quisque@udistrital.edu.co',TO_DATE('22/02/1996', 'dd/mm/yyyy'))
    into Estudiante (CODESTUDIANTE, CODESPACIO, NOMESTUDIANTE, APELESTUDIANTE, FECHAREGESTUDIANTE, CORREOUDESTUDIANTE, FECHANACESTUDIANTE) VALUES ('20211020009','3','Carlos','Ignacio',TO_DATE('16/10/2020', 'dd/mm/yyyy'),'senectus.et@udistrital.edu.co',TO_DATE('03/02/1996', 'dd/mm/yyyy'))
    into Estudiante (CODESTUDIANTE, CODESPACIO, NOMESTUDIANTE, APELESTUDIANTE, FECHAREGESTUDIANTE, CORREOUDESTUDIANTE, FECHANACESTUDIANTE) VALUES ('20211020010','3','Aidan','Diem',TO_DATE('12/02/2020', 'dd/mm/yyyy'),'iaculis.odio@udistrital.edu.co',TO_DATE('08/01/1998', 'dd/mm/yyyy'))

--Responsables de la programacion
INSERT ALL
    INTO Responsable(CONSECPROGRAMACION, CONCECRES, IDROL, CODEMPLEADO, FECHAINI, FECHAFIN) VALUES (1,1,2,4, TO_DATE('25/09/2021', 'dd/mm/yyyy'),  TO_DATE('30/09/2021', 'dd/mm/yyyy'))
    INTO Responsable(CONSECPROGRAMACION, CONCECRES, IDROL, CODEMPLEADO, FECHAINI, FECHAFIN) VALUES (2,2,2,5, TO_DATE('25/09/2021', 'dd/mm/yyyy'),  TO_DATE('30/09/2021', 'dd/mm/yyyy'))
    INTO Responsable(CONSECPROGRAMACION, CONCECRES, IDROL, CODEMPLEADO, FECHAINI, FECHAFIN) VALUES (3,3,2,6, TO_DATE('25/09/2021', 'dd/mm/yyyy'),  TO_DATE('30/09/2021', 'dd/mm/yyyy'))
    INTO Responsable(CONSECPROGRAMACION, CONCECRES, IDROL, CODEMPLEADO, FECHAINI, FECHAFIN) VALUES (4,4,2,7, TO_DATE('25/09/2021', 'dd/mm/yyyy'),  TO_DATE('30/09/2021', 'dd/mm/yyyy'))
    INTO Responsable(CONSECPROGRAMACION, CONCECRES, IDROL, CODEMPLEADO, FECHAINI, FECHAFIN) VALUES (5,5,3,10, TO_DATE('25/09/2021', 'dd/mm/yyyy'),  TO_DATE('30/09/2021', 'dd/mm/yyyy'))
    INTO Responsable(CONSECPROGRAMACION, CONCECRES, IDROL, CODEMPLEADO, FECHAINI, FECHAFIN) VALUES (6,6,3,11, TO_DATE('25/09/2021', 'dd/mm/yyyy'),  TO_DATE('30/09/2021', 'dd/mm/yyyy'))
    INTO Responsable(CONSECPROGRAMACION, CONCECRES, IDROL, CODEMPLEADO, FECHAINI, FECHAFIN) VALUES (7,7,3,12, TO_DATE('25/09/2021', 'dd/mm/yyyy'),  TO_DATE('30/09/2021', 'dd/mm/yyyy'))
    INTO Responsable(CONSECPROGRAMACION, CONCECRES, IDROL, CODEMPLEADO, CODESTUDIANTE, FECHAINI, FECHAFIN) VALUES (8,8,3,4,'20211020001',TO_DATE('25/09/2021', 'dd/mm/yyyy'),  TO_DATE('30/09/2021', 'dd/mm/yyyy'))
    INTO Responsable(CONSECPROGRAMACION, CONCECRES, IDROL, CODEMPLEADO, CODESTUDIANTE, FECHAINI, FECHAFIN) VALUES (9,9,2,5,'20211020002',TO_DATE('25/09/2021', 'dd/mm/yyyy'),  TO_DATE('30/09/2021', 'dd/mm/yyyy'))
    INTO Responsable(CONSECPROGRAMACION, CONCECRES, IDROL, CODEMPLEADO, CODESTUDIANTE, FECHAINI, FECHAFIN) VALUES (10,10,2,6,'20211020003',TO_DATE('25/09/2021', 'dd/mm/yyyy'),  TO_DATE('30/09/2021', 'dd/mm/yyyy'))
    INTO Responsable(CONSECPROGRAMACION, CONCECRES, IDROL, CODEMPLEADO, CODESTUDIANTE, FECHAINI, FECHAFIN) VALUES (11,11,2,7,'20211020004',TO_DATE('25/09/2021', 'dd/mm/yyyy'),  TO_DATE('30/09/2021', 'dd/mm/yyyy'))
    INTO Responsable(CONSECPROGRAMACION, CONCECRES, IDROL, CODEMPLEADO, CODESTUDIANTE, FECHAINI, FECHAFIN) VALUES (12,12,2,4,'20211020006',TO_DATE('25/09/2021', 'dd/mm/yyyy'),  TO_DATE('30/09/2021', 'dd/mm/yyyy'))
SELECT * FROM dual;
