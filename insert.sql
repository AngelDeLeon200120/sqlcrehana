use bd_compras;

show tables in bd_compras;
show databases;

alter table proveedores
modify direccion varchar(100);

describe proveedores;
describe productos;
describe compras;


select * from proveedores;
insert into proveedores(
nombre,
telefono,
direccion
)
VALUES 
("PEDRO",45678903,"VILLA NEUVA"),
("Carlos",12345678,"VILLA canales"),
("Andrea",34567892,"Jalapa"),
("Marcos",3453533,"San Marcos"),
("YILDO",5322244,"Petapa");

select * from productos;
insert into productos(
nombre,
precio,
talla,
color,
tipo
)
VALUES
("Playera",20,"Mediana","Blanca","Unisex deportiva"),
("Playera",20,"Grande","Roja","Unisex deportiva"),
("Pants",30,"Chico","Gris","Mujer deportiva"),
("Falda",30,"Grande","Roja","Mujer Formal"),
("Blusa",30,"Mediana","Negra","Mujer Casual"),
("Camisa",50,"Mediana","Blanca","Mujer Casual"),
("Corbata",10,"Unitalla","Negra","Hombre formal"),
("Corbata",10,"Unitalla","Azul","Hombre formal"),
("Pantalon Mezclilla",40,32,"Azul","Hombre casual"),
("Pantalon Mezclilla",40,36,"Azul","Hombre casual");


select * from compras;
insert into compras(
fecha,
unidades,
importe,
proveedor_id,
producto_id
)
VALUES
("1965-10-06",6,60,1,6),
("1965-09-06",8,160,3,2),
("1965-08-06",7,20,3,4),
("1965-07-06",2,40,4,6),
("1965-10-01",3,160,7,7),
("1965-10-02",44,130,5,6),
("1965-01-06",63,40,1,8),
("1965-10-03",5,120,2,9),
("1965-02-06",77,350,55,3),
("1965-03-05",2,50,5,2),
("1965-04-09",3,40,3,44),
("1965-05-06",22,670,13,33),
("1965-06-06",1,260,131,656),
("1965-11-05",460,45,31,55),
("1965-12-06",33,260,113,335),
("1965-10-02",66,560,641,426);
