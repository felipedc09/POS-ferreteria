/*==============================================================*/
/* DBMS name:      ORACLE Version 11g                           */
/* Created on:     10/12/2016 6:43:06 p.m.                      */
/*==============================================================*/


alter table CARGOEMPLEADO
   drop constraint FK_CARGOEMP_RELATIONS_CARGO;

alter table CARGOEMPLEADO
   drop constraint FK_CARGOEMP_RELATIONS_EMPLEADO;

alter table CATALOGOPRODUCTO
   drop constraint FK_CATALOGO_PRODUCTO_TIPOPROD;

alter table CATALOGOPRODUCTO
   drop constraint FK_CATALOGO_RELATIONS_ESTANTE;

alter table CATALOGOPRODUCTO
   drop constraint FK_CATALOGO_RELATIONS_MARCA;

alter table CONTADO
   drop constraint FK_CONTADO_RELATIONS_PERSONA;

alter table CONTADO
   drop constraint FK_CONTADO_RELATIONS_IDTIPOCO;

alter table DESCUENTO
   drop constraint FK_DESCUENT_RELATIONS_TIPOPERS;

alter table DESCUENTO
   drop constraint FK_DESCUENT_RELATIONS_TIPODESC;

alter table DETALLETRANSACCION
   drop constraint FK_DETALLET_RELATIONS_CATALOGO;

alter table DETALLETRANSACCION
   drop constraint FK_DETALLET_RELATIONS_TRANSACC;

alter table DISTRIBUCION
   drop constraint FK_DISTRIBU_PROVEEDOR_PERSONA;

alter table DISTRIBUCION
   drop constraint FK_DISTRIBU_RELATIONS_CATALOGO;

alter table ESTANTE
   drop constraint FK_ESTANTE_RELATIONS_ESTANTE;

alter table ESTANTE
   drop constraint FK_ESTANTE_RELATIONS_TIPOESTA;

alter table HISTORICOPRECIO
   drop constraint FK_HISTORIC_RELATIONS_CATALOGO;

alter table INVENTARIO
   drop constraint FK_INVENTAR_RELATIONS_TIPOMOV;

alter table INVENTARIO
   drop constraint FK_INVENTAR_SOPORTE_DETALLET;

alter table PAGO
   drop constraint FK_PAGO_FACTURANU_TRANSACC;

alter table PAGO
   drop constraint FK_PAGO_RELATIONS_TIPOPAGO;

alter table PAGO
   drop constraint FK_PAGO_RELATIONS_TIPOTARJ;

alter table PAGO
   drop constraint FK_PAGO_RELATIONS_BANCO;

alter table TIPOCLIENTE
   drop constraint FK_TIPOCLIE_RELATIONS_PERSONA;

alter table TIPOCLIENTE
   drop constraint FK_TIPOCLIE_RELATIONS_TIPOPERS;

alter table TIPOPERSONA
   drop constraint FK_TIPOPERS_RELATIONS_TIPOPERS;

alter table TRANSACCION
   drop constraint FK_TRANSACC_CLIENTE_P_PERSONA;

alter table TRANSACCION
   drop constraint FK_TRANSACC_RELATIONS_TRANSACC;

alter table TRANSACCION
   drop constraint FK_TRANSACC_RELATIONS_TIPOTRAN;

alter table TRANSACCION
   drop constraint FK_TRANSACC_RELATIONS_EMPLEADO;

alter table UBICACION
   drop constraint FK_UBICACIO_RELATIONS_ESTANTE;

drop table BANCO cascade constraints;

drop table CARGO cascade constraints;

drop index RELATIONSHIP_2_FK;

drop index RELATIONSHIP_1_FK;

drop table CARGOEMPLEADO cascade constraints;

drop index RELATIONSHIP_29_FK;

drop index PRODUCTO_FK;

drop index RELATIONSHIP_7_FK;

drop table CATALOGOPRODUCTO cascade constraints;

drop index RELATIONSHIP_22_FK;

drop index RELATIONSHIP_21_FK;

drop table CONTADO cascade constraints;

drop index RELATIONSHIP_24_FK;

drop index RELATIONSHIP_20_FK;

drop table DESCUENTO cascade constraints;

drop index RELATIONSHIP_23_FK;

drop index RELATIONSHIP_10_FK;

drop table DETALLETRANSACCION cascade constraints;

drop index PROVEEDOR_FK;

drop index RELATIONSHIP_13_FK;

drop table DISTRIBUCION cascade constraints;

drop table EMPLEADO cascade constraints;

drop index RELATIONSHIP_28_FK;

drop index RELATIONSHIP_5_FK;

drop table ESTANTE cascade constraints;

drop index RELATIONSHIP_8_FK;

drop table HISTORICOPRECIO cascade constraints;

drop table IDTIPOCONTADO cascade constraints;

drop index RELATIONSHIP_12_FK;

drop index SOPORTE_FK;

drop table INVENTARIO cascade constraints;

drop table MARCA cascade constraints;

drop index FACTURANUMERO_FK;

drop index RELATIONSHIP_16_FK;

drop index RELATIONSHIP_15_FK;

drop index RELATIONSHIP_14_FK;

drop table PAGO cascade constraints;

drop table PERSONA cascade constraints;

drop index RELATIONSHIP_19_FK;

drop index RELATIONSHIP_18_FK;

drop table TIPOCLIENTE cascade constraints;

drop table TIPODESCUENTO cascade constraints;

drop table TIPOESTANTE cascade constraints;

drop table TIPOMOV cascade constraints;

drop table TIPOPAGO cascade constraints;

drop index RELATIONSHIP_27_FK;

drop table TIPOPERSONA cascade constraints;

drop table TIPOPRODUCTO cascade constraints;

drop table TIPOTARJETA cascade constraints;

drop table TIPOTRANSACCION cascade constraints;

drop index RELATIONSHIP_30_FK;

drop index RELATIONSHIP_26_FK;

drop index CLIENTE_PROVEEDOR_FK;

drop index RELATIONSHIP_3_FK;

drop table TRANSACCION cascade constraints;

drop index RELATIONSHIP_6_FK;

drop table UBICACION cascade constraints;

/*==============================================================*/
/* Table: BANCO                                                 */
/*==============================================================*/
create table BANCO 
(
   IDBANCO              NUMBER(10)           not null,
   NOMBREBANCO          VARCHAR2(100)        not null,
   constraint PK_BANCO primary key (IDBANCO)
);

/*==============================================================*/
/* Table: CARGO                                                 */
/*==============================================================*/
create table CARGO 
(
   IDCARGO              NUMBER(10)           not null,
   NOMBRECARGO          VARCHAR2(100)        not null,
   DESCRIPCION          VARCHAR2(200),
   constraint PK_CARGO primary key (IDCARGO)
);

/*==============================================================*/
/* Table: CARGOEMPLEADO                                         */
/*==============================================================*/
create table CARGOEMPLEADO 
(
   IDCARGOEMPLEADO      NUMBER(10)           not null,
   IDCARGOFCE           NUMBER(10)           not null,
   IDEMPLEADOFCE        NUMBER(10)           not null,
   constraint PK_CARGOEMPLEADO primary key (IDCARGOEMPLEADO)
);

/*==============================================================*/
/* Index: RELATIONSHIP_1_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_1_FK on CARGOEMPLEADO (
   IDCARGOFCE ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_2_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_2_FK on CARGOEMPLEADO (
   IDEMPLEADOFCE ASC
);

/*==============================================================*/
/* Table: CATALOGOPRODUCTO                                      */
/*==============================================================*/
create table CATALOGOPRODUCTO 
(
   REFERENCIA           NUMBER(10)           not null,
   IDMARCAFCP           NUMBER(10)           not null,
   IDTIPOPRODUCTOFCP    NUMBER(10)           not null,
   IDESTANTEFCP         NUMBER(10)           not null,
   constraint PK_CATALOGOPRODUCTO primary key (REFERENCIA)
);

/*==============================================================*/
/* Index: RELATIONSHIP_7_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_7_FK on CATALOGOPRODUCTO (
   IDMARCAFCP ASC
);

/*==============================================================*/
/* Index: PRODUCTO_FK                                           */
/*==============================================================*/
create index PRODUCTO_FK on CATALOGOPRODUCTO (
   IDTIPOPRODUCTOFCP ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_29_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_29_FK on CATALOGOPRODUCTO (
   IDESTANTEFCP ASC
);

/*==============================================================*/
/* Table: CONTADO                                               */
/*==============================================================*/
create table CONTADO 
(
   IDCONTADO            NUMBER(10)           not null,
   NUMCEDULAFC          NUMBER(10),
   IDTIPOCONTADOFC      NUMBER               not null,
   constraint PK_CONTADO primary key (IDCONTADO)
);

/*==============================================================*/
/* Index: RELATIONSHIP_21_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_21_FK on CONTADO (
   NUMCEDULAFC ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_22_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_22_FK on CONTADO (
   IDTIPOCONTADOFC ASC
);

/*==============================================================*/
/* Table: DESCUENTO                                             */
/*==============================================================*/
create table DESCUENTO 
(
   IDDESSCUENTO         NUMBER(10)           not null,
   IDTIPOPERSONAFD      NUMBER(10)           not null,
   IDTIPODESCUENTOFD    NUMBER(10)           not null,
   FECHAINICIODESCUENTO DATE                 not null,
   FECHAFINDESCUENTO    DATE,
   constraint PK_DESCUENTO primary key (IDDESSCUENTO)
);

/*==============================================================*/
/* Index: RELATIONSHIP_20_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_20_FK on DESCUENTO (
   IDTIPOPERSONAFD ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_24_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_24_FK on DESCUENTO (
   IDTIPODESCUENTOFD ASC
);

/*==============================================================*/
/* Table: DETALLETRANSACCION                                    */
/*==============================================================*/
create table DETALLETRANSACCION 
(
   IDDETALLETRANSACCION NUMBER(10)           not null,
   REFERENCIAFDT        NUMBER(10)           not null,
   NUMEROTRANSACCIONFDT NUMBER(10)           not null,
   constraint PK_DETALLETRANSACCION primary key (IDDETALLETRANSACCION, NUMEROTRANSACCIONFDT)
);

/*==============================================================*/
/* Index: RELATIONSHIP_10_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_10_FK on DETALLETRANSACCION (
   REFERENCIAFDT ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_23_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_23_FK on DETALLETRANSACCION (
   NUMEROTRANSACCIONFDT ASC
);

/*==============================================================*/
/* Table: DISTRIBUCION                                          */
/*==============================================================*/
create table DISTRIBUCION 
(
   IDDISTRIBUCION       NUMBER(10)           not null,
   REFERENCIAFD         NUMBER(10)           not null,
   NUMCEDULAFDI         NUMBER(10)           not null,
   constraint PK_DISTRIBUCION primary key (IDDISTRIBUCION)
);

/*==============================================================*/
/* Index: RELATIONSHIP_13_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_13_FK on DISTRIBUCION (
   REFERENCIAFD ASC
);

/*==============================================================*/
/* Index: PROVEEDOR_FK                                          */
/*==============================================================*/
create index PROVEEDOR_FK on DISTRIBUCION (
   NUMCEDULAFDI ASC
);

/*==============================================================*/
/* Table: EMPLEADO                                              */
/*==============================================================*/
create table EMPLEADO 
(
   IDEMPLEADO           NUMBER(10)           not null,
   NOMBREEMPLEADO       VARCHAR2(50)         not null,
   APELLIDOEMPLEADO     VARCHAR2(50)         not null,
   TELEFONOEMPLEADO     NUMBER(10)           not null,
   DIRECCIONEMPLEADO    VARCHAR2(200)        not null,
   EMAILEMPLEADO        VARCHAR2(100)        not null,
   FECHAINGRESO         DATE                 not null,
   FECHARETIRO          DATE,
   IDENTIFICACION		VARCHAR2(20)		 not null,
   PASS                 VARCHAR2(20)         not null,
   constraint PK_EMPLEADO primary key (IDEMPLEADO)
);

/*==============================================================*/
/* Table: ESTANTE                                               */
/*==============================================================*/
create table ESTANTE 
(
   IDESTANTE            NUMBER(10)           not null,
   IDTIPOESTANTEFE      NUMBER(10)           not null,
   IDESTANTEFE          NUMBER(10),
   constraint PK_ESTANTE primary key (IDESTANTE)
);

/*==============================================================*/
/* Index: RELATIONSHIP_5_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_5_FK on ESTANTE (
   IDTIPOESTANTEFE ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_28_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_28_FK on ESTANTE (
   IDESTANTEFE ASC
);

/*==============================================================*/
/* Table: HISTORICOPRECIO                                       */
/*==============================================================*/
create table HISTORICOPRECIO 
(
   CONSECUTIVO          NUMBER(10)           not null,
   REFERENCIAFHP        NUMBER(10)           not null,
   FECHAINICIOHISTORICOPRECIO DATE                 not null,
   PRECIOVENTA          NUMBER(20)           not null,
   IMPUESTO             NUMBER(10)           not null,
   constraint PK_HISTORICOPRECIO primary key (CONSECUTIVO)
);

/*==============================================================*/
/* Index: RELATIONSHIP_8_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_8_FK on HISTORICOPRECIO (
   REFERENCIAFHP ASC
);

/*==============================================================*/
/* Table: IDTIPOCONTADO                                         */
/*==============================================================*/
create table IDTIPOCONTADO 
(
   IDTIPOCONTADO        NUMBER               not null,
   NOMBRETIPOCONTADO    VARCHAR2(100)        not null,
   constraint PK_IDTIPOCONTADO primary key (IDTIPOCONTADO)
);

/*==============================================================*/
/* Table: INVENTARIO                                            */
/*==============================================================*/
create table INVENTARIO 
(
   IDINVENTARIO         NUMBER(10)           not null,
   IDDETALLETRANSACCIONFI NUMBER(10)           not null,
   NUMEROTRANSACCIONFDT NUMBER(10)           not null,
   IDTIPOMOVFI          NUMBER(10)           not null,
   CANTIDAD             NUMBER(10)           not null,
   VALORUNITARIO        NUMBER(10)           not null,
   FECHAINVENTARIO      DATE                 not null,
   HORAINVENTARIO       CHAR(10)             not null,
   SALDO                NUMBER(10)           not null,
   constraint PK_INVENTARIO primary key (IDINVENTARIO)
);

/*==============================================================*/
/* Index: SOPORTE_FK                                            */
/*==============================================================*/
create index SOPORTE_FK on INVENTARIO (
   IDDETALLETRANSACCIONFI ASC,
   NUMEROTRANSACCIONFDT ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_12_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_12_FK on INVENTARIO (
   IDTIPOMOVFI ASC
);

/*==============================================================*/
/* Table: MARCA                                                 */
/*==============================================================*/
create table MARCA 
(
   IDMARCA              NUMBER(10)           not null,
   NOMBREMARCA          VARCHAR2(100)        not null,
   constraint PK_MARCA primary key (IDMARCA)
);

/*==============================================================*/
/* Table: PAGO                                                  */
/*==============================================================*/
create table PAGO 
(
   IDPAGO               NUMBER(10)           not null,
   IDTIPOPAGOFP         NUMBER(10)           not null,
   IDTIPOTARJETAFP      NUMBER(10),
   IDBANCOFP            NUMBER(10),
   NUMEROTRANSACCIONFP  NUMBER(10)           not null,
   NUMTARJETA           NUMBER(15)           not null,
   constraint PK_PAGO primary key (IDPAGO)
);

/*==============================================================*/
/* Index: RELATIONSHIP_14_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_14_FK on PAGO (
   IDTIPOPAGOFP ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_15_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_15_FK on PAGO (
   IDTIPOTARJETAFP ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_16_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_16_FK on PAGO (
   IDBANCOFP ASC
);

/*==============================================================*/
/* Index: FACTURANUMERO_FK                                      */
/*==============================================================*/
create index FACTURANUMERO_FK on PAGO (
   NUMEROTRANSACCIONFP ASC
);

/*==============================================================*/
/* Table: PERSONA                                               */
/*==============================================================*/
create table PERSONA 
(
   NUMCEDULA            NUMBER(10)           not null,
   NOMBREPERSONA        VARCHAR2(50)         not null,
   APELLIDOPERSONA      VARCHAR2(50)         not null,
   TELEFONOPERSONA      NUMBER(10)           not null,
   DIRECCIONPERSONA     VARCHAR2(200)        not null,
   EMAILPERSONA         VARCHAR2(100),
   constraint PK_PERSONA primary key (NUMCEDULA)
);

/*==============================================================*/
/* Table: TIPOCLIENTE                                           */
/*==============================================================*/
create table TIPOCLIENTE 
(
   IDTIPOCLIENTE        NUMBER(10)           not null,
   NUMCEDULAFTC         NUMBER(10)           not null,
   IDTIPOPERSONAFTC     NUMBER(10)           not null,
   FECHAINICIOTIPOCLIENTE DATE                 not null,
   FECHAFINTIPOCLIENTE  DATE,
   constraint PK_TIPOCLIENTE primary key (IDTIPOCLIENTE)
);

/*==============================================================*/
/* Index: RELATIONSHIP_18_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_18_FK on TIPOCLIENTE (
   NUMCEDULAFTC ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_19_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_19_FK on TIPOCLIENTE (
   IDTIPOPERSONAFTC ASC
);

/*==============================================================*/
/* Table: TIPODESCUENTO                                         */
/*==============================================================*/
create table TIPODESCUENTO 
(
   IDTIPODESCUENTO      NUMBER(10)           not null,
   PORCENTAJEDESCUENTO  NUMBER(2)            not null,
   constraint PK_TIPODESCUENTO primary key (IDTIPODESCUENTO)
);

/*==============================================================*/
/* Table: TIPOESTANTE                                           */
/*==============================================================*/
create table TIPOESTANTE 
(
   IDTIPOESTANTE        NUMBER(10)           not null,
   NOMBRETIPOESTANTE    VARCHAR2(100)        not null,
   TAMANO               NUMBER(10)           not null,
   constraint PK_TIPOESTANTE primary key (IDTIPOESTANTE)
);

/*==============================================================*/
/* Table: TIPOMOV                                               */
/*==============================================================*/
create table TIPOMOV 
(
   IDTIPOMOV            NUMBER(10)           not null,
   NOMBRETIPOMOV        VARCHAR2(100)        not null,
   constraint PK_TIPOMOV primary key (IDTIPOMOV)
);

/*==============================================================*/
/* Table: TIPOPAGO                                              */
/*==============================================================*/
create table TIPOPAGO 
(
   IDTIPOPAGO           NUMBER(10)           not null,
   NOMBRETIPOPAGO       VARCHAR2(100)        not null,
   constraint PK_TIPOPAGO primary key (IDTIPOPAGO)
);

/*==============================================================*/
/* Table: TIPOPERSONA                                           */
/*==============================================================*/
create table TIPOPERSONA 
(
   IDTIPOPERSONA        NUMBER(10)           not null,
   IDTIPOPERSONAFTP     NUMBER(10),
   NOMBRETIPOPERSONA    VARCHAR2(100)        not null,
   constraint PK_TIPOPERSONA primary key (IDTIPOPERSONA)
);

/*==============================================================*/
/* Index: RELATIONSHIP_27_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_27_FK on TIPOPERSONA (
   IDTIPOPERSONAFTP ASC
);

/*==============================================================*/
/* Table: TIPOPRODUCTO                                          */
/*==============================================================*/
create table TIPOPRODUCTO 
(
   IDTIPOPRODUCTO       NUMBER(10)           not null,
   NOMBRETIPOPRODUCTO   VARCHAR2(100)        not null,
   constraint PK_TIPOPRODUCTO primary key (IDTIPOPRODUCTO)
);

/*==============================================================*/
/* Table: TIPOTARJETA                                           */
/*==============================================================*/
create table TIPOTARJETA 
(
   IDTIPOTARJETA        NUMBER(10)           not null,
   NOMBRETARJETA        VARCHAR2(100)        not null,
   constraint PK_TIPOTARJETA primary key (IDTIPOTARJETA)
);

/*==============================================================*/
/* Table: TIPOTRANSACCION                                       */
/*==============================================================*/
create table TIPOTRANSACCION 
(
   IDTIPOTRANSACCION    NUMBER(10)           not null,
   NOMBRETIPOTRANSACCION VARCHAR2(100)        not null,
   constraint PK_TIPOTRANSACCION primary key (IDTIPOTRANSACCION)
);

/*==============================================================*/
/* Table: TRANSACCION                                           */
/*==============================================================*/
create table TRANSACCION 
(
   NUMEROTRANSACCION    NUMBER(10)           not null,
   IDTIPOTRANSACCIONFT  NUMBER(10)           not null,
   NUMCEDULAFT          NUMBER(10)           not null,
   NUMEROTRANSACCIONFT  NUMBER(10),
   IDEMPLEADOFT         NUMBER(10)           not null,
   FECHATRANSACCION     DATE                 not null,
   HORATRANSACCION      CHAR(10)             not null,
   DESCUENTO            NUMBER(3),
   TOTALTRANSACCION     NUMBER(10)           not null,
   FACTURAPROVEEDOR     NUMBER(20),
   constraint PK_TRANSACCION primary key (NUMEROTRANSACCION)
);

/*==============================================================*/
/* Index: RELATIONSHIP_3_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_3_FK on TRANSACCION (
   IDTIPOTRANSACCIONFT ASC
);

/*==============================================================*/
/* Index: CLIENTE_PROVEEDOR_FK                                  */
/*==============================================================*/
create index CLIENTE_PROVEEDOR_FK on TRANSACCION (
   NUMCEDULAFT ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_26_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_26_FK on TRANSACCION (
   NUMEROTRANSACCIONFT ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_30_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_30_FK on TRANSACCION (
   IDEMPLEADOFT ASC
);

/*==============================================================*/
/* Table: UBICACION                                             */
/*==============================================================*/
create table UBICACION 
(
   IDUBICACION          NUMBER(10)           not null,
   IDESTANTEFU          NUMBER(10)           not null,
   NOMBREAREA           VARCHAR2(100)        not null,
   constraint PK_UBICACION primary key (IDUBICACION)
);

/*==============================================================*/
/* Index: RELATIONSHIP_6_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_6_FK on UBICACION (
   IDESTANTEFU ASC
);

alter table CARGOEMPLEADO
   add constraint FK_CARGOEMP_RELATIONS_CARGO foreign key (IDCARGOFCE)
      references CARGO (IDCARGO);

alter table CARGOEMPLEADO
   add constraint FK_CARGOEMP_RELATIONS_EMPLEADO foreign key (IDEMPLEADOFCE)
      references EMPLEADO (IDEMPLEADO);

alter table CATALOGOPRODUCTO
   add constraint FK_CATALOGO_PRODUCTO_TIPOPROD foreign key (IDTIPOPRODUCTOFCP)
      references TIPOPRODUCTO (IDTIPOPRODUCTO);

alter table CATALOGOPRODUCTO
   add constraint FK_CATALOGO_RELATIONS_ESTANTE foreign key (IDESTANTEFCP)
      references ESTANTE (IDESTANTE);

alter table CATALOGOPRODUCTO
   add constraint FK_CATALOGO_RELATIONS_MARCA foreign key (IDMARCAFCP)
      references MARCA (IDMARCA);

alter table CONTADO
   add constraint FK_CONTADO_RELATIONS_PERSONA foreign key (NUMCEDULAFC)
      references PERSONA (NUMCEDULA);

alter table CONTADO
   add constraint FK_CONTADO_RELATIONS_IDTIPOCO foreign key (IDTIPOCONTADOFC)
      references IDTIPOCONTADO (IDTIPOCONTADO);

alter table DESCUENTO
   add constraint FK_DESCUENT_RELATIONS_TIPOPERS foreign key (IDTIPOPERSONAFD)
      references TIPOPERSONA (IDTIPOPERSONA);

alter table DESCUENTO
   add constraint FK_DESCUENT_RELATIONS_TIPODESC foreign key (IDTIPODESCUENTOFD)
      references TIPODESCUENTO (IDTIPODESCUENTO);

alter table DETALLETRANSACCION
   add constraint FK_DETALLET_RELATIONS_CATALOGO foreign key (REFERENCIAFDT)
      references CATALOGOPRODUCTO (REFERENCIA);

alter table DETALLETRANSACCION
   add constraint FK_DETALLET_RELATIONS_TRANSACC foreign key (NUMEROTRANSACCIONFDT)
      references TRANSACCION (NUMEROTRANSACCION);

alter table DISTRIBUCION
   add constraint FK_DISTRIBU_PROVEEDOR_PERSONA foreign key (NUMCEDULAFDI)
      references PERSONA (NUMCEDULA);

alter table DISTRIBUCION
   add constraint FK_DISTRIBU_RELATIONS_CATALOGO foreign key (REFERENCIAFD)
      references CATALOGOPRODUCTO (REFERENCIA);

alter table ESTANTE
   add constraint FK_ESTANTE_RELATIONS_ESTANTE foreign key (IDESTANTEFE)
      references ESTANTE (IDESTANTE);

alter table ESTANTE
   add constraint FK_ESTANTE_RELATIONS_TIPOESTA foreign key (IDTIPOESTANTEFE)
      references TIPOESTANTE (IDTIPOESTANTE);

alter table HISTORICOPRECIO
   add constraint FK_HISTORIC_RELATIONS_CATALOGO foreign key (REFERENCIAFHP)
      references CATALOGOPRODUCTO (REFERENCIA);

alter table INVENTARIO
   add constraint FK_INVENTAR_RELATIONS_TIPOMOV foreign key (IDTIPOMOVFI)
      references TIPOMOV (IDTIPOMOV);

alter table INVENTARIO
   add constraint FK_INVENTAR_SOPORTE_DETALLET foreign key (IDDETALLETRANSACCIONFI, NUMEROTRANSACCIONFDT)
      references DETALLETRANSACCION (IDDETALLETRANSACCION, NUMEROTRANSACCIONFDT);

alter table PAGO
   add constraint FK_PAGO_FACTURANU_TRANSACC foreign key (NUMEROTRANSACCIONFP)
      references TRANSACCION (NUMEROTRANSACCION);

alter table PAGO
   add constraint FK_PAGO_RELATIONS_TIPOPAGO foreign key (IDTIPOPAGOFP)
      references TIPOPAGO (IDTIPOPAGO);

alter table PAGO
   add constraint FK_PAGO_RELATIONS_TIPOTARJ foreign key (IDTIPOTARJETAFP)
      references TIPOTARJETA (IDTIPOTARJETA);

alter table PAGO
   add constraint FK_PAGO_RELATIONS_BANCO foreign key (IDBANCOFP)
      references BANCO (IDBANCO);

alter table TIPOCLIENTE
   add constraint FK_TIPOCLIE_RELATIONS_PERSONA foreign key (NUMCEDULAFTC)
      references PERSONA (NUMCEDULA);

alter table TIPOCLIENTE
   add constraint FK_TIPOCLIE_RELATIONS_TIPOPERS foreign key (IDTIPOPERSONAFTC)
      references TIPOPERSONA (IDTIPOPERSONA);

alter table TIPOPERSONA
   add constraint FK_TIPOPERS_RELATIONS_TIPOPERS foreign key (IDTIPOPERSONAFTP)
      references TIPOPERSONA (IDTIPOPERSONA);

alter table TRANSACCION
   add constraint FK_TRANSACC_CLIENTE_P_PERSONA foreign key (NUMCEDULAFT)
      references PERSONA (NUMCEDULA);

alter table TRANSACCION
   add constraint FK_TRANSACC_RELATIONS_TRANSACC foreign key (NUMEROTRANSACCIONFT)
      references TRANSACCION (NUMEROTRANSACCION);

alter table TRANSACCION
   add constraint FK_TRANSACC_RELATIONS_TIPOTRAN foreign key (IDTIPOTRANSACCIONFT)
      references TIPOTRANSACCION (IDTIPOTRANSACCION);

alter table TRANSACCION
   add constraint FK_TRANSACC_RELATIONS_EMPLEADO foreign key (IDEMPLEADOFT)
      references EMPLEADO (IDEMPLEADO);

alter table UBICACION
   add constraint FK_UBICACIO_RELATIONS_ESTANTE foreign key (IDESTANTEFU)
      references ESTANTE (IDESTANTE);

