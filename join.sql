SELECT PV.nombre Nombres, PV.direccion Direccion, PV.telefono Telefono, PD.nombre Nombres_Productos,PD.precio precios_costos,MAX(fecha) FECHAS,PD.tipo Tipo_de_prenda FROM compras C 
LEFT JOIN proveedores PV 
ON C.producto_id = PV.id
LEFT JOIN productos PD 
ON C.producto_id = PD.id
GROUP BY  PV.nombre , PV.direccion , PV.telefono , PD.nombre ,PD.precio,PD.tipo
ORDER BY precios_costos desc;

SELECT * FROM proveedores;
SELECT * FROM productos;
SELECT * FROM COMPRAS;

SELECT PV.direccion direccion,PV.nombre nombres,PV.telefono,PD.nombre NOMBRES_PRODUCTO,PD.precio, sum(unidades) unidades,MAX(fecha) fechas FROM compras C 
LEFT JOIN proveedores PV 
ON C.producto_id = PV.id
LEFT JOIN productos PD 
ON C.producto_id = PD.id
GROUP BY PV.direccion,PV.nombre,PV.telefono,PD.nombre,PD.precio
order by unidades ASC;


SELECT * FROM compras C 
 JOIN proveedores PV 
ON C.producto_id = PV.id
 JOIN productos PD 
ON C.producto_id = PD.id;


SELECT PV.nombre nombres,sum(unidades)unidades FROM compras C 
 JOIN proveedores PV 
ON C.producto_id = PV.id
 JOIN productos PD 
ON C.producto_id = PD.id
GROUP BY PV.nombre
ORDER BY unidades desc;


SELECT pd.nombre,sum(importe)importe,
sum(unidades)unidades,sum(importe)/
sum(unidades) promedio_costos FROM compras C 
LEFT JOIN proveedores PV 
ON C.producto_id = PV.id
LEFT JOIN productos PD 
ON C.producto_id = PD.id
GROUP BY pd.nombre
ORDER BY importe desc;


SELECT * FROM compras CS 
LEFT JOIN productos PD ON 
C.producto_id = PD.id 
LEFT JOIN proveedores PV ON
c.productos_id = PV.id;
