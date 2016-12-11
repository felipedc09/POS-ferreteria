--------------------------------------------------------
-- Archivo creado  - domingo-diciembre-11-2016
--------------------------------------------------------
REM INSERTING into FERRETERIA.BANCO
SET DEFINE OFF;
REM INSERTING into FERRETERIA.CARGO
SET DEFINE OFF;
REM INSERTING into FERRETERIA.CARGOEMPLEADO
SET DEFINE OFF;
REM INSERTING into FERRETERIA.CATALOGOPRODUCTO
SET DEFINE OFF;
REM INSERTING into FERRETERIA.CONTADO
SET DEFINE OFF;
REM INSERTING into FERRETERIA.DESCUENTO
SET DEFINE OFF;
REM INSERTING into FERRETERIA.DETALLETRANSACCION
SET DEFINE OFF;
REM INSERTING into FERRETERIA.DISTRIBUCION
SET DEFINE OFF;
REM INSERTING into FERRETERIA.EMPLEADO
SET DEFINE OFF;
Insert into FERRETERIA.EMPLEADO (IDEMPLEADO,NOMBREEMPLEADO,APELLIDOEMPLEADO,TELEFONOEMPLEADO,DIRECCIONEMPLEADO,EMAILEMPLEADO,FECHAINGRESO,FECHARETIRO,IDENTIFICACION,PASS) values ('1','Juan Camilo','Torres','2288726','calle 86 # 95 c 16','skamilo9406@gmail.com',to_date('12/01/10','DD/MM/RR'),null,'1014255060','12345camilo');
Insert into FERRETERIA.EMPLEADO (IDEMPLEADO,NOMBREEMPLEADO,APELLIDOEMPLEADO,TELEFONOEMPLEADO,DIRECCIONEMPLEADO,EMAILEMPLEADO,FECHAINGRESO,FECHARETIRO,IDENTIFICACION,PASS) values ('2','Felipe','Duitama','1234567','calle aqui','felidedc@gmail.com',to_date('13/12/12','DD/MM/RR'),null,'1021031045','12345felipe');
REM INSERTING into FERRETERIA.ESTANTE
SET DEFINE OFF;
REM INSERTING into FERRETERIA.HISTORICOPRECIO
SET DEFINE OFF;
REM INSERTING into FERRETERIA.IDTIPOCONTADO
SET DEFINE OFF;
REM INSERTING into FERRETERIA.INVENTARIO
SET DEFINE OFF;
REM INSERTING into FERRETERIA.MARCA
SET DEFINE OFF;
Insert into FERRETERIA.MARCA (IDMARCA,NOMBREMARCA) values ('1','Loctite');
Insert into FERRETERIA.MARCA (IDMARCA,NOMBREMARCA) values ('2','Acesa');
Insert into FERRETERIA.MARCA (IDMARCA,NOMBREMARCA) values ('3','Alyco');
Insert into FERRETERIA.MARCA (IDMARCA,NOMBREMARCA) values ('4','Izar');
Insert into FERRETERIA.MARCA (IDMARCA,NOMBREMARCA) values ('5','Blue-master');
Insert into FERRETERIA.MARCA (IDMARCA,NOMBREMARCA) values ('6','Bosch');
Insert into FERRETERIA.MARCA (IDMARCA,NOMBREMARCA) values ('7','Hitachi');
Insert into FERRETERIA.MARCA (IDMARCA,NOMBREMARCA) values ('8','Aixia');
Insert into FERRETERIA.MARCA (IDMARCA,NOMBREMARCA) values ('9','Alex');
Insert into FERRETERIA.MARCA (IDMARCA,NOMBREMARCA) values ('10','Unbrako');
Insert into FERRETERIA.MARCA (IDMARCA,NOMBREMARCA) values ('11','Tyrolit');
Insert into FERRETERIA.MARCA (IDMARCA,NOMBREMARCA) values ('12','Pferd');
Insert into FERRETERIA.MARCA (IDMARCA,NOMBREMARCA) values ('13','Bezabala');
Insert into FERRETERIA.MARCA (IDMARCA,NOMBREMARCA) values ('14','Jaguar');
Insert into FERRETERIA.MARCA (IDMARCA,NOMBREMARCA) values ('15','Norma');
Insert into FERRETERIA.MARCA (IDMARCA,NOMBREMARCA) values ('16','Mikalor');
Insert into FERRETERIA.MARCA (IDMARCA,NOMBREMARCA) values ('17','Index');
Insert into FERRETERIA.MARCA (IDMARCA,NOMBREMARCA) values ('18','Plastipol');
Insert into FERRETERIA.MARCA (IDMARCA,NOMBREMARCA) values ('19','eapsol');
Insert into FERRETERIA.MARCA (IDMARCA,NOMBREMARCA) values ('20','Festo');
Insert into FERRETERIA.MARCA (IDMARCA,NOMBREMARCA) values ('21','Agrati-group');
REM INSERTING into FERRETERIA.PAGO
SET DEFINE OFF;
REM INSERTING into FERRETERIA.PERSONA
SET DEFINE OFF;
Insert into FERRETERIA.PERSONA (NUMCEDULA,NOMBREPERSONA,APELLIDOPERSONA,TELEFONOPERSONA,DIRECCIONPERSONA,EMAILPERSONA) values ('1','Cristian','Garcia Cortez','2267893','calle 18-12 carrera 10','distrielectricos@gmail.com');
REM INSERTING into FERRETERIA.TIPOCLIENTE
SET DEFINE OFF;
REM INSERTING into FERRETERIA.TIPODESCUENTO
SET DEFINE OFF;
REM INSERTING into FERRETERIA.TIPOESTANTE
SET DEFINE OFF;
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('1','Herramientas de mano pequeno','20');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('2','Herramientas de sujecion pequeno','20');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('3','Elementos de union pequeno','20');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('4','Herramientas para construccion e instaladores pequeno','20');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('5','Herramientas para maquina-herramienta pequeno','20');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('6','Herramientas para madera y carpinteria pequeno','20');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('7','Herramientas abrasivas pequeno','20');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('8','Herramientas electricas y neumaticas pequeno','20');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('9','Herramientas automotrices para jardinería pequeno','20');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('10','Herramientas manuales para huerto y jardin pequeno','20');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('11','Maquinas manuales para construccion y obra publica pequeno','20');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('12','Materiales de desgaste para construccion y obra publica pequeno','20');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('13','Medios y equipos de obra pequeno','20');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('14','Herrajes pequeno','20');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('15','Automatismos para puertas y ventanas pequeno','20');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('16','Articulos de seguridad pequeno','20');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('17','Equipamiento para soldadura pequeno','20');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('18','Valvulas pequeno','20');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('19','Tuberias y sus accesorios pequeno','20');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('20','Componentes diversos pequeno','20');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('21','Productos de fijacion y sellado pequeno','20');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('22','Pinturas esmaltes y barnices pequeno','20');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('23','Escaleras pequeno','20');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('24','Equipamiento de taller pequeno','20');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('25','Lubricantes pequeno','20');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('26','Productos para limpieza profesional pequeno','20');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('27','Utensilios de limpieza pequeno','20');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('28','Productos de higiene personal pequeno','20');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('29','Equipos de proteccion individual pequeno','20');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('30','Vestuario laboral pequeno','20');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('31','Menaje de cocina pequeno','20');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('32','Articulos para el hogar pequeno','20');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('33','Iluminacion y alumbrado pequeno','20');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('34','Medicion dimensional pequeno','20');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('104','Contenedor estante mediano ','5');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('105','Contenedor estante grande','5');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('35','Herramientas de mano mediano','50');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('36','Herramientas de sujecion mediano','50');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('37','Elementos de union mediano','50');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('38','Herramientas para construccion e instaladores mediano','50');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('39','Herramientas para maquina-herramienta mediano','50');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('40','Herramientas para madera y carpinteria mediano','50');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('41','Herramientas abrasivas mediano','50');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('42','Herramientas electricas y neumaticas mediano','50');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('43','Herramientas automotrices para jardinería mediano','50');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('44','Herramientas manuales para huerto y jardin mediano','50');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('45','Maquinas manuales para construccion y obra publica mediano','50');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('46','Materiales de desgaste para construccion y obra publica mediano','50');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('47','Medios y equipos de obra mediano','50');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('48','Herrajes mediano','50');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('49','Automatismos para puertas y ventanas mediano','50');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('50','Articulos de seguridad mediano','50');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('51','Equipamiento para soldadura mediano','50');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('52','Valvulas mediano','50');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('53','Tuberias y sus accesorios mediano','50');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('54','Componentes diversos mediano','50');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('55','Productos de fijacion y sellado mediano','50');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('56','Pinturas esmaltes y barnices mediano','50');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('57','Escaleras mediano','50');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('58','Equipamiento de taller mediano','50');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('59','Lubricantes mediano','50');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('60','Productos para limpieza profesional mediano','50');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('61','Utensilios de limpieza mediano','50');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('62','Productos de higiene personal mediano','50');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('63','Equipos de proteccion individual mediano','50');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('64','Vestuario laboral mediano','50');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('65','Menaje de cocina mediano','50');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('66','Articulos para el hogar mediano','50');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('67','Iluminacion y alumbrado mediano','50');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('68','Medicion dimensional mediano','50');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('69','Herramientas de mano grande','100');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('70','Herramientas de sujecion grande','100');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('71','Elementos de union grande','100');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('72','Herramientas para construccion e instaladores grande','100');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('73','Herramientas para maquina-herramienta grande','100');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('74','Herramientas para madera y carpinteria grande','100');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('75','Herramientas abrasivas grande','100');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('76','Herramientas electricas y neumaticas grande','100');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('77','Herramientas automotrices para jardinería grande','100');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('78','Herramientas manuales para huerto y jardin grande','100');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('79','Maquinas manuales para construccion y obra publica grande','100');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('80','Materiales de desgaste para construccion y obra publica grande','100');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('81','Medios y equipos de obra grande','100');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('82','Herrajes grande','100');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('83','Automatismos para puertas y ventanas grande','100');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('84','Articulos de seguridad grande','100');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('85','Equipamiento para soldadura grande','100');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('86','Valvulas grande','100');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('87','Tuberias y sus accesorios grande','100');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('88','Componentes diversos grande','100');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('89','Productos de fijacion y sellado grande','100');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('90','Pinturas esmaltes y barnices grande','100');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('91','Escaleras grande','100');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('92','Equipamiento de taller grande','100');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('93','Lubricantes grande','100');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('94','Productos para limpieza profesional grande','100');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('95','Utensilios de limpieza grande','100');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('96','Productos de higiene personal grande','100');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('97','Equipos de proteccion individual grande','100');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('98','Vestuario laboral grande','100');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('99','Menaje de cocina grande','100');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('100','Articulos para el hogar grande','100');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('101','Iluminacion y alumbrado grande','100');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('102','Medicion dimensional grande','100');
Insert into FERRETERIA.TIPOESTANTE (IDTIPOESTANTE,NOMBRETIPOESTANTE,TAMANO) values ('103','Contenedor estante pequeno','5');
REM INSERTING into FERRETERIA.TIPOMOV
SET DEFINE OFF;
REM INSERTING into FERRETERIA.TIPOPAGO
SET DEFINE OFF;
REM INSERTING into FERRETERIA.TIPOPERSONA
SET DEFINE OFF;
REM INSERTING into FERRETERIA.TIPOPRODUCTO
SET DEFINE OFF;
Insert into FERRETERIA.TIPOPRODUCTO (IDTIPOPRODUCTO,NOMBRETIPOPRODUCTO) values ('1','Herramientas de mano');
Insert into FERRETERIA.TIPOPRODUCTO (IDTIPOPRODUCTO,NOMBRETIPOPRODUCTO) values ('2','Herramientas de sujecion');
Insert into FERRETERIA.TIPOPRODUCTO (IDTIPOPRODUCTO,NOMBRETIPOPRODUCTO) values ('3','Elementos de union');
Insert into FERRETERIA.TIPOPRODUCTO (IDTIPOPRODUCTO,NOMBRETIPOPRODUCTO) values ('4','Herramientas para construccion e instaladores');
Insert into FERRETERIA.TIPOPRODUCTO (IDTIPOPRODUCTO,NOMBRETIPOPRODUCTO) values ('5','Herramientas para maquina-herramienta');
Insert into FERRETERIA.TIPOPRODUCTO (IDTIPOPRODUCTO,NOMBRETIPOPRODUCTO) values ('6','Herramientas para madera y carpinteria');
Insert into FERRETERIA.TIPOPRODUCTO (IDTIPOPRODUCTO,NOMBRETIPOPRODUCTO) values ('7','Herramientas abrasivas');
Insert into FERRETERIA.TIPOPRODUCTO (IDTIPOPRODUCTO,NOMBRETIPOPRODUCTO) values ('8','Herramientas electricas y neumaticas');
Insert into FERRETERIA.TIPOPRODUCTO (IDTIPOPRODUCTO,NOMBRETIPOPRODUCTO) values ('9','Herramientas automotrices para jardinería');
Insert into FERRETERIA.TIPOPRODUCTO (IDTIPOPRODUCTO,NOMBRETIPOPRODUCTO) values ('10','Herramientas manuales para huerto y jardin');
Insert into FERRETERIA.TIPOPRODUCTO (IDTIPOPRODUCTO,NOMBRETIPOPRODUCTO) values ('11','Maquinas manuales para construccion y obra publica');
Insert into FERRETERIA.TIPOPRODUCTO (IDTIPOPRODUCTO,NOMBRETIPOPRODUCTO) values ('12','Materiales de desgaste para construccion y obra publica');
Insert into FERRETERIA.TIPOPRODUCTO (IDTIPOPRODUCTO,NOMBRETIPOPRODUCTO) values ('13','Medios y equipos de obra');
Insert into FERRETERIA.TIPOPRODUCTO (IDTIPOPRODUCTO,NOMBRETIPOPRODUCTO) values ('14','Herrajes');
Insert into FERRETERIA.TIPOPRODUCTO (IDTIPOPRODUCTO,NOMBRETIPOPRODUCTO) values ('15','Automatismos para puertas y ventanas');
Insert into FERRETERIA.TIPOPRODUCTO (IDTIPOPRODUCTO,NOMBRETIPOPRODUCTO) values ('16','Articulos de seguridad');
Insert into FERRETERIA.TIPOPRODUCTO (IDTIPOPRODUCTO,NOMBRETIPOPRODUCTO) values ('17','Equipamiento para soldadura');
Insert into FERRETERIA.TIPOPRODUCTO (IDTIPOPRODUCTO,NOMBRETIPOPRODUCTO) values ('18','Valvulas');
Insert into FERRETERIA.TIPOPRODUCTO (IDTIPOPRODUCTO,NOMBRETIPOPRODUCTO) values ('19','Tuberias y sus accesorios');
Insert into FERRETERIA.TIPOPRODUCTO (IDTIPOPRODUCTO,NOMBRETIPOPRODUCTO) values ('20','Componentes diversos');
Insert into FERRETERIA.TIPOPRODUCTO (IDTIPOPRODUCTO,NOMBRETIPOPRODUCTO) values ('21','Productos de fijacion y sellado');
Insert into FERRETERIA.TIPOPRODUCTO (IDTIPOPRODUCTO,NOMBRETIPOPRODUCTO) values ('22','Pinturas esmaltes y barnices');
Insert into FERRETERIA.TIPOPRODUCTO (IDTIPOPRODUCTO,NOMBRETIPOPRODUCTO) values ('23','Escaleras');
Insert into FERRETERIA.TIPOPRODUCTO (IDTIPOPRODUCTO,NOMBRETIPOPRODUCTO) values ('24','Equipamiento de taller');
Insert into FERRETERIA.TIPOPRODUCTO (IDTIPOPRODUCTO,NOMBRETIPOPRODUCTO) values ('25','Lubricantes');
Insert into FERRETERIA.TIPOPRODUCTO (IDTIPOPRODUCTO,NOMBRETIPOPRODUCTO) values ('26','Productos para limpieza profesional');
Insert into FERRETERIA.TIPOPRODUCTO (IDTIPOPRODUCTO,NOMBRETIPOPRODUCTO) values ('27','Utensilios de limpieza');
Insert into FERRETERIA.TIPOPRODUCTO (IDTIPOPRODUCTO,NOMBRETIPOPRODUCTO) values ('28','Productos de higiene personal');
Insert into FERRETERIA.TIPOPRODUCTO (IDTIPOPRODUCTO,NOMBRETIPOPRODUCTO) values ('29','Equipos de proteccion individual');
Insert into FERRETERIA.TIPOPRODUCTO (IDTIPOPRODUCTO,NOMBRETIPOPRODUCTO) values ('30','Vestuario laboral');
Insert into FERRETERIA.TIPOPRODUCTO (IDTIPOPRODUCTO,NOMBRETIPOPRODUCTO) values ('31','Menaje de cocina');
Insert into FERRETERIA.TIPOPRODUCTO (IDTIPOPRODUCTO,NOMBRETIPOPRODUCTO) values ('32','Articulos para el hogar');
Insert into FERRETERIA.TIPOPRODUCTO (IDTIPOPRODUCTO,NOMBRETIPOPRODUCTO) values ('33','Iluminacion y alumbrado');
Insert into FERRETERIA.TIPOPRODUCTO (IDTIPOPRODUCTO,NOMBRETIPOPRODUCTO) values ('34','Medicion dimensional');
REM INSERTING into FERRETERIA.TIPOTARJETA
SET DEFINE OFF;
REM INSERTING into FERRETERIA.TIPOTRANSACCION
SET DEFINE OFF;
REM INSERTING into FERRETERIA.TRANSACCION
SET DEFINE OFF;
REM INSERTING into FERRETERIA.UBICACION
SET DEFINE OFF;
