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
id_historial VARCHAR (30) NOT NULL,
id_empleado VARCHAR (30) NOT NULL,
id_auto VARCHAR(30) NOT NULL,
id_cliente VARCHAR(30) NOT NULL,
id_consecionaria VARCHAR (50) NOT NULL,
fecha_venta VARCHAR (15) NOT NULL,
PRIMARY KEY (id_historial),
FOREIGN KEY (id_consecionaria) REFERENCES consecionaria(id_consecionaria),
FOREIGN KEY (id_auto) REFERENCES auto(id_auto),
FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
FOREIGN KEY (id_empleado) REFERENCES empleado(id_empleado)
);

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
    
    INSERT INTO historial (id_historial, id_empleado, id_auto, id_cliente, id_consecionaria, fecha_venta )
    values ('1' ,'101 ' ,'001' , '000001' , '100' , '01/01/2024'),
    ('2' ,'102 ' ,'002' , '000002' , '200' , '02/01/2024'),
    ('3' ,'103 ' ,'003' , '000003' , '300' , '03/01/2024'),
    ('4' ,'104 ' ,'004' , '000004' , '400' , '04/01/2024'),
    ('5' ,'105 ' ,'005' , '000005' , '500' , '05/01/2024'),
    ('6' ,'106 ' ,'006' , '000006' , '600' , '06/01/2024'),
    ('7' ,'107 ' ,'007' , '000007' , '700' , '07/01/2024'),
    ('8' ,'108 ' ,'008' , '000008' , '800' , '08/01/2024'),
    ('9' ,'109 ' ,'009' , '000009' , '900' , '09/01/2024'),
    ('10' ,'110 ' ,'010' , '000010' , '1000' , '10/01/2024');
    
    
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


    