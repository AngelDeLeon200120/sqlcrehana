use bd_comprass;

CREATE TABLE ROPA_DEPORTIVA(
id int auto_increment primary key,
Talla varchar(59),
Color varchar (50),
marcar varchar(50) 
);

CREATE TABLE Mascotas(
id int auto_increment primary key,
Raza varchar(100),
Tamaño varchar(100),
Color varchar (100),
edad int
);

CREATE TABLE Clientela(
num_facturas int auto_increment primary key,
mascotas_id int,
ropa_id int,
CONSTRAINT fkmascotas_id FOREIGN KEY (mascotas_id) REFERENCES Mascotas(id) ON DELETE NO ACTION,
CONSTRAINT fkropas_id FOREIGN KEY (ropa_id) REFERENCES ROPA_DEPORTIVA(id) ON DELETE NO ACTION
);


