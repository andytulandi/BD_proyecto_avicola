
 CREATE DATABASE avisenacol ;
 USE avisenacol ;
 CREATE TABLE contactanos (
cont_id int NOT NULL AUTO_INCREMENT,
cont_logos varchar (100) NOT NULL,	
cont_enlaces varchar (100) NOT NULL,
PRIMARY KEY (cont_id) 
);

CREATE TABLE publicaciones (
pub_id int NOT NULL AUTO_INCREMENT  ,
pub_titulo varchar (225) NOT NULL,
pub_fecha date NOT NULL ,
pub_hora  time NOT NULL,
pub_enlace varchar (225) NOT NULL,
pub_tipo enum ("informe","reseña") NOT NULL ,
PRIMARY KEY (pub_id)
);
 
 


 