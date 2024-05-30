CREATE TABLE IF NOT EXISTS consecionaria (
id_consecionaria VARCHAR (50) NOT NULL,
direccion VARCHAR (150) NOT NULL,
correo VARCHAR (50) NOT NULL,
telefono VARCHAR (13),
rol ENUM('admin', 'usuario','reporter'),
PRIMARY KEY (id_consecionaria)
);

CREATE TABLE Auto(
id_auto VARCHAR (30) NOT NULL,
marca VARCHAR(30) NOT NULL,
color VARCHAR(30) NOT NULL,
año VARCHAR (4) NOT NULL,
tipo VARCHAR(30) NOT NULL,
precio VARCHAR (15) NOT NULL,
combustible VARCHAR(30) NOT NULL,
PRIMARY KEY (id_auto)
);

CREATE TABLE Cliente (
id_cliente VARCHAR(50) NOT NULL,
nombre VARCHAR(30) NOT NULL,
telefono VARCHAR(30) NOT NULL,
domicilio VARCHAR(30) NOT NULL,
PRIMARY KEY (id_cliente)
);

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
       ('100' ,'Direccion 1', 'email@examplee.com', '3344546', 'usuario'),
       ('200' ,'Direccion 2', 'email2@ecample.com', '43576346', 'admin'),
	   ('300' ,'Direccion 3', 'email2@egvervv.com', '435564', 'usuario'),
	   ('400' ,'Direccion 4', 'email2@revhvtv.com', '43574363', 'admin'),
	   ('500' ,'Direccion 5', 'email2@ebjyjhe.com', '435437', 'usuario'),
	   ('600' ,'Direccion 6', 'email2@ytrbtds.com', '47878435', 'admin'),
	   ('700' ,'Direccion 7', 'email2@3454hvr.com', '4367745', 'usuario'),
	   ('800' ,'Direccion 8', 'email2@ballers.com', '74365546', 'admin'),
	   ('900' ,'Direccion 9', 'email2@erytbju.com', '44364477', 'usuario'),
	   ('1000' ,'Direccion 10', 'email2@56un6g.com', '654742757', 'admin');

 INSERT INTO  Auto (id_auto, marca, color, año, tipo, precio, combustible)
    values ('001' , 'ferrari ' ,'blanco' , '2000', 'deportivo' ,'200,000' , 'gasolina'),
    ('002' ,'toyota' ,'azul' , '1990', 'deportivo' ,'500,000' , 'gasolina'),
    ('003' ,'ford' ,'rojo' , '2001', 'deportivo' ,'350,000' , 'gasolina'),
    ('004' ,'nissan' ,'negro' , '1985', 'deportivo' ,'480,000' , 'gasolina'),
    ('005' ,'Chevrolet' ,'verde' , '1995', 'deportivo' ,'400,000' , 'gasolina'),
    ('006' ,'nissan' ,'cafe' , '1999', 'deportivo' ,'380,000' , 'gasolina'),
    ('007' ,'Volkswagen' ,'negro' , '2000', 'deportivo' ,'41,000' , 'gasolina'),
    ('008' ,'honda' ,'blanco' , '2001', 'deportivo' ,'440,000' , 'gasolina'),
    ('009' ,'audi' ,'amarillo' , '2005', 'deportivo' ,'320,000' , 'gasolina'),
    ('010' ,'mazda' ,'negro' , '2003', 'deportivo' ,'320,000' , 'gAsolina');
    

    
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

select count(l.id_auto), sum(a.precio)
from historial as l
inner join auto as a on a.id_auto = l.id_auto
where -- mes;

SELECT MAX(precio), MIN(precio) FROM auto;

SELECT empleado.id_empleado, id_cliente
FROM empleado
INNER JOIN  cliente ON empleado.id_empleado =cliente.id_empleado;

SELECT auto.id_auto, historial.id_historial
FROM auto
INNER JOIN historial ON auto.id_auto = cliente.id_cliente;



SELECT marca AS empleado, marca AS telefono
FROM auto
JOIN id_auto ON id_auto = id_auto
WHERE precio > 50000;


SELECT marca AS auto, precio
FROM auto
WHERE precio > (
SELECT AVG(e.precio) FROM auto WHERE marca = e.marca
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
      SELECT 1 FROM precio WHERE id_auto = id.auto
);


SELECT marca, precio
FROM auto
ORDER BY precio DESC
LIMIT 10 OFFSET 10;
