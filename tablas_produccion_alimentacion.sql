CREATE DATABASE avicola;
USE avicola;
CREATE TABLE produccion(
produc_lote_id int,
produc_cantidad int,
produc_fecha date,
produc_hora time
);
CREATE TABLE alimentacion(
alimen_id int,
alimen_tipo varchar(125),
alimen_cantidad varchar(125),
alimen_observacion text,
alimen_horarios date
);
USE avicola;

ALTER TABLE produccion
    MODIFY produc_lote_id int NOT NULL AUTO_INCREMENT,
    MODIFY produc_cantidad int NOT NULL,
    MODIFY produc_fecha date NOT NULL,
    MODIFY produc_hora time  NOT NULL,
    ADD PRIMARY KEY (produc_lote_id);
ALTER TABLE alimentacion 
	MODIFY alimen_id int NOT NULL AUTO_INCREMENT,
	MODIFY alimen_tipo varchar(125) NOT NULL,
	MODIFY alimen_cantidad varchar(125) NOT NULL,
	MODIFY alimen_observacion text NOT NULL,
	MODIFY alimen_horarios date NOT NULL,
    ADD PRIMARY KEY (alimen_id) ;