CREATE TABLE IF NOT EXISTS consecionaria (
id_consecionaria VARCHAR (50) NOT NULL,
direccion VARCHAR (150) NOT NULL,
correo VARCHAR (50) NOT NULL,
telefono VARCHAR (13),
rol ENUM('admin', 'usuario','reporter'),
PRIMARY KEY (id_consecionaria)
);

CREATE TABLE auto(
id_auto int auto_increment,
id_marca int references marca_auto(id_marca),
id_color int references color_auto(id_color),
año VARCHAR (4) NOT NULL,
tipo VARCHAR(30) NOT NULL,
precio VARCHAR (15) NOT NULL,
id_combustible int references combustible_auto(id_combustible),
PRIMARY KEY (id_auto)
);

CREATE TABLE Cliente (
id_cliente VARCHAR(50) NOT NULL,
nombre VARCHAR(30) NOT NULL,
telefono VARCHAR(30) NOT NULL,
domicilio VARCHAR(30) NOT NULL,
PRIMARY KEY (id_cliente)
);
create table color_auto(
id_color int auto_increment,
color varchar(30),
primary key (id_color)
);
CREATE TABLE marca_auto (
    id_marca INT AUTO_INCREMENT,
    marca VARCHAR(30),
    PRIMARY KEY (id_marca)
);
CREATE TABLE combustible_auto (
    id_combustible INT AUTO_INCREMENT,
    combustible VARCHAR(30),
    PRIMARY KEY (id_combustible)
);

INSERT INTO combustible_auto (combustible)
VALUES 
    ('Gasoline'),
    ('Diesel'),
    ('Electric'),
    ('Hybrid'),
    ('Natural Gas'),
    ('Ethanol'),
    ('Hydrogen'),
    ('Propane'),
    ('Biodiesel'),
    ('Methanol');
    
SELECT * FROM combustible_auto;

ALTER TABLE auto ADD COLUMN combustible INT REFERENCES combustible_auto(id_combustible);
ALTER TABLE auto DROP COLUMN combustible;
    
    
INSERT INTO marca_auto (marca)
VALUES 
    ('Toyota'),
    ('Honda'),
    ('Ford'),
    ('Chevrolet'),
    ('Nissan'),
    ('BMW'),
    ('Mercedes-Benz'),
    ('Volkswagen'),
    ('Hyundai'),
    ('Audi');
SELECT * FROM auto;

UPDATE auto SET marca = 1 WHERE id_auto = 1;
UPDATE auto SET marca = 2 WHERE id_auto = 2;
UPDATE auto SET marca = 3 WHERE id_auto = 3;
UPDATE auto SET marca = 4 WHERE id_auto = 4;
UPDATE auto SET marca = 5 WHERE id_auto = 5;
UPDATE auto SET marca = 6 WHERE id_auto = 6;
UPDATE auto SET marca = 7 WHERE id_auto = 7;
UPDATE auto SET marca = 8 WHERE id_auto = 8;
UPDATE auto SET marca = 9 WHERE id_auto = 9;
UPDATE auto SET marca = 10 WHERE id_auto = 10;

ALTER TABLE auto ADD COLUMN marca int REFERENCES marca_auto(id_marca);
ALTER TABLE auto DROP COLUMN marca;

insert into color_auto(color)
values 
("rojo"),
('verde'),
('azul'),
('amarillo'),
('naranja'),
('morado'),
('rosa'),
('marrón'),
('negro'),
('blanco');
select * from auto;

ALTER TABLE auto ADD COLUMN color INT REFERENCES color_auto(id_color);
ALTER TABLE auto DROP COLUMN color;

UPDATE auto SET id_color = 1 WHERE id_auto = 1;
UPDATE auto SET id_color = 2 WHERE id_auto = 2;
UPDATE auto SET id_color = 3 WHERE id_auto = 3;
UPDATE auto SET id_color = 4 WHERE id_auto = 4;
UPDATE auto SET id_color = 5 WHERE id_auto = 5;
UPDATE auto SET id_color = 6 WHERE id_auto = 6;
UPDATE auto SET id_color = 7 WHERE id_auto = 7;
UPDATE auto SET id_color = 8 WHERE id_auto = 8;
UPDATE auto SET id_color = 9 WHERE id_auto = 9;
UPDATE auto SET id_color = 10 WHERE id_auto = 10;

