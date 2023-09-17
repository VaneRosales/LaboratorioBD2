-- -------CONSULTAS
use Farmacia;

-- CONSULTAS NORMALES

-- Consulta 1: 
 select NombreMedicamento
 from Medicamentos
 where existencia <30;
 -------------------------------------------------------

 -- Consulta 2:
 select sum(MontoVenta) as 'TotalVenta'
 from Ventas
 where FechaVenta between '2023-08-01' and '2023-08-31';
 --------------------------------------------------------

-- Consulta 3:
select ID_Cliente, count(*) as 'VentasClientes'
from  Ventas
where MontoVenta>'10.00'
group by ID_Cliente;
---------------------------------------------------------

 -- Consulta 4:
 select ID_Medicamento, NombreMedicamento
 from Medicamentos
 where FechaVencimiento between '2023-01-01' and '2025-12-31';
 --------------------------------------------------------

  -- Consulta 5:
  select NombreMedicamento, PrecioUnitario
  from Medicamentos
  where PrecioUnitario<=1.00;
---------------------------------------------------------



 -- CONSULTAS TIPO MULTITABLA,SUBCONSULTA Y JOIN

 -- Consulta 1: (multitabla)
 select a.ID_Venta, a.MontoVenta, b.NombresCliente
 from Ventas a, Clientes b
 where a.ID_Cliente=b.ID_Cliente
 and a.MontoVenta>=25.00;

 --------------------------------------------------------

 -- Consulta 2: (inner join)
 select concat(a.NombresEmpleado,' ', a.ApellidosEmpleado) as empleados, b.Linea1
 from Empleados a
 inner join Direcciones b on a.ID_Direccion=b.ID_Direccion
 where a.ID_Direccion between 3 and  5;
 --------------------------------------------------------

 -- Consulta 3: (subconsulta)
 select concat(a.NombresEmpleado,' ', a.ApellidosEmpleado) as empleado, 
 (select b.Cargo from Cargos b where a.ID_Cargo=b.ID_Cargo ) as cargo
 from Empleados a
 where a.ID_Cargo='1'
 order by empleado;
 --------------------------------------------------------

 -- Consulta 4:(join)
 select count(a.ID_Cliente)ClientesSonsonate from Clientes a
 join Direcciones b on b.ID_Direccion=a.ID_Direccion
 join Distritos c on c.ID_Distrito=b.ID_Distrito
 join Municipios d on d.ID_Municipio=c.ID_Municipio
 join Departamentos e on e.ID_Departamento=d.ID_Departamento
where e.Departamento='Sonsonate';

 --------------------------------------------------------

 -- Consulta 5:(multitabla)
select concat(NombresCliente,' ',ApellidosCliente) as Cliente,
c.NumFact, b.ID_Venta, c.MontoTotal 
from Clientes a, Ventas b, Facturas c
where a.ID_Cliente=b.ID_Cliente and b.ID_Venta=c.ID_Venta
and c.MontoTotal>'100.00';
 --------------------------------------------------------



