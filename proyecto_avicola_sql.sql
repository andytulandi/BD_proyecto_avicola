-- DDL
-- CREATE DATABASE crea una base de datos
 CREATE DATABASE  testSBD;
 CREATE DATABASE  bdBorrar;
  use testSBD;
CREATE TABLE limpieza (
limp_id INT,
limp_horarios DATETIME,
limp_tipo ENUM('diaria', 'semanal', 'mensual'),
limp_estado ENUM('activo', 'inactivo'),
limp_fecha DATE,
limp_hora TIME
);



SHOW TABLES ;
DROP TABLE animales;

use testSDB;
CREATE TABLE animales(
    lote_id INT,
    num_lote INT,
    lote_fecha DATE,
    lote_hora TIME
);
