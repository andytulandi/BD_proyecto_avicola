-- se crea la base de datos del proyecto avicola

create database proyecto_Avisena;

use proyecto_Avisena;

-- se crea la tabla de usuarios 

CREATE TABLE Usuarios (
	usu_id int NOT NULL AUTO_INCREMENT,
    usu_nombres varchar(45) NOT NULL,
    usu_apellidos varchar(45) NOT NULL,
    usu_tipo_documentoId enum('CC','TI','CE','PA') NOT NULL,
    usu_num_documentoId int NOT NULL UNIQUE,
    usu_telefono varchar(13) NOT NULL UNIQUE,
    usu_direccion varchar(200) NOT NULL UNIQUE,
    usu_correo_electronico varchar(255) NOT NULL UNIQUE,
    usu_rol enum('instructor_lider', 'instructor_investigador', 'aprendiz_contrato') NOT NULL,
    usu_estado enum('activo', 'inactivo') NOT NULL,
    PRIMARY KEY (usu_id)
);



-- se crea la tabla de reportes 

create table Reportes (
	rep_id int not null auto_increment,
    rep_tipo varchar(100) not null,
    rep_fecha date not null,
    rep_hora time not null,
    rep_periodo_inicio varchar(225) not null,
    rep_periodo_fin varchar (225) not null,
    primary key (rep_id),
    foreign key (usu_id) REFERENCES Usuarios(usu_id)
);

-- se crea la tabla de notificaciones

CREATE TABLE notificacion (
	not_id INT AUTO_INCREMENT,
	not_descripcion TEXT,
	not_fecha DATE,
	not_hora TIME,
	not_enlace VARCHAR(255),
	not_tipo VARCHAR(100),
	not_titulo VARCHAR(150),
    primary key (not_id),
    foreign key (rep_id) REFERENCES Reportes(rep_id)
);

-- se crea la tabla de contactanos

 CREATE TABLE contactanos (
cont_id int NOT NULL AUTO_INCREMENT,
cont_logos varchar (100) NOT NULL,	
cont_enlaces varchar (100) NOT NULL,
PRIMARY KEY (cont_id),
foreign key (usu_id) REFERENCES Usuarios(usu_id)
);

-- se  rea la tabla de publicaciones

CREATE TABLE publicaciones (
pub_id int NOT NULL AUTO_INCREMENT  ,
pub_titulo varchar (225) NOT NULL,
pub_fecha date NOT NULL ,
pub_hora  time NOT NULL,
pub_enlace varchar (225) NOT NULL,
pub_tipo enum ("informe","reseña") NOT NULL ,
PRIMARY KEY (pub_id),
foreign key (usu_id) REFERENCES Usuarios(usu_id)
);

-- se crea la tabla de limpieza

create table limpieza (
limp_id int not null auto_increment,
limp_horarios datetime not null,
limp_tipos varchar(250) not null,
limp_fecha date not null,
limp_estado enum ('Pendiente', 'En Proceso', 'Finalizado'),
limp_hora TIME NOT NULL,
primary key (limp_id),
foreign key (usu_id) REFERENCES Usuarios(usu_id)
);

-- se crea la tabla de animales 

CREATE TABLE animales(
    ani_id INT NOT NULL AUTO_INCREMENT,
	ani_num_lote INT NOT NULL UNIQUE,
	ani_fecha DATE NOT NULL,
	ani_hora TIME NOT NULL,
    primary key (ani_id),
    foreign key (usu_id) REFERENCES Usuarios(usu_id)
);

-- se crea la tabla de morbilidad de aves

CREATE TABLE Morbilidad (
	morbili_id int NOT NULL AUTO_INCREMENT,
    morbili_cantAnimales_afectados  int NOT NULL,
    morbili_causa text NOT NULL,
    morbili_enfermedad varchar(100) NOT NULL,
    morbili_fecha date NOT NULL,
    morbili_hora time NOT NULL,
    PRIMARY KEY (morbili_id),
    foreign key(ani_id) REFERENCES animales(ani_id)
);

-- se crea la tabla de mortalidad de aves

create table mortalidad (
morta_id int not null auto_increment,
morta_cantidad int not null,
morta_causa text not null,
morta_fecha date not null,
morta_hora time not null,
primary key (morta_id),
foreign key(ani_id) REFERENCES animales(ani_id)
);

-- se crea la tabla de produccion de huevos

CREATE TABLE produccion(
	produc_lote_id int NOT NULL AUTO_INCREMENT,
    produc_cantidad int NOT NULL,
    produc_fecha date NOT NULL,
    produc_hora time  NOT NULL,
	PRIMARY KEY (produc_lote_id),
    foreign key(ani_id) REFERENCES animales(ani_id)
);

-- se crea la tabla de alimentacion de animales

CREATE TABLE alimentacion(
	alimen_id int NOT NULL AUTO_INCREMENT,
	alimen_tipo varchar(125) NOT NULL,
	alimen_cantidad varchar(125) NOT NULL,
	alimen_observacion text NOT NULL,
	alimen_horarios date NOT NULL,
	PRIMARY KEY (alimen_id),
    foreign key(ani_id) REFERENCES animales(ani_id)
);

-- se crea la tabla de clasificacion de huevos

CREATE TABLE clasificacion (
	clas_id INT AUTO_INCREMENT ,
	clas_tipo VARCHAR(20) NOT NULL,
	clas_cantidad_tipo INT,
	clas_hora TIME,
    primary key(clas_id),
    foreign key(ani_id) REFERENCES animales(ani_id)
);

