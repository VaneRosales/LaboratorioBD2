-- GUIA 6: PROCEDIMIENTOS
use Farmacia;
-- PROCEDIMEINTO DE INSERSION
create procedure AgregarEmpleado
-- variables
	@NombresEmpleado varchar(50),
	@ApellidosEmpleado varchar(50),
	@DUI varchar(60),
	@ISSS varchar(60),
	@FechaNacEmpleado date,
	@TelefonoEmpleado varchar(60),
	@Email varchar(60),
	@ID_Direccion int,
	@ID_Cargo int
	
	
as
begin
	insert into Empleados values
	(@NombresEmpleado,
	@ApellidosEmpleado,
	@DUI,
	@ISSS,
	@FechaNacEmpleado,
	@TelefonoEmpleado,
	@Email,
	@ID_Direccion,
	@ID_Cargo);

	select * from Empleados
end

execute AgregarEmpleado
	@NombresEmpleado = 'Alejandra Yasmin',
	@ApellidosEmpleado = 'Herrera Cumit',
	@DUI = '03597948-2',
	@ISSS = '357567251',
	@FechaNacEmpleado = '02-04-1995',
	@TelefonoEmpleado = '7484-5072',
	@Email = 'alecumit@gmail.com',
	@ID_Direccion = '1',
	@ID_Cargo = '2'
-- --------------------------------------------------------
-- PROCEDIMEINTO DE CONSULTA
create procedure MostrarDatosClientes
as
begin
	select 
		concat(CLI.NombresCliente, ' ',CLI.ApellidosCliente) as Cliente,
		CLI.DUI,
		DIR.Linea1
	from Clientes CLI, Direcciones DIR
	where DIR.ID_Direccion= CLI.ID_Direccion
	order by CLI.ID_Cliente
end

exec MostrarDatosClientes
