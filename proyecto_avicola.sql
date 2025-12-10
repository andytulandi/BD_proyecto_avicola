CREATE DATABASE proyectoAvicola;

USE proyectoAvicola;

CREATE TABLE Usuarios (
	usu_id INT NOT NULL AUTO_INCREMENT,
    usu_nombres varchar(45) NOT NULL,
    usu_apellidos varchar(45) NOT NULL,
    usu_tipo_documentoId enum('CC','TI','CE','PA') NOT NULL,
    usu_num_documentoId INT(20) NOT NULL UNIQUE,
    usu_telefono INT(10) NOT NULL UNIQUE,
    usu_direccion varchar(200) NOT NULL UNIQUE,
    usu_correo_electronico varchar(255) NOT NULL UNIQUE,
    usu_rol enum('instructor_lider', 'instructor_investigador', 'aprendiz_contrato') NOT NULL,
    usu_estado enum('activo', 'inactivo') NOT NULL,
    PRIMARY KEY (usu_id)
);

CREATE TABLE Morbilidad (
	morbili_id int NOT NULL AUTO_INCREMENT,
    morbili_cantAnimales_afectados  int NOT NULL,
    morbili_causa text NOT NULL,
    morbili_enfermedad varchar(100) NOT NULL,
    morbili_fecha date NOT NULL,
    morbili_hora time NOT NULL,
    PRIMARY KEY (morbili_id)
);

drop table Usuarios;

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