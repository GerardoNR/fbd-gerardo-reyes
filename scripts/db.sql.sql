CREATE TABLE IF NOT EXISTS consecionaria (
id_consecionaria int not null auto_increment,
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
CREATE TABLE concesionaria (
id_concesionaria VARCHAR(30) NOT NULL,
nombre VARCHAR(30) NOT NULL,
ubicacion VARCHAR(30) NOT NULL,
telefono VARCHAR(30) NOT NULL,
tipo_auto VARCHAR(30) NOT NULL,
PRIMARY KEY (id_concesionaria)
);

CREATE TABLE Cliente (
id_cliente VARCHAR(30) NOT NULL,
nombre VARCHAR(30) NOT NULL,
telefono VARCHAR(30) NOT NULL,
domicilio VARCHAR(30) NOT NULL,
PRIMARY KEY (id_cliente)
);

CREATE TABLE Empleado (
id_empleado VARCHAR (30) NOT NULL,
nombre VARCHAR(30) NOT NULL,
telefono VARCHAR(30) NOT NULL,
correo_electronico VARCHAR(30) NOT NULL,
PRIMARY KEY (id_empleado)
);

CREATE TABLE Historial (
id_historial VARCHAR (30) NOT NULL,
id_empleado VARCHAR (30) NOT NULL,
id_auto VARCHAR(30) NOT NULL,
id_cliente VARCHAR(30) NOT NULL,
id_consecionaria VARCHAR(30) NOT NULL,
fecha_venta VARCHAR (15) NOT NULL,
PRIMARY KEY (id_historial),
FOREIGN KEY (id_auto) REFERENCES auto(id_auto),
FOREIGN KEY (id_consecionaria) REFERENCES consecionaria(id_consecionaria),
FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
FOREIGN KEY (id_empleado) REFERENCES empleado (id_empleado)
);

INSERT INTO consecionaria(Dirección,Correo,Telefono,rol)
values ('Direccion 1', 'email@examplee.com', '3344546', 'usuario'),
       ('Direccion 2', 'email2@ecample.com', '43576346', 'admin'),
	   ('Direccion 3', 'email2@egvervv.com', '435564', 'usuario'),
	   ('Direccion 4', 'email2@revhvtv.com', '43574363', 'admin'),
	   ('Direccion 5', 'email2@ebjyjhe.com', '435437', 'usuario'),
	   ('Direccion 6', 'email2@ytrbtds.com', '47878435', 'admin'),
	   ('Direccion 7', 'email2@3454hvr.com', '4367745', 'usuario'),
	   ('Direccion 8', 'email2@ballers.com', '74365546', 'admin'),
	   ('Direccion 9', 'email2@erytbju.com', '44364477', 'usuario'),
	   ('Direccion 10', 'email2@56un6g.com', '654742757', 'admin');

 INSERT INTO  Auto (
    marca,
    color, 
    año, 
    tipo,
    precio,
    combustible,
    )
    values ('ferrari' ,'blanco' , '2000', 'deportivo' ,'200,000' , 'gasolina'),
    ('toyota' ,'azul' , '1990', 'deportivo' ,'500,000' , 'gasolina'),
    ('ford' ,'rojo' , '2001', 'deportivo' ,'350,000' , 'gasolina'),
    ('nissan' ,'negro' , '1985', 'deportivo' ,'480,000' , 'gasolina'),
    ('Chevrolet' ,'verde' , '1995', 'deportivo' ,'400,000' , 'gasolina'),
    ('nissan' ,'cafe' , '1999', 'deportivo' ,'380,000' , 'gasolina'),
    ('Volkswagen' ,'negro' , '2000', 'deportivo' ,'41,000' , 'gasolina'),
    ('honda' ,'blanco' , '2001', 'deportivo' ,'440,000' , 'gasolina'),
    ('audi' ,'amarillo' , '2005', 'deportivo' ,'320,000' , 'gasolina'),
    ('mazda' ,'negro' , '2003', 'deportivo' ,'320,000' , 'gAsolina');
    
    INSERT INTO  consecionaria (
    nombre,
    ubicacion,
    telefono,
    tipo_auto,
    )
    values ('tienda1' ,'tlaxiaco' , '9531145698', 'deportivo'),
    ('tienda2' ,'oaxaca' , '9531145698', 'deportivo'),
    ('tienda3' ,'mexico' , '9531178890', 'deportivo'),
    ('tienda4' ,'puebla' , '9531146112', 'deportivo'),
    ('tienda5' ,'tijuana' , '9531143709', 'deportivo'),
    ('tienda6' ,'putla' , '9531180098', 'deportivo'),
    ('tienda7' ,'jalisco' , '9531146458', 'deportivo'),
    ('tienda8' ,'estados unidos' , '9531234328', 'deportivo'),
    ('tienda9' ,'durango' , '9531375209', 'deportivo'),
    ('tienda10' ,'chiapas' , '95534656987', 'deportivo');
    
INSERT INTO  cliente (
    nombre,
    telefono,
    dereccion,
    )
    values ('luis' ,'9534659863' , 'tlaxiaco'),
    ('jorge' ,'9533769912' , 'oaxaca'),
    ('kevin' ,'9535479899' , 'mexico'),
    ('noe' ,'9534685112' , 'putla'),
    ('bryan' ,'9534321676' , 'huajuapan'),
    ('fernando' ,'9533245789' , 'tayata'),
    ('jose' ,'9533446578' , 'tlaxiaco'),
    ('eric' ,'9533241156' , 'oaxaca'),
    ('juan' ,'9539907104' , 'huajuapan'),
     ('leo' ,'9535432123' , 'tlaxiaco');
     
    INSERT INTO  empleado (
    nombre,
    telefono,
    correo_electronico,
    )
    values ('pepe' ,'9535577689' , 'pepe@gmail.com'),
    ('emanuel' ,'9534654533' , 'ema@gmail.com'),
    ('fer' ,'9534611233' , 'fer@gmail.com'),
    ('kevin' ,'95346556763' , 'kevin@gmail.com'),
    ('sofia' ,'953463456' , 'sofi@gmail.com'),
    ('pablo' ,'9534653355' , 'pag@gmail.com'),
    ('mario' ,'9534332211' , 'ma@gmail.com'),
    ('luis' ,'9530099643' , 'luis@gmail.com'),
    ('antonio' ,'9534634409' , 'antonio@gmail.com'),
    ('leonel' ,'9534645900' , 'leo@gmail.com');