CREATE TABLE empleado (
id_empleado VARCHAR (30) NOT NULL,
nombre VARCHAR(30) NOT NULL,
telefono VARCHAR(30) NOT NULL,
correo_electronico VARCHAR(30) NOT NULL,
PRIMARY KEY (id_empleado)
);

CREATE TABLE historial (
id_historial INT NOT NULL AUTO_INCREMENT,
id_empleado VARCHAR (30) NOT NULL,
id_auto VARCHAR(30) NOT NULL,
id_cliente VARCHAR(50) NOT NULL,
id_consecionaria VARCHAR (50) NOT NULL,
fecha_venta date,
PRIMARY KEY (id_historial),
FOREIGN KEY (id_consecionaria) REFERENCES consecionaria(id_consecionaria) ON UPDATE no action on delete no action,
FOREIGN KEY (id_auto) REFERENCES auto(id_auto) ON UPDATE no action on delete no action,
FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente) ON UPDATE no action on delete no action,
FOREIGN KEY (id_empleado) REFERENCES empleado(id_empleado) ON UPDATE no action on delete no action
);

drop table historial;

INSERT INTO consecionaria(id_consecionaria, direccion,Correo,Telefono,rol)
values
       ('Direccion 1', 'email@examplee.com', '3344546', 'usuario'),
       ('Direccion 2', 'email2@ecample.com', '43576346', 'admin'),
	   ('Direccion 3', 'email2@egvervv.com', '435564', 'usuario'),
	   ('Direccion 4', 'email2@revhvtv.com', '43574363', 'admin'),
	   ('Direccion 5', 'email2@ebjyjhe.com', '435437', 'usuario'),
	   ('Direccion 6', 'email2@ytrbtds.com', '47878435', 'admin'),
	   ('Direccion 7', 'email2@3454hvr.com', '4367745', 'usuario'),
	   ('Direccion 8', 'email2@ballers.com', '74365546', 'admin'),
	   ('Direccion 9', 'email2@erytbju.com', '44364477', 'usuario'),
	   ('Direccion 10', 'email2@56un6g.com', '654742757', 'admin');

 INSERT INTO  auto ( marca, id_color, año, tipo, precio, combustible)
    values 
    ( 'ferrari ' ,'1' , '2000', 'deportivo' ,'200,000' , 'gasolina'),
    ('toyota' ,'2' , '1990', 'deportivo' ,'500,000' , 'gasolina'),
    ('ford' ,'3' , '2001', 'deportivo' ,'350,000' , 'gasolina'),
    ('nissan' ,'4' , '1985', 'deportivo' ,'480,000' , 'gasolina'),
    ('Chevrolet' ,'5' , '1995', 'deportivo' ,'400,000' , 'gasolina'),
    ( 'nissan' ,'6' , '1999', 'deportivo' ,'380,000' , 'gasolina'),
    ('Volkswagen' ,'7' , '2000', 'deportivo' ,'41,000' , 'gasolina'),
    ('honda' ,'8' , '2001', 'deportivo' ,'440,000' , 'gasolina'),
    ('audi' ,'9' , '2005', 'deportivo' ,'320,000' , 'gasolina'),
    ('mazda' ,'10' , '2003', 'deportivo' ,'320,000' , 'gAsolina');
    

    
INSERT INTO  cliente (id_cliente, nombre, telefono, domicilio)
    values ('000001' ,'luis' ,'9534659863' , 'tlaxiaco'),
    ('000002' ,'jorge' ,'9533769912' , 'oaxaca'),
    ('000003' ,'kevin' ,'9535479899' , 'mexico'),
    ('000004' ,'noe' ,'9534685112' , 'putla'),
    ('000005' ,'bryan' ,'9534321676' , 'huajuapan'),
    ('000006' ,'fernando' ,'9533245789' , 'tayata'),
    ('000007' ,'jose' ,'9533446578' , 'tlaxiaco'),
    ('000008' ,'eric' ,'9533241156' , 'oaxaca'),
    ('000009' ,'juan' ,'9539907104' , 'huajuapan'),
     ('000010' , 'leo' ,'9535432123' , 'tlaxiaco');
     
    INSERT INTO  empleado (id_empleado, nombre,telefono,correo_electronico)
    values ('101' ,'pepe' ,'9535577689' , 'pepe@gmail.com'),
    ('102' ,'emanuel' ,'9534654533' , 'ema@gmail.com'),
    ('103' ,'fer' ,'9534611233' , 'fer@gmail.com'),
    ('104' ,'kevin' ,'95346556763' , 'kevin@gmail.com'),
    ('105' ,'sofia' ,'953463456' , 'sofi@gmail.com'),
    ('106' ,'pablo' ,'9534653355' , 'pag@gmail.com'),
    ('107' ,'mario' ,'9534332211' , 'ma@gmail.com'),
    ('108' ,'luis' ,'9530099643' , 'luis@gmail.com'),
    ('109' ,'antonio' ,'9534634409' , 'antonio@gmail.com'),
    ('110' ,'leonel' ,'9534645900' , 'leo@gmail.com');
    

INSERT INTO `consecionaria`.`historial` (`id_empleado`, `id_auto`, `id_cliente`, `id_consecionaria`, `fecha_venta`) 
    VALUES ('101', '001', '000001', '100', '2024-02-01'),
    ('102', '002', '000002', '200', '2024-02-02'),
    ('103', '003', '000003', '300', '2024-02-03'),
    ('104', '004', '000004', '400', '2024-02-04'),
    ('105', '005', '000005', '500', '2024-02-05'),
    ('106', '006', '000006', '600', '2024-02-06'),
    ('107', '007', '000007', '700', '2024-02-07'),
    ('108', '008', '000008', '800', '2024-02-08'),
    ('109', '009', '000009', '900', '2024-02-09'),
    ('110', '010', '000010', '1000', '2024-02-10');
    
    
SELECT * FROM consecionaria;
SELECT * FROM auto;
SELECT * FROM cliente;
SELECT * FROM empleado;
SELECT * FROM historial;

SELECT id_consecionaria, direccion,Correo,Telefono,rol FROM consecionaria;
SELECT id_auto, marca, color, año, tipo, precio, combustible FROM auto;
SELECT id_cliente, nombre, telefono, domicilio FROM cliente;
SELECT id_empleado, nombre,telefono,correo_electronico FROM empleado;
SELECT id_historial, id_empleado, id_auto, id_cliente, id_consecionaria, fecha_venta FROM historial;


SELECT * FROM auto ORDER BY  año  ASC;
SELECT * FROM historial ORDER BY Fecha_venta DESC;

SELECT COUNT(*) FROM consecionaria;
SELECT COUNT(*) FROM auto;
SELECT COUNT(*) FROM cliente;
SELECT COUNT(*) FROM empleado;
SELECT COUNT(*) FROM historial;


SELECT COUNT(l.id_auto), SUM(a.precio)
FROM historial AS l
INNER JOIN auto AS a ON a.id_auto = l.id_auto
WHERE l.fecha_venta = 2024;


SELECT MAX(precio), MIN(precio) FROM auto;

SELECT empleado.id_empleado, cliente.id_cliente
FROM empleado
INNER JOIN cliente ON empleado.id_cliente = cliente.id_cliente;


SELECT auto.id_auto, historial.id_historial
FROM auto
INNER JOIN historial ON auto.id_auto = historial.id_auto;

SELECT marca AS empleado, marca AS telefono
FROM auto
JOIN id_auto ON id_auto = id_auto
WHERE precio > 50000;



SELECT marca AS auto, precio
FROM auto
WHERE precio > (
    SELECT AVG(precio) FROM auto AS e WHERE auto.marca = e.marca
);

SELECT id_auto, AVG(precio) AS id_precio
FROM auto e
GROUP BY id_auto;

SELECT id_auto, fecha_venta
FROM historial
WHERE YEAR(fecha_venta) = 2023;

SELECT nombre, 'Empleado' AS id_empleado
FROM empleado
UNION
SELECT nombre, 'Cliente' AS id_empleado
FROM empleado;


SELECT nombre, domicilio
FROM cliente
WHERE domicilio LIKE '%domicilio%';


SELECT marca
FROM auto
WHERE EXISTS (
      SELECT 1 FROM precio WHERE precio.id_auto = auto.id_auto
);


SELECT marca, precio
FROM auto
ORDER BY precio DESC
LIMIT 10 OFFSET 10;
