
SELECT tipo , count(nombre) num_products FROM Productos
GROUP BY tipo 
ORDER BY num_products desc;