SELECT * FROM compras C 
LEFT JOIN proveedores PV 
ON C.producto_id = PV.id
LEFT JOIN productos PD 
ON C.producto_id = PD.id;


SELECT * FROM compras C 
 JOIN proveedores PV 
ON C.producto_id = PV.id
 JOIN productos PD 
ON C.producto_id = PD.id;


SELECT PV.nombre,sum(unidades)unidades FROM compras C 
LEFT JOIN proveedores PV 
ON C.producto_id = PV.id
LEFT JOIN productos PD 
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
