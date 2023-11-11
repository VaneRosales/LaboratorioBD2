-- view empleados y direcciones
use Farmacia;
-- consulta
select
	EMP.ID_Empleado,
	DIR.ID_Direccion,
	EMP.NombresEmpleado,
	EMP.ApellidosEmpleado,
	DIR.Linea1,
    DIS.Distrito,
    MUN.Municipio,
    DEP.Departamento,
    DEP.Pais

from Empleados EMP
inner join Direcciones DIR on EMP.ID_Direccion=DIR.ID_Direccion
inner join Distritos DIS on DIR.ID_Distrito=DIS.ID_Distrito
inner join Municipios MUN on DIS.ID_Municipio=MUN.ID_Municipio
inner join Departamentos DEP on MUN.ID_Departamento=DEP.ID_Departamento;

-- creacion de la vista
create view VistaEmpleadoDireccion as
select
	EMP.ID_Empleado,
	DIR.ID_Direccion,
	EMP.NombresEmpleado,
	EMP.ApellidosEmpleado,
	DIR.Linea1,
    DIS.Distrito,
    MUN.Municipio,
    DEP.Departamento,
    DEP.Pais

from Empleados EMP
inner join Direcciones DIR on EMP.ID_Direccion=DIR.ID_Direccion
inner join Distritos DIS on DIR.ID_Distrito=DIS.ID_Distrito
inner join Municipios MUN on DIS.ID_Municipio=MUN.ID_Municipio
inner join Departamentos DEP on MUN.ID_Departamento=DEP.ID_Departamento;


-- para verificar
select * from INFORMATION_SCHEMA.VIEWS where TABLE_SCHEMA = 'dbo';
-- o
select * from VistaDireccionesCompleta;
