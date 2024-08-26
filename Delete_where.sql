SELECT * FROM proveedores;
SET SQL_SAFE_UPDATES = 0;

DELETE FROM proveedores WHERE id=3;

INSERT INTO proveedores(
nombre,
telefono,
direccion
)
VALUES
("Andrea",34782932,"Jalapa");

DELETE FROM PROVEEDORES WHERE nombre='YILDO' AND id=5;

SELECT * FROM Productos;

DELETE FROM Productos WHERE nombre='Corbata';