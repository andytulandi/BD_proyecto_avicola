DROP DATABASE IF EXISTS granja;
CREATE DATABASE granja;
USE granja;

-- Tabla notificacion
DROP TABLE IF EXISTS notificacion;
CREATE TABLE notificacion (
    not_id INT AUTO_INCREMENT PRIMARY KEY,
    not_descripcion TEXT,
    not_fecha DATE,
    not_hora TIME,
    not_enlace VARCHAR(255),
    not_tipo VARCHAR(100),
    not_titulo VARCHAR(150),
    fk_rep_id INT
);

-- Tabla clasificacion
DROP TABLE IF EXISTS clasificacion;
CREATE TABLE clasificacion (
    clas_id INT AUTO_INCREMENT PRIMARY KEY,
    clas_tipo VARCHAR(20) NOT NULL,
    clas_cantidad_tipo INT,
    clas_fecha DATE,
    clas_hora TIME,
    fk_lote_id INT
);
ALTER TABLE notificacion
MODIFY  not_id INT AUTO_INCREMENT,
MODIFY not_descripcion TEXT,
MODIFY not_fecha DATE,
MODIFY not_hora TIME,
MODIFY  not_enlace VARCHAR(255),
MODIFY not_tipo VARCHAR(100),
MODIFY not_titulo VARCHAR(150);

ALTER TABLE clasificacion 
MODIFY   clas_id INT AUTO_INCREMENT ,
MODIFY clas_tipo VARCHAR(20) NOT NULL,
MODIFY  clas_cantidad_tipo INT,
MODIFY  clas_hora TIME,
MODIFY  fk_lote_id INT;
  