use bd_compras;
SET SQL_SAFE_UPDATES = 1;
CREATE TABLE Mascotas(
id int auto_increment not null primary key,
nombre varchar(50),
raza varchar(50),
tamaño varchar(50),
edad int not null,
color varchar(50)
);

DESCRIBE mascotas;

INSERT INTO Mascotas(
nombre,
raza,
tamaño,
edad,
color
)VALUES
('Zeus', 'Great Dane', 'Grande', 5, 'Brown'),
('Pepper', 'Weimaraner', 'Grande', 8, 'Red'),
('Sophie', 'Bichon Frise', 'Grande', 7, 'Brindle'),
('Rosie', 'Weimaraner', 'Grande', 15, 'Gray'),
('Zoe', 'Boston Terrier', 'Pequeño', 8, 'Red'),
('Sadie', 'French Bulldog', 'Pequeño', 7, 'Golden'),
('Harley', 'German Shepherd', 'Grande', 14, 'White'),
('Charlie', 'Beagle', 'Grande', 10, 'Tan'),
('Sadie', 'Boxer', 'Grande', 1, 'Red'),
('Molly', 'Yorkshire Terrier', 'Pequeño', 1, 'Spotted'),
('Murphy', 'Great Dane', 'Grande', 5, 'Spotted'),
('Oliver', 'Poodle', 'Pequeño', 13, 'Brindle'),
('Zeus', 'Pug', 'Grande', 12, 'Red');

INSERT INTO Mascotas (nombre, raza, tamaño, edad, color) VALUES
('Buddy', 'Labrador Retriever', 'Grande', 5, 'Black'),
('Bella', 'German Shepherd', 'Grande', 3, 'Brown'),
('Murphy', 'Pomeranian', 'Grande', 3, 'Tan'),
('Lily', 'Dachshund', 'Grande', 8, 'Black'),
('Shadow', 'Basset Hound', 'Pequeño', 3, 'Blue'),
('Murphy', 'Cane Corso', 'Pequeño', 3, 'White'),
('Chloe', 'Bulldog', 'Grande', 7, 'Golden'),
('Zeus', 'Siberian Husky', 'Grande', 15, 'Spotted'),
('Zoey', 'Weimaraner', 'Grande', 4, 'Brown'),
('Cooper', 'Great Dane', 'Grande', 6, 'Brindle'),
('Duke', 'Pomeranian', 'Pequeño', 8, 'Brindle'),
('Shadow', 'Australian Shepherd', 'Pequeño', 15, 'Spotted'),
('Bear', 'Basset Hound', 'Grande', 14, 'Gray'),
('Lucy', 'Basset Hound', 'Pequeño', 9, 'Brown'),
('Luna', 'Newfoundland', 'Grande', 11, 'Gray'),
('Bailey', 'Shih Tzu', 'Pequeño', 10, 'Blue'),
('Molly', 'Cane Corso', 'Pequeño', 2, 'Golden'),
('Millie', 'German Shepherd', 'Grande', 7, 'Spotted'),
('Charlie', 'Newfoundland', 'Grande', 3, 'Brindle'),
('Max', 'Bichon Frise', 'Grande', 3, 'Gray'),
('Bailey', 'Shih Tzu', 'Grande', 5, 'Brown'),
('Tucker', 'Shih Tzu', 'Grande', 11, 'Golden');

SELECT * FROM Mascotas order by nombre asc;
SELECT * FROM Mascotas WHERE tamaño="Pequeño" order by id asc;
SELECT * FROM Mascotas WHERE color ="Blue";
UPDATE Mascotas SET nombre ="Pepe" WHERE nombre="Bailey" AND id =29;
SELECT * FROM Mascotas WHERE color IN ("Brown","black","Gray") ORDER BY nombre asc;