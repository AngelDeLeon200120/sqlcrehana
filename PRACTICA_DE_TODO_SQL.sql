use bd_compras;
SET FOREIGN_KEY_CHECKS = 0;
CREATE TABLE ROPA_DEPORTIVA(
id int auto_increment primary key,
Talla varchar(59),
Color varchar (50),
marcar varchar(50) 
);

CREATE TABLE Mascotas_De_toda_especie(
id int auto_increment primary key,
Raza varchar(100),
Tamaño varchar(100),
Color varchar (100),
edad int
);

CREATE TABLE Clientela(
num_facturas int auto_increment primary key,
fecha date,
mascotas_id int,
ropa_id int,
CONSTRAINT fkmascotas_id FOREIGN KEY (mascotas_id) REFERENCES Mascotas(id) ON DELETE NO ACTION,
CONSTRAINT fkropas_id FOREIGN KEY (ropa_id) REFERENCES ROPA_DEPORTIVA(id) ON DELETE NO ACTION
);


DESCRIBE ROPA_DEPORTIVA;

ALTER TABLE ROPA_DEPORTIVA
CHANGE marcar marca varchar(100);


SELECT * FROM ROPA_DEPORTIVA WHERE Talla ="XXL";
UPDATE ROPA_DEPORTIVA set Talla ="XL" WHERE Talla ="XXL";
SELECT * FROM ROPA_DEPORTIVA;

INSERT INTO ROPA_DEPORTIVA(
Talla,
Color,
marca)
VALUES ('XXL', 'Yellow', 'Nike'),
('S', 'White', 'Adidas'),
('XL', 'White', 'Under Armour'),
('L', 'Green', 'Asics'),
('L', 'Blue', 'Adidas'),
('L', 'Red', 'Nike'),
('L', 'Red', 'New Balance'),
('S', 'Blue', 'Fila'),
('XL', 'Yellow', 'Under Armour'),
('S', 'Yellow', 'Puma'),
('XXL', 'Blue', 'New Balance'),
('S', 'Black', 'New Balance'),
('XL', 'Blue', 'Puma'),
('L', 'Black', 'Nike'),
('XXL', 'Gray', 'Asics'),
('S', 'Black', 'Puma'),
('M', 'Gray', 'Nike'),
('S', 'White', 'Asics'),
('L', 'Black', 'Puma'),
('L', 'Green', 'Adidas'),
('XL', 'Red', 'Puma'),
('XXL', 'Black', 'Fila'),
('XXL', 'White', 'Reebok'),
('M', 'Green', 'Adidas'),
('L', 'Blue', 'Nike'),
('S', 'Red', 'New Balance'),
('M', 'Black', 'Puma'),
('M', 'Yellow', 'Nike'),
('XL', 'Blue', 'Adidas'),
('XXL', 'Green', 'Under Armour'),
('L', 'Red', 'Puma'),
('XXL', 'Gray', 'Fila'),
('XXL', 'Red', 'Under Armour'),
('XXL', 'White', 'Reebok'),
('M', 'Black', 'Puma'),
('S', 'White', 'Puma'),
('XXL', 'Yellow', 'Under Armour'),
('M', 'Black', 'Fila'),
('L', 'Gray', 'Under Armour'),
('XXL', 'Blue', 'Nike'),
('XXL', 'Gray', 'Puma'),
('XXL', 'Yellow', 'Fila'),
('S', 'Black', 'Adidas'),
('XXL', 'Yellow', 'Puma'),
('S', 'White', 'Nike'),
('M', 'Red', 'Fila'),
('L', 'Yellow', 'Reebok'),
('XXL', 'Green', 'New Balance'),
('S', 'Gray', 'New Balance'),
('XXL', 'Yellow', 'Under Armour');


SELECT * FROM mascotas;
UPDATE mascotas set color="negro" WHERE color ="azul" ;
SELECT * FROM mascotas WHERE color LIKE "%tte%";
UPDATE mascotas set color="black" WHERE color LIKE "%tte%";
UPDATE mascotas set edad =edad + 2 ;
INSERT INTO mascotas(
Raza,
Tamaño,
Color,
edad
)VALUES
('Chihuahua', 'Mediano', 'Manchado', 8),
('Beagle', 'Mediano', 'Dorado', 1),
('Beagle', 'Grande', 'Gris', 9),
('Great Dane', 'Grande', 'Blanco', 11),
('Rottweiler', 'Pequeño', 'Dorado', 9),
('Chihuahua', 'Grande', 'Dorado', 8),
('Golden Retriever', 'Pequeño', 'Dorado', 6),
('Beagle', 'Grande', 'Gris', 8),
('German Shepherd', 'Mediano', 'Negro', 5),
('German Shepherd', 'Grande', 'Canela', 8),
('Bulldog', 'Pequeño', 'Gris', 15),
('Golden Retriever', 'Pequeño', 'Azul', 14),
('German Shepherd', 'Grande', 'Blanco', 11),
('Great Dane', 'Mediano', 'Negro', 5),
('Siberian Husky', 'Pequeño', 'Manchado', 7),
('Chihuahua', 'Pequeño', 'Azul', 13),
('Rottweiler', 'Grande', 'Rojo', 2),
('Shih Tzu', 'Pequeño', 'Gris', 8),
('Poodle', 'Mediano', 'Marrón', 6),
('Bulldog', 'Pequeño', 'Blanco', 11),
('Yorkshire Terrier', 'Grande', 'Rojo', 6),
('Poodle', 'Mediano', 'Canela', 6),
('Golden Retriever', 'Pequeño', 'Dorado', 9),
('Bulldog', 'Mediano', 'Azul', 11),
('Pomeranian', 'Mediano', 'Canela', 8),
('Golden Retriever', 'Grande', 'Blanco', 13),
('German Shepherd', 'Pequeño', 'Dorado', 8),
('Shih Tzu', 'Grande', 'Manchado', 4),
('Golden Retriever', 'Grande', 'Gris', 2),
('Rottweiler', 'Mediano', 'Rojo', 2),
('Pomeranian', 'Pequeño', 'Gris', 2),
('Golden Retriever', 'Grande', 'Blanco', 4),
('German Shepherd', 'Grande', 'Negro', 3),
('Chihuahua', 'Pequeño', 'Dorado', 6),
('Yorkshire Terrier', 'Pequeño', 'Rojo', 14),
('Yorkshire Terrier', 'Grande', 'Manchado', 3),
('Siberian Husky', 'Grande', 'Manchado', 14),
('Great Dane', 'Mediano', 'Negro', 12),
('Pomeranian', 'Pequeño', 'Negro', 14),
('Golden Retriever', 'Mediano', 'Azul', 7),
('Siberian Husky', 'Pequeño', 'Negro', 5),
('Great Dane', 'Mediano', 'Blanco', 2),
('Bulldog', 'Mediano', 'Dorado', 8),
('Poodle', 'Pequeño', 'Gris', 2),
('Beagle', 'Mediano', 'Negro', 11),
('Golden Retriever', 'Grande', 'Dorado', 6),
('Chihuahua', 'Mediano', 'Gris', 15),
('Great Dane', 'Grande', 'Marrón', 15),
('Shih Tzu', 'Mediano', 'Manchado', 12),
('Beagle', 'Pequeño', 'Gris', 15);

SELECT * FROM Clientela;

SELECT max(fecha) FECHAS,RP.marca marcas,RP.Talla Tallas, ma.raza Razas, ma.edad edades  FROM Clientela CL
LEFT JOIN ROPA_DEPORTIVA RP
ON CL.ropa_id = RP.id
LEFT JOIN mascotas ma
ON CL.mascotas_id = ma.id
GROUP BY RP.marca ,RP.Talla , ma.raza , ma.edad
ORDER BY FECHAS DESC;

INSERT INTO Clientela (fecha, mascotas_id, ropa_id) VALUES
('2020-08-02', 12, 11),
('2021-04-29', 77, 46),
('2018-02-09', 59, 25),
('2022-03-25', 82, 19),
('2020-12-02', 59, 24),
('2020-10-23', 36, 43),
('2020-12-25', 9, 46),
('2018-11-27', 49, 29),
('2018-05-14', 42, 47),
('2019-12-28', 48, 46),
('2022-05-15', 60, 20),
('2018-03-29', 18, 41),
('2019-11-12', 75, 4),
('2021-05-31', 28, 15),
('2018-11-30', 28, 49),
('2019-06-29', 47, 15),
('2020-09-16', 24, 1),
('2020-04-22', 49, 42),
('2022-02-26', 59, 33),
('2020-01-05', 45, 19),
('2018-02-08', 23, 1),
('2019-12-12', 81, 29),
('2020-07-27', 79, 41),
('2023-07-31', 39, 31),
('2019-02-24', 8, 9),
('2023-07-18', 99, 8),
('2023-10-17', 38, 12),
('2022-04-14', 32, 3),
('2023-06-15', 98, 26),
('2018-02-07', 82, 45),
('2019-07-31', 20, 49),
('2022-10-05', 36, 24),
('2018-10-27', 73, 20),
('2019-07-27', 17, 36),
('2019-01-09', 93, 25),
('2021-09-24', 97, 26),
('2022-09-25', 7, 50),
('2021-10-05', 71, 31),
('2020-09-28', 66, 40),
('2021-06-25', 48, 42),
('2018-08-19', 85, 40),
('2019-04-25', 66, 37),
('2023-03-07', 16, 9),
('2019-11-08', 22, 23),
('2020-06-16', 62, 20),
('2019-02-27', 11, 34),
('2021-06-29', 62, 6),
('2022-12-08', 7, 39),
('2018-04-17', 75, 37),
('2022-01-20', 72, 17);




