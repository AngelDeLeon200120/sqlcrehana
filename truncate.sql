show tables in bd_compras;

truncate table compras;
truncate table proveedores;
truncate table productos;

Alter table compras
drop foreign key fk_proveedor;

Alter table compras
drop foreign key fk_productos;

