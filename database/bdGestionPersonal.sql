use bdregistrocivil;
create table cargo(
  idCargo int not null auto_increment primary key,
  descripcion varchar(80) DEFAULT NULL,
  estado tinyint(4) DEFAULT NULL
);
create table oferta(
  idOferta int not null auto_increment primary key,
  idCargo int not null,
  descripcion varchar(80) DEFAULT NULL,
  fecha_inicio date DEFAULT NULL,
  fecha_fin date DEFAULT NULL,
  monto float default NULL,
  -- s

  requisitos varchar(80) DEFAULT NULL,
  manualPostulante varchar(80) DEFAULT NULL,
  resultados varchar(80) DEFAULT NULL,
  -- s
  estado tinyint(4) DEFAULT NULL,
  convocatoria boolean DEFAULT null,
  foreign key(idCargo) references cargo(idCargo)
);

create table postulacion(
  idPostulacion int not null auto_increment primary key,
  DNI char(8) NOT NULL,
  idOferta int not null,
  fecha date DEFAULT NULL,
  curriculum varchar(80) DEFAULT NULL,
  -- s
  email varchar(80) DEFAULT NULL,
  telefono char(9) NOT NULL,
  -- s
  titulo varchar(30) DEFAULT NULL,
  pais varchar(20) DEFAULT NULL,
  institucion varchar(30) DEFAULT NULL,
  areaEstudio varchar(30) DEFAULT NULL,
  nivelEstudio varchar(30) DEFAULT NULL,
  estadoEstudio varchar(30) DEFAULT NULL, 
  foto varchar(30) DEFAULT NULL,
  estado tinyint(4) DEFAULT NULL,
  foreign key(idOferta) references oferta(idOferta),
  foreign key(DNI) references persona(DNI)
  );

create table entrevista(
  idEntrevista int not null auto_increment primary key,
  idPostulacion int NOT NULL,
  fecha date DEFAULT NULL,
  observacion varchar(80) DEFAULT NULL,
  estado tinyint(4) DEFAULT NULL,
  foreign key(idPostulacion) references Postulacion(idPostulacion)

  );
ALTER TABLE `bdregistrocivil`.`roles` 
ADD COLUMN `estado` TINYINT(4) NULL DEFAULT NULL AFTER `nombreRol`;

INSERT INTO roles (`idRol`, `nombreRol`,`estado`) VALUES
(5, 'Encargado contrato',1),
(6, 'Encargado de RRHH',1),
(7, 'Administrador',1);

INSERT INTO cargo (descripcion,estado) VALUES
('Encargado contrato',1),
('Encargado de mantenimiento',1),
('Administrador',1)