-- Base de Datos Farmacia
-- DCL
use Farmacia;

-- ROLES
go
create role Administrador;
create role Gerente;
create role RRHH;
create role Cajero;
create role Compras;

-- LOGINS
go
create login login_admin_josem
with password = 'root';
go
create login login_ger_carmen
with password = 'carmen1234';
go
create login login_rrhh_andrea
with password = 'andrea1234';
go
create login login_cajero_miguel
with password = 'miguel1234';
go
create login login_compras_lucia
with password = 'lucia1234';

-- USUARIOS
go
create user admin_josem
for login login_admin_josem;
go
create user ger_carmen
for login login_ger_carmen;

create user rrhh_andrea
for login login_rrhh_andrea;
go
create user cajero_miguel
for login login_cajero_miguel;
go
create user compras_lucia
for login login_compras_lucia;

-- AGREGAR USUARIOS A ROLES
go
alter role Administrador add member admin_josem;
alter role Gerente add member ger_carmen;
alter role RRHH add member rrhh_andrea;
alter role Cajero add member cajero_miguel;
alter role Compras add member compras_lucia;

-- OTORGAR PERMISOS (En base a las opciones)
go
-- Administrador
grant control on database::Farmacia to Administrador;
-- Gerente
grant select, insert, update, delete on dbo.Direcciones to Gerente;
grant select, insert, update, delete on dbo.Empleados to Gerente;
grant select, insert, update, delete on dbo.Cargos to Gerente;
grant select, insert, update, delete on dbo.Compras to Gerente;
grant select, insert, update, delete on dbo.Ventas to Gerente;
grant select, insert, update, delete on dbo.Facturas to Gerente;
grant select, insert, update, delete on dbo.Medicamentos to Gerente;
grant select, insert, update, delete on dbo.Detalle_Compras to Gerente;
grant select, insert, update, delete on dbo.Detalle_Ventas to Gerente;
grant select on dbo.Departamentos to Gerente;
grant select on dbo.Municipios to Gerente;
grant select on dbo.Distritos to Gerente;

-- RRHH
grant select, insert, update, delete on dbo.Direcciones to RRHH;
grant select, insert, update, delete on dbo.Cargos to RRHH;
grant select, insert, update, delete on dbo.Empleados to RRHH;
grant select on dbo.Departamentos to RRHH;
grant select on dbo.Municipios to RRHH;
grant select on dbo.Distritos to RRHH;

-- Cajero
grant select, insert, update, delete on dbo.Direcciones to Cajero;
grant select, insert, update, delete on dbo.Clientes to Cajero;
grant select, insert, update, delete on dbo.Detalle_Ventas to Cajero;
grant select, insert, update, delete on dbo.Ventas to Cajero;
grant select, insert, delete on dbo.Facturas to Cajero;
grant select on dbo.Departamentos to Cajero;
grant select on dbo.Municipios to Cajero;
grant select on dbo.Distritos to Cajero;

-- Compras
grant select, insert, update, delete on dbo.Direcciones to Compras;
grant select, insert, update, delete on dbo.Proveedores to Compras;
grant select, insert, update, delete on dbo.Compras to Compras;
grant select, insert, update, delete on dbo.Detalle_Compras to Compras;
grant select on dbo.Departamentos to Compras;
grant select on dbo.Municipios to Compras;
grant select on dbo.Distritos to Compras;


