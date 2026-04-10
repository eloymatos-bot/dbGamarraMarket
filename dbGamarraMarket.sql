CREATE TABLE CLIENTE
(
	id int,
    tipo_documento char(3),
    numero_documento char(9),
    nombres varchar(60),
    apellidos varchar(90),
    email varchar(80),
    celular char(9),
    fecha_nacimiento date,
    activo bool,
    CONSTRAINT cliente_pk PRIMARY KEY (id)
    );
    
SHOW TABLES;

ALTER TABLE CLIENTE
	ADD COLUMN estado_civil char(1);
ALTER TABLE CLIENTE
	DROP COLUMN fecha_nacimiento;
SELECT * FROM CLIENTE;
DROP TABLE CLIENTE;

USE dbGamarraMarket;

CREATE TABLE CLIENTE
(
	id int,
    tipo_documento char(3),
    numero_documento char(9),
    nombres varchar(60),
    apellidos varchar (90),
    email varchar(80),
    celular char(9),
    fecha_nacimiento date,
    activo bool,
    CONSTRAINT cliente_pk PRIMARY KEY (id)
);

DROP TABLE CLIENTE;

CREATE TABLE CLIENTE
(
	id int,
    tipo_documento char(3),
    numero_documento char(9),
    nombres varchar(60),
    apellidos varchar (90),
    email varchar(80),
    celular char(9),
    fecha_nacimiento date,
    activo bool,
    CONSTRAINT cliente_pk PRIMARY KEY (id)
);
SHOW TABLES;

CREATE TABLE VENTA
(
	id int,
    fecha_hora timestamp,
    numero_documento char(9),
    activo bool,
    cliente_id int,
    vendedor_id int,
    CONSTRAINT venta_pk PRIMARY KEY (id),
    CONSTRAINT venta_cliente_fk FOREIGN KEY (cliente_id) REFERENCES CLIENTE(id),
	CONSTRAINT venta_vendedor_fk FOREIGN KEY (vendedor_id) REFERENCES VENDEDOR(id)
);

CREATE TABLE VENDEDOR (
    id INT NOT NULL AUTO_INCREMENT,
    tipo_documento CHAR(3),
    numero_documento CHAR(9),
    nombres VARCHAR(60),
    apellidos VARCHAR(90),
    salario DECIMAL(8,2),
    celular CHAR(9),
    email VARCHAR(80),
    activo BOOL,
    CONSTRAINT vendedor_pk PRIMARY KEY (id)
);

CREATE TABLE PRENDA (
    id INT NOT NULL AUTO_INCREMENT,
    descripcion VARCHAR(90),
    marca VARCHAR(60),
    cantidad INT,
    talla VARCHAR(10),
    precio DECIMAL(8,2),
    activo BOOL,
    CONSTRAINT prenda_pk PRIMARY KEY (id)
);

CREATE TABLE VENTA_DETALLE (
    id INT NOT NULL AUTO_INCREMENT,
    cantidad INT,
    venta_id INT,
    prenda_id INT,
    CONSTRAINT venta_detalle_pk PRIMARY KEY (id),
    CONSTRAINT venta_fk FOREIGN KEY (venta_id) REFERENCES VENTA(id),
    CONSTRAINT prenda_fk FOREIGN KEY (prenda_id) REFERENCES PRENDA(id)
);

CREATE TABLE VENTA_DETALLE (
    id INT NOT NULL AUTO_INCREMENT,
    cantidad INT,
    venta_id INT,
    prenda_id INT,
    CONSTRAINT venta_detalle_pk PRIMARY KEY (id),
    CONSTRAINT venta_fk FOREIGN KEY (venta_id) REFERENCES VENTA(id),
    CONSTRAINT prenda_fk FOREIGN KEY (prenda_id) REFERENCES PRENDA(id)
);

SHOW TABLES;

ALTER TABLE VENTA
DROP FOREIGN KEY venta_cliente_fk;
SHOW TABLES;

SHOW DATABASES;
USE dbGamarraMarket;
SHOW TABLES;
SELECT * FROM VENTA_DETALLE;

ALTER TABLE VENTA
ADD CONSTRAINT venta_cliente_fk
FOREIGN KEY (cliente_id) REFERENCES CLIENTE(id);

USE dbGamarraMarket;
SHOW TABLES;

DESC CLIENTE;
DESC VENDEDOR;
DESC PRENDA;
DESC VENTA;
DESC VENTA_DETALLE;

SHOW CREATE TABLE VENTA;
SHOW CREATE TABLE VENTA_DETALLE;