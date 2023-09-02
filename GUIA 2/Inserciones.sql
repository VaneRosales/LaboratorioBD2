-- Inserciones

-- Departamentos
insert into Departamentos values
	('San Salvador'),
	('Sonsonate'),
	('Santa Ana'),
	('La Libertad'),
	('Ahuachapan');

select * from Departamentos;

-- Municipios
insert into Municipios values
	('Sonsonate Norte', '2'),
	('Sonsonate Este', '2'),
	('Sonsonate Oeste', '2'),
	('Sonsonate Centro', '2'),
	('Santa Ana Centro', '3'),
	('Santa Ana Este', '3'),
	('San Salvador Centro', '1');

select * from Municipios;

-- Distritos
insert into Distritos values
	('Izalco', '2'),
	('Acajutla', '3'),
	('Sonsonate', '2'),
	('San Marcos', '7'),
	('Santa Ana', '5');

select * from Distritos;

-- Direcciones
insert into Direcciones values
	('Col Lourdes, Calle 1, #9', 'Frente al parque', '1', '02301'),
	('Barrio El angel, Av 2, #2', 'Frente al amate', '2', '02302'),
	('Col San Martin, Av 1, #5a', 'Frente a la playa', '3', '02305'),
	('Col Santa Maria, Av 6, #9b', 'Frente a catedral', '4', '02301'),
	('Barrio San Marcos, #5G', 'Frente a la iglesia', '5', '03360');

select * from Direcciones;

-- Cargos
insert into Cargos values
	('Cajero'),
	('Personal Limpieza'),
	('Gerente'),
	('Farmaceutico');

select * from Cargos;
-- Empleados
insert into Empleados values
	('Antonio José', 'Martinez Saavedra','07654321-3', '07654321-3', '01-01-1971', '7731-2940', 'holajose@gmail.com','1','1'),
	('Maria del Carmen', 'Rodriguez Perez','03654351-6', '03654351-6', '05-04-1975', '7435-6960', 'maricarmen@gmail.com','2','1'),
	('Andrea Maria', 'Hernandez Sandoval','04654341-2', '04654341-2', '04-05-1989', '7031-5080', 'handrea@gmail.com','3','3'),
	('Miguel Angel', 'Villalta Montes','05664221-3', '05664221-3', '10-06-1981', '7054-9045', 'miguelangel@gmail.com','4','4'),
	('Lucia Esmeralda', 'Flores Martinez','05657321-5', '05657321-5', '03-01-1978', '7242-4090', 'lucia23@gmail.com','5','5');
select * from Empleados;



-- Clientes
insert into Clientes values
	('Sandra Verenice','Telule Juarez','07644321-5','3','2340-5899',''),
	('Miriam Valentina','Quezada Moran','05334321-3','2','',''),
	('Manuel de Jesus','Hernandez Solano','04544321-6','1','',''),
	('Marcos Damian', 'Cortez Melgar', '04734621-0','1','',''),
	('Juan Enrique', 'Marquez Linares','04734621-0','4','','');

select * from Clientes;

-- proveedores
insert into Proveedores values
	('Drogueria Santa Lucia','2525-4567','1'),
	('Laboratorio Lopez','2555-6070','1'),
	('Laboratorio Generix','2500-5080','3'),
	('Drogeria Novas','2453-3569','5'),
	('Laboratorio Navas','2555-5050','1');

select * from Proveedores;

-- medicamentos
insert into Medicamentos values
	('Ibuprofeno','Pastilla 500g,dolores musculares','0.25','25','01-01-2025'),
	('Acetaminofen','Pastilla 100g, dolores','0.23','40','01-01-2024'),
	('Panadol','Pildora, malestares de la cabeza','1.00','50','02-02-2025'),
	('Ambroxol','Jarabe para la tos','3.00','20','03-04-2026'),
	('Neurobion','vitamina para el cerebro','0.50','47','2027');

select * from Medicamentos;

-- Ventas
insert into Ventas values
	('31-08-2023',20.00,'1','1'),
	('30-08-2023',40.00,'1','2'),
	('09-08-2023',30.00,'1','3'),
	('16-07-2023',15.00,'1','4'),
	('01-09-2023',3.00,'1','5');

select * from Ventas;

--Compras
insert into Compras values
	('25-08-2023',120.00,'1'),
	('24-08-2023',50.00,'2'),
	('17-08-2023',1045.00,'1'),
	('31-07-2023',205.00,'3'),
	('01-09-2023',300.00,'5');

select * from Compras;

-- Detalles compras
insert into Detalles_Compras values
	('50','1','1'),
	('125','2','2'),
	('300','4','3'),
	('245','3','1'),
	('325','1','1');

select * from Detalles_Compras;

-- detalles ventas
insert into Detalles_Ventas values
	('3','1','1'),
	('4','2','2'),
	('1','4','3'),
	('3','3','4'),
	('5','1','5');

select * from Detalles_Ventas;

-- facturas
insert into Facturas values
	('1050','CF001', '10.00', 100.00,'1'),
	('1051','CF002', '15.00', 200.00,'2'),
	('1052','CF003', '8.00', 150.00,'3'),
	('1053','CF004', '7.00', 90.25,'4'),
	('1054','CF005', '14.25', 220.75,'5');

select * from Facturas;


-- proveedores medicamentos
insert into Proveedores_Medicamentos values
	('1','1'),
	('2','1'),
	('3','2'),
	('4','2'),
	('5','5');

select * from Proveedores_Medicamentos;