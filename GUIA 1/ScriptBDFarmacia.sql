
-- Crecion de la base de datos
create database Farmacia;

-- Para usar la base de datos creada
use Farmacia;


-- Creacion de tablas

create table Cargos(
	ID_Cargo int primary key identity(1, 1),
	Cargo varchar(25) not null
);

create table Departamentos(
	ID_Departamento int primary key identity(1, 1),
	Departamento varchar(25) not null
);

create table Medicamentos(
	ID_Medicamento int primary key identity(1, 1),
	NombreMedicamento varchar(50) not null,
	DescripcionMedicamento varchar(50) not null,
	PrecioUnitario decimal(10,2) not null,
	Existencia int not null,
	FechaVencimiento date not null,
);

create table Municipios(
	ID_Municipio int primary key identity(1, 1),
	Municipio varchar(25),
	ID_Departamento int not null
);

create table Distritos(
	ID_Distrito int primary key identity(1, 1),
	Distrito varchar(25) not null,
	ID_Municipio int not null
);

create table Direcciones(
	ID_Direccion int primary key identity(1, 1),
	Linea1 varchar(25) not null,
	Linea2 varchar(25),
	ID_Distrito int not null,
	CP char(5)
);

create table Clientes(
	ID_Cliente int primary key identity(1, 1),
	NombresCliente varchar(50) not null,
	ApellidosCliente varchar(50) not null,
	DUI varchar(60) not null,
	ID_Direccion int not null,
	TelefonoCliente varchar(60),
	Email varchar(60)
);

create table Proveedores(
	ID_Proveedor int primary key identity(1, 1),
	NombreProveedor varchar(60) not null,
	TelefonoProveedor varchar(60) not null,
	ID_Direccion int not null

);

create table Empleados(
	ID_Empleado int primary key identity(1, 1),
	NombresEmpleado varchar(50) not null,
	ApellidosEmpleado varchar(50) not null,
	DUI varchar(60) not null,
	ISSS varchar(60) not null,
	FechaNacEmpleado date not null,
	TelefonoEmpleado varchar(60),
	Email varchar(60),
	ID_Direccion int not null,
	ID_Cargo int not null
);

create table Ventas(
	ID_Venta int primary key identity(1, 1),
	FechaVenta date not null,
	MontoVenta decimal(10,2) not null,
	ID_Cliente int not null,
	ID_Empleado int not null
);

create table Compras(
	ID_Compra int primary key identity(1, 1),
	FechaCompra date not null,
	MontoCompra decimal(10,2) not null,
	ID_Proveedor int not null

);

create table Facturas(
	ID_Factura int primary key identity(1, 1),
	NumFact varchar(60) not null,
	CreditoFiscal varchar(60),
	IVA varchar(45) not null,
	MontoTotal decimal(10,2) not null,
	ID_Venta int not null
);

create table Detalle_Ventas(
	ID_DetalleVenta int primary key identity(1, 1),
	CantidadProdVenta int not null,
	ID_Medicamento int not null,
	ID_Venta int not null
);

create table Detalle_Compras(
	ID_DetalleCompra int primary key identity(1, 1),
	CantidadProdCompra int not null,
	ID_Medicamento int not null,
	ID_Compra int not null
);

create table Proveedores_Medicamentos(
	ID_ProveedorMedicamento int primary key identity(1, 1),
	ID_Medicamento int not null,
	ID_Proveedor int not null
);



-- Creacion de las llaves foraneas
alter table Municipios add foreign key (ID_Departamento) references Departamentos(ID_Departamento);
alter table Distritos add foreign key (ID_Municipio) references Municipios(ID_Municipio);
alter table Direcciones add foreign key (ID_Distrito) references Distritos(ID_Distrito);
alter table Clientes add foreign key (ID_Direccion) references Direcciones(ID_Direccion);
alter table Proveedores add foreign key (ID_Direccion) references Direcciones(ID_Direccion);
alter table Empleados add foreign key (ID_Direccion) references Direcciones(ID_Direccion);
alter table Empleados add foreign key (ID_Cargo) references Cargos(ID_Cargo);
alter table Ventas add foreign key (ID_Cliente) references Clientes(ID_Cliente);
alter table Ventas add foreign key (ID_Empleado) references Empleados(ID_Empleado);
alter table Compras add foreign key (ID_Proveedor) references Proveedores(ID_Proveedor);
alter table Facturas add foreign key (ID_Venta) references Ventas(ID_Venta);
alter table Detalle_Ventas add foreign key (ID_Medicamento) references Medicamentos(ID_Medicamento);
alter table Detalle_Ventas add foreign key (ID_Venta) references Ventas(ID_Venta);
alter table Detalle_Compras add foreign key (ID_Medicamento) references Medicamentos(ID_Medicamento);
alter table Detalle_Compras add foreign key (ID_Compra) references Compras(ID_Compra);
alter table Proveedores_Medicamentos add foreign key (ID_Medicamento) references Medicamentos(ID_Medicamento);
alter table Proveedores_Medicamentos add foreign key (ID_Proveedor) references Proveedores(ID_Proveedor);