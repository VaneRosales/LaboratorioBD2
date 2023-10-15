-- GUIA 4
-- CURSOR ESTATICO FARMACIA
use Farmacia;
-- declaracon de las variables
declare @NombresEmpleado varchar(60)
declare @ApellidosEmpleado varchar(60)
declare @Cargo varchar(60)


declare CursorEstatico cursor static for
select EMP.NombresEmpleado, EMP.ApellidoEmpleado, CAR.Cargo
from Empleados EMP, Cargos CAR
where EMP.ID_Cargo=CAR.ID_Cargo
order by EMP.ID_Empleado

open CursorEstatico

-- recorrido hacia adelante
fetch first from CursorEstatico into @NombresEmpleado, @ApellidosEmpleados, @Cargo
print 'Empleado - Cargo'

while @@FETCH_STATUS = 0
begin
    print @NombresEmpleado + ' ' + @ApellidosEmpleado + ' - ' + @Cargo

	-- Obtener el siguiente registro hacia adelante
	fetch next from CursorEstatico into @NombresEncargado, @ApellidosEncargado, @Cargo
end

-- recorrido hacia atras
-- ultimo registro
fetch last from CursorEstatico into @NombresEmpleado, @ApellidosEmpleado,@Cargo
print 'Empleado - Cargo'

while @@FETCH_STATUS = 0
begin
    print @NombresEmpleado + ' ' + @ApellidosEmpleado + ' - ' + @Cargo

    -- Obtener el registro anterior hacia atrás
    fetch prior from CursorEstatico into @NombresEmpleado, @ApellidosEmpleado, @Cargo 
end

close CursorEstatico
deallocate CursorEstatico