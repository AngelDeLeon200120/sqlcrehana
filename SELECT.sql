

DESCRIBE Mascotas;

SELECT * FROM  productos;

SELECT * FROM productos WHERE tipo LIKE "%Casual%" AND precio BETWEEN 30 AND 50;

SELECT * FROM productos order by PRECIO asc;

SELECT * FROM proveedores;

SELECT count(ID) AS numProveedores from proveedores;

SELECT * FROM compras;

SELECT count(nombre) AS Nombres_deCamisas FROM productos;

SELECT FECHA AS dia,
sum(importe) as importe
FROM compras
group by FECHA
order by FECHA DESC;