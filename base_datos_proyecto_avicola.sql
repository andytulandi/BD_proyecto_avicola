-- se crea la base de datos de nuestro proyecto

create database proyecto_Avicola;

use proyecto_Avicola;

create table mortalidad (
morta_id int not null auto_increment,
morta_cantidad int not null,
morta_causa text not null,
morta_fecha date not null,
morta_hora time not null,
primary key (morta_id)
);

create table Reportes (
	rep_id int not null auto_increment,
    rep_tipo varchar(100) not null,
    rep_fecha date not null,
    rep_hora time not null,
    rep_periodo_inicio varchar(225) not null,
    rep_periodo_fin varchar (225) not null,
    primary key (rep_id)
);
-- cree mis dos tablas con atributos y restricciones de nuestro proyecto avicola


