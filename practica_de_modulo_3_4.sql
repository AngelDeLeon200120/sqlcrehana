USE bd_compras;
SET SQL_SAFE_UPDATES = 0;
CREATE TABLE PRODUCTOS_Electronicos(
productos_id int,
nombre varchar(1000),
tipo varchar(100),
color varchar(100),
presion float 
);


DESCRIBE PRODUCTOS_Electronicos;
INSERT INTO PRODUCTOS_Electronicos(
productos_id,
nombre,
tipo,
color,
presion
)VALUES
(1, 'Smartphone Galaxy S21', 'Samsung', 'Negro', 799),
(2, 'Laptop MacBook Air M2', 'Apple', 'Plata', 1199),
(3, 'Tablet iPad Pro 11"', 'Apple', 'Gris Espacial', 899),
(4, 'Auriculares WH-1000XM4', 'Sony', 'Negro', 350),
(5, 'Smart TV QLED 65"', 'Samsung', 'Negro', 1200),
(6, 'Laptop XPS 13', 'Dell', 'Plata', 1300),
(7, 'Cámara Alpha 7 IV', 'Sony', 'Negro', 2500),
(8, 'Consola PlayStation 5', 'Sony', 'Blanco', 499),
(9, 'Smartwatch Series 7', 'Apple', 'Rojo', 399),
(10, 'Altavoz Echo Dot', 'Amazon', 'Antracita', 50),
(11, 'Monitor UltraSharp 27"', 'Dell', 'Negro', 499),
(12, 'Router Wi-Fi 6', 'Netgear', 'Blanco', 299),
(13, 'Auriculares AirPods Pro', 'Apple', 'Blanco', 249),
(14, 'Smartphone Pixel 6', 'Google', 'Negro', 699),
(15, 'Laptop ThinkPad X1 Carbon', 'Lenovo', 'Negro', 1450),
(16, 'Tablet Galaxy Tab S7', 'Samsung', 'Bronce', 650),
(17, 'Cámara EOS R6', 'Canon', 'Negro', 2400),
(18, 'Consola Xbox Series X', 'Microsoft', 'Negro', 499),
(19, 'Smartwatch Galaxy Watch 4', 'Samsung', 'Plateado', 349),
(20, 'Altavoz Sonos One', 'Sonos', 'Blanco', 199),
(21, 'Monitor Predator 34"', 'Acer', 'Negro', 899),
(22, 'Router AX6000', 'TP-Link', 'Blanco', 399),
(23, 'Auriculares Bose 700', 'Bose', 'Plateado', 379),
(24, 'Smartphone OnePlus 9 Pro', 'OnePlus', 'Verde', 969),
(25, 'Laptop ROG Zephyrus G14', 'Asus', 'Blanco', 1599),
(26, 'Tablet Surface Pro 7', 'Microsoft', 'Platino', 899),
(27, 'Cámara Z6 II', 'Nikon', 'Negro', 1999),
(28, 'Consola Nintendo Switch', 'Nintendo', 'Negro', 299),
(29, 'Smartwatch Versa 3', 'Fitbit', 'Rosa', 229),
(30, 'Altavoz HomePod Mini', 'Apple', 'Blanco', 99),
(31, 'Monitor Odyssey G9', 'Samsung', 'Blanco', 1399),
(32, 'Router Deco X90', 'TP-Link', 'Blanco', 499),
(33, 'Auriculares QuietComfort 45', 'Bose', 'Negro', 329),
(34, 'Smartphone Mi 11', 'Xiaomi', 'Azul', 749),
(35, 'Laptop Blade 15', 'Razer', 'Negro', 1799),
(36, 'Tablet MediaPad M5', 'Huawei', 'Gris', 499),
(37, 'Cámara Lumix GH5', 'Panasonic', 'Negro', 1699),
(38, 'Consola Steam Deck', 'Valve', 'Negro', 399),
(39, 'Smartwatch TicWatch Pro 3', 'Mobvoi', 'Negro', 299),
(40, 'Altavoz Beosound A1', 'Bang & Olufsen', 'Negro', 250),
(41, 'Monitor Pro Display XDR', 'Apple', 'Plateado', 4999),
(42, 'Router Orbi Mesh', 'Netgear', 'Blanco', 699),
(43, 'Auriculares Momentum 3', 'Sennheiser', 'Negro', 399),
(44, 'Smartphone P50 Pro', 'Huawei', 'Dorado', 1199),
(45, 'Laptop Spectre x360', 'HP', 'Azul', 1399),
(46, 'Tablet Yoga Tab 13', 'Lenovo', 'Negro', 679),
(47, 'Cámara PowerShot G7X III', 'Canon', 'Negro', 749),
(48, 'Consola PlayStation 4 Slim', 'Sony', 'Negro', 299),
(49, 'Smartwatch Amazfit GTR 3', 'Amazfit', 'Gris', 179),
(50, 'Altavoz Flip 5', 'JBL', 'Rojo', 120);

SELECT * FROM PRODUCTOS_Electronicos;

ALTER TABLE PRODUCTOS_Electronicos 
CHANGE presion precio varchar(100);
DESCRIBE PRODUCTOS_Electronicos;
SELECT * From PRODUCTOS_Electronicos WHERE color in ('Blanco','Rojo','Negro') order by precio desc;
UPDATE PRODUCTOS_Electronicos set precio=round(precio/1.1,2) where color in ('Blanco','Negro');

SELECT * FROM PRODUCTOS_Electronicos;
