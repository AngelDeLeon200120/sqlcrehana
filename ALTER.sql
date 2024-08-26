DESCRIBE productos;

Alter table productos 
ADD talla varchar(50),
ADD color varchar(50),
ADD tipo varchar(50);

DESCRIBE PROVEEDORES;

Alter table proveedores
DROP ciudad;

Alter table proveedores
MODIFY telefono varchar(10) null;

Alter table proveedores
Modify direccion varchar(100);

