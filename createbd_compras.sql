USE bd_compras;

CREATE TABLE PROVEEDORES(
id int auto_increment primary key,
nombre varchar(20) not null,
telefono varchar(20) not null unique,
ciudad varchar (20),
direccion float
);

CREATE TABLE Productos(
id int auto_increment primary key,
nombre varchar(20) not null,
precio float
);

CREATE TABLE Compras(
num_factura int auto_increment primary key,
fecha date,
unidades int,
importe float,
proveedor_id int,
producto_id int,
CONSTRAINT fk_proveedor FOREIGN KEY (proveedor_id) REFERENCES Proveedores(id) ON DELETE NO ACTION,
CONSTRAINT fk_productos FOREIGN KEY (producto_id) REFERENCES Productos(id) ON DELETE NO ACTION
);

SHOW TABLES IN bd_compras;
