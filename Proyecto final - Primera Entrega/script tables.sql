
CREATE TABLE TB_Alamacen_Nivel
(
	Cod_Nivel            INTEGER NOT NULL ,
	Nivel                VARCHAR2(20) NULL 
);



CREATE UNIQUE INDEX XPKTB_Alamacen_Nivel ON TB_Alamacen_Nivel
(Cod_Nivel   ASC);



ALTER TABLE TB_Alamacen_Nivel
	ADD  PRIMARY KEY (Cod_Nivel);



CREATE TABLE TB_Camas
(
	CodCamas             INTEGER NOT NULL ,
	CodHab               INTEGER NOT NULL 
);



CREATE UNIQUE INDEX XPKTB_Camas ON TB_Camas
(CodCamas   ASC);



ALTER TABLE TB_Camas
	ADD  PRIMARY KEY (CodCamas);



CREATE TABLE TB_Categoria
(
	CodCateg             INTEGER NOT NULL ,
	Categoria            VARCHAR2(20) NULL 
);



CREATE UNIQUE INDEX XPKTB_Categoria ON TB_Categoria
(CodCateg   ASC);



ALTER TABLE TB_Categoria
	ADD  PRIMARY KEY (CodCateg);



CREATE TABLE TB_Cita
(
	CodCita              INTEGER NOT NULL ,
	FecHorCita           DATE NULL ,
	FecEspSalida         DATE NULL ,
	FecSalida            DATE NULL ,
	CodEmp               INTEGER NOT NULL ,
	CodHab               INTEGER NOT NULL ,
	CodPac               INTEGER NOT NULL 
);



CREATE UNIQUE INDEX XPKTB_Cita ON TB_Cita
(CodCita   ASC);



ALTER TABLE TB_Cita
	ADD  PRIMARY KEY (CodCita);



CREATE TABLE TB_Contrato
(
	CodContra            INTEGER NOT NULL ,
	TipContra            VARCHAR2(20) NULL ,
	HorasCont            INTEGER NULL ,
	Salario              INTEGER NULL ,
	EscalaSalarial       VARCHAR2(20) NULL ,
	FecInicio            DATE NULL ,
	FecFin               DATE NULL ,
	CodEmp               INTEGER NOT NULL 
);



CREATE UNIQUE INDEX XPKTB_Contrato ON TB_Contrato
(CodContra   ASC);



ALTER TABLE TB_Contrato
	ADD  PRIMARY KEY (CodContra);



CREATE TABLE TB_Cualificaciones
(
	CodCual              INTEGER NOT NULL ,
	FecCuali             DATE NULL ,
	CualiObt             VARCHAR2(20) NULL ,
	TipoInst             VARCHAR2(20) NULL ,
	NomInst              VARCHAR2(20) NULL ,
	CodEmp               INTEGER NOT NULL 
);



CREATE UNIQUE INDEX XPKTB_Cualificaciones ON TB_Cualificaciones
(CodCual   ASC);



ALTER TABLE TB_Cualificaciones
	ADD  PRIMARY KEY (CodCual);



CREATE TABLE TB_Departament
(
	CodDepar             INTEGER NOT NULL ,
	NomDepar             VARCHAR2(20) NULL ,
	Ubicacion            VARCHAR2(20) NULL ,
	CodTelf              INTEGER NULL 
);



CREATE UNIQUE INDEX XPKTB_Departament ON TB_Departament
(CodDepar   ASC);



ALTER TABLE TB_Departament
	ADD  PRIMARY KEY (CodDepar);



CREATE TABLE TB_Departamentos
(
	Cantidad             INTEGER NULL ,
	CodProd              INTEGER NOT NULL ,
	CodDepar             INTEGER NOT NULL 
);



CREATE UNIQUE INDEX XPKTB_Departamentos ON TB_Departamentos
(CodProd   ASC,CodDepar   ASC);



ALTER TABLE TB_Departamentos
	ADD  PRIMARY KEY (CodProd,CodDepar);



CREATE TABLE TB_Empleados
(
	CodEmp               INTEGER NOT NULL ,
	NomEmp               VARCHAR2(20) NULL ,
	ApelEmp              VARCHAR2(20) NULL ,
	Direccion            VARCHAR2(20) NULL ,
	FecNac               DATE NULL ,
	SexEmp               VARCHAR2(20) NULL ,
	DNIEmp               VARCHAR2(20) NULL ,
	CodTelf              INTEGER NULL ,
	CodDepar             INTEGER NOT NULL ,
	Turno                VARCHAR2(20) NOT NULL ,
	CodCateg             INTEGER NOT NULL 
);



CREATE UNIQUE INDEX XPKTB_Empleados ON TB_Empleados
(CodEmp   ASC);



ALTER TABLE TB_Empleados
	ADD  PRIMARY KEY (CodEmp);



CREATE TABLE TB_Habitaciones
(
	CodHab               INTEGER NOT NULL ,
	Bloque               VARCHAR2(20) NULL ,
	Descripcion          VARCHAR2(20) NULL ,
	CodTelf              INTEGER NULL ,
	CodDepar             INTEGER NOT NULL 
);



CREATE UNIQUE INDEX XPKTB_Habitaciones ON TB_Habitaciones
(CodHab   ASC);



ALTER TABLE TB_Habitaciones
	ADD  PRIMARY KEY (CodHab);



CREATE TABLE TB_Horario
(
	Turno                VARCHAR2(20) NOT NULL ,
	HEntrada             VARCHAR2(20) NULL 
);



CREATE UNIQUE INDEX XPKTB_Horario ON TB_Horario
(Turno   ASC);



ALTER TABLE TB_Horario
	ADD  PRIMARY KEY (Turno);



CREATE TABLE TB_Medicacion
(
	CodMed               INTEGER NOT NULL ,
	UnidadesDiarias      INTEGER NULL ,
	FecInic              DATE NULL ,
	FecFin               DATE NULL ,
	CodProd              INTEGER NOT NULL ,
	CodCamas             INTEGER NOT NULL ,
	CodPac               INTEGER NOT NULL 
);



CREATE UNIQUE INDEX XPKTB_Medicacion ON TB_Medicacion
(CodMed   ASC);



ALTER TABLE TB_Medicacion
	ADD  PRIMARY KEY (CodMed);



CREATE TABLE TB_Medicamen
(
	CodMedica            INTEGER NOT NULL ,
	Especialidad         VARCHAR2(20) NULL ,
	Dosis                VARCHAR2(20) NULL ,
	ModAdminis           VARCHAR2(20) NULL ,
	CodProd              INTEGER NOT NULL 
);



CREATE UNIQUE INDEX XPKTB_Medicamen ON TB_Medicamen
(CodMedica   ASC);



ALTER TABLE TB_Medicamen
	ADD  PRIMARY KEY (CodMedica);



CREATE TABLE TB_MedicoExterno
(
	CodMed               INTEGER NOT NULL ,
	NomMed               VARCHAR2(20) NULL ,
	ApeMed               VARCHAR2(20) NULL ,
	CodTelf              INTEGER NULL ,
	CodDepar             INTEGER NOT NULL 
);



CREATE UNIQUE INDEX XPKTB_MedicoExterno ON TB_MedicoExterno
(CodMed   ASC);



ALTER TABLE TB_MedicoExterno
	ADD  PRIMARY KEY (CodMed);



CREATE TABLE TB_Paciente
(
	CodPac               INTEGER NOT NULL ,
	NomCli               VARCHAR2(20) NULL ,
	ApelCli              VARCHAR2(20) NULL ,
	DirecPac             VARCHAR2(20) NULL ,
	FecNac               DATE NULL ,
	SexoCli              VARCHAR2(20) NULL ,
	FecReg               DATE NULL ,
	EstCivil             VARCHAR2(20) NULL ,
	CodTelf              INTEGER NULL ,
	CodEmp               INTEGER NOT NULL 
);



CREATE UNIQUE INDEX XPKTB_Paciente ON TB_Paciente
(CodPac   ASC);



ALTER TABLE TB_Paciente
	ADD  PRIMARY KEY (CodPac);



CREATE TABLE TB_Paciente_MedicoExterno
(
	CodMed               INTEGER NOT NULL ,
	CodPac               INTEGER NOT NULL 
);



CREATE UNIQUE INDEX XPKTB_Paciente_MedicoExterno ON TB_Paciente_MedicoExterno
(CodMed   ASC,CodPac   ASC);



ALTER TABLE TB_Paciente_MedicoExterno
	ADD  PRIMARY KEY (CodMed,CodPac);



CREATE TABLE TB_Paciente_Pariente
(
	Relacion             VARCHAR2(20) NULL ,
	CodPac               INTEGER NOT NULL ,
	CodPar               INTEGER NOT NULL 
);



CREATE UNIQUE INDEX XPKTB_Paciente_Pariente ON TB_Paciente_Pariente
(CodPac   ASC,CodPar   ASC);



ALTER TABLE TB_Paciente_Pariente
	ADD  PRIMARY KEY (CodPac,CodPar);



CREATE TABLE TB_Pariente
(
	CodPar               INTEGER NOT NULL ,
	NomPar               VARCHAR2(20) NULL ,
	ApelPar              VARCHAR2(20) NULL ,
	DirecPar             VARCHAR2(20) NULL ,
	CodTelf              INTEGER NULL 
);



CREATE UNIQUE INDEX XPKTB_Pariente ON TB_Pariente
(CodPar   ASC);



ALTER TABLE TB_Pariente
	ADD  PRIMARY KEY (CodPar);



CREATE TABLE TB_Pedido
(
	CodPedido            INTEGER NOT NULL ,
	Cantidad             INTEGER NULL ,
	Fecha                DATE NULL ,
	CodDepar             INTEGER NOT NULL ,
	CodProd              INTEGER NOT NULL ,
	CodEmp               INTEGER NOT NULL 
);



CREATE UNIQUE INDEX XPKTB_Pedido ON TB_Pedido
(CodPedido   ASC);



ALTER TABLE TB_Pedido
	ADD  PRIMARY KEY (CodPedido);



CREATE TABLE TB_Producto
(
	CodProd              INTEGER NOT NULL ,
	Nombre               VARCHAR2(20) NULL ,
	Descripcion          VARCHAR2(20) NULL ,
	CodTipo              INTEGER NOT NULL ,
	CodProve             INTEGER NOT NULL 
);



CREATE UNIQUE INDEX XPKTB_Producto ON TB_Producto
(CodProd   ASC);



ALTER TABLE TB_Producto
	ADD  PRIMARY KEY (CodProd);



CREATE TABLE TB_Producto_Alamacen
(
	Cantidad             INTEGER NULL ,
	CostoUnitario        INTEGER NULL ,
	Cod_Nivel            INTEGER NOT NULL ,
	CodProd              INTEGER NOT NULL 
);



CREATE UNIQUE INDEX XPKTB_Producto_Alamacen ON TB_Producto_Alamacen
(Cod_Nivel   ASC,CodProd   ASC);



ALTER TABLE TB_Producto_Alamacen
	ADD  PRIMARY KEY (Cod_Nivel,CodProd);



CREATE TABLE TB_Proveedores
(
	CodProve             INTEGER NOT NULL ,
	Nombre               VARCHAR2(20) NULL ,
	Descripcion          VARCHAR2(20) NULL ,
	CodTelf              INTEGER NULL 
);



CREATE UNIQUE INDEX XPKTB_Proveedores ON TB_Proveedores
(CodProve   ASC);



ALTER TABLE TB_Proveedores
	ADD  PRIMARY KEY (CodProve);



CREATE TABLE TB_TipoProducto
(
	CodTipo              INTEGER NOT NULL ,
	Tipo                 VARCHAR2(20) NULL 
);



CREATE UNIQUE INDEX XPKTB_TipoProducto ON TB_TipoProducto
(CodTipo   ASC);



ALTER TABLE TB_TipoProducto
	ADD  PRIMARY KEY (CodTipo);



CREATE TABLE TBExperiencia
(
	CodExpe              INTEGER NOT NULL ,
	Posicion             VARCHAR2(20) NULL ,
	FecIni               DATE NULL ,
	FecFinal             DATE NULL ,
	NomInst              VARCHAR2(20) NULL ,
	CodEmp               INTEGER NOT NULL 
);



CREATE UNIQUE INDEX XPKTBExperiencia ON TBExperiencia
(CodExpe   ASC);



ALTER TABLE TBExperiencia
	ADD  PRIMARY KEY (CodExpe);



ALTER TABLE TB_Camas
	ADD (FOREIGN KEY (CodHab) REFERENCES TB_Habitaciones (CodHab));



ALTER TABLE TB_Cita
	ADD (FOREIGN KEY (CodEmp) REFERENCES TB_Empleados (CodEmp));



ALTER TABLE TB_Cita
	ADD (FOREIGN KEY (CodHab) REFERENCES TB_Habitaciones (CodHab));



ALTER TABLE TB_Cita
	ADD (FOREIGN KEY (CodPac) REFERENCES TB_Paciente (CodPac));



ALTER TABLE TB_Contrato
	ADD (FOREIGN KEY (CodEmp) REFERENCES TB_Empleados (CodEmp));



ALTER TABLE TB_Cualificaciones
	ADD (FOREIGN KEY (CodEmp) REFERENCES TB_Empleados (CodEmp));



ALTER TABLE TB_Departamentos
	ADD (FOREIGN KEY (CodProd) REFERENCES TB_Producto (CodProd));



ALTER TABLE TB_Departamentos
	ADD (FOREIGN KEY (CodDepar) REFERENCES TB_Departament (CodDepar));



ALTER TABLE TB_Empleados
	ADD (FOREIGN KEY (CodDepar) REFERENCES TB_Departament (CodDepar));



ALTER TABLE TB_Empleados
	ADD (FOREIGN KEY (Turno) REFERENCES TB_Horario (Turno));



ALTER TABLE TB_Empleados
	ADD (FOREIGN KEY (CodCateg) REFERENCES TB_Categoria (CodCateg));



ALTER TABLE TB_Habitaciones
	ADD (FOREIGN KEY (CodDepar) REFERENCES TB_Departament (CodDepar));



ALTER TABLE TB_Medicacion
	ADD (FOREIGN KEY (CodProd) REFERENCES TB_Producto (CodProd));



ALTER TABLE TB_Medicacion
	ADD (FOREIGN KEY (CodCamas) REFERENCES TB_Camas (CodCamas));



ALTER TABLE TB_Medicacion
	ADD (FOREIGN KEY (CodPac) REFERENCES TB_Paciente (CodPac));



ALTER TABLE TB_Medicamen
	ADD (FOREIGN KEY (CodProd) REFERENCES TB_Producto (CodProd));



ALTER TABLE TB_MedicoExterno
	ADD (FOREIGN KEY (CodDepar) REFERENCES TB_Departament (CodDepar));



ALTER TABLE TB_Paciente
	ADD (FOREIGN KEY (CodEmp) REFERENCES TB_Empleados (CodEmp));



ALTER TABLE TB_Paciente_MedicoExterno
	ADD (FOREIGN KEY (CodMed) REFERENCES TB_MedicoExterno (CodMed));



ALTER TABLE TB_Paciente_MedicoExterno
	ADD (FOREIGN KEY (CodPac) REFERENCES TB_Paciente (CodPac));



ALTER TABLE TB_Paciente_Pariente
	ADD (FOREIGN KEY (CodPac) REFERENCES TB_Paciente (CodPac));



ALTER TABLE TB_Paciente_Pariente
	ADD (FOREIGN KEY (CodPar) REFERENCES TB_Pariente (CodPar));



ALTER TABLE TB_Pedido
	ADD (FOREIGN KEY (CodDepar) REFERENCES TB_Departament (CodDepar));



ALTER TABLE TB_Pedido
	ADD (FOREIGN KEY (CodProd) REFERENCES TB_Producto (CodProd));



ALTER TABLE TB_Pedido
	ADD (FOREIGN KEY (CodEmp) REFERENCES TB_Empleados (CodEmp));



ALTER TABLE TB_Producto
	ADD (FOREIGN KEY (CodTipo) REFERENCES TB_TipoProducto (CodTipo));



ALTER TABLE TB_Producto
	ADD (FOREIGN KEY (CodProve) REFERENCES TB_Proveedores (CodProve));



ALTER TABLE TB_Producto_Alamacen
	ADD (FOREIGN KEY (Cod_Nivel) REFERENCES TB_Alamacen_Nivel (Cod_Nivel));



ALTER TABLE TB_Producto_Alamacen
	ADD (FOREIGN KEY (CodProd) REFERENCES TB_Producto (CodProd));



ALTER TABLE TBExperiencia
	ADD (FOREIGN KEY (CodEmp) REFERENCES TB_Empleados (CodEmp));


