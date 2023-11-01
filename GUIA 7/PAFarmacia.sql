--use Farmacia;

-- Procedimiento almacenado para actualizar el inventario de medicamentos en función de los detalles de compra.
create procedure ActualizarInvetarioMedicamentos
	@ID_Medicamento int,
	@CantidadProCompra int
as
begin	
	update Medicamentos
	set Existencia = Existencia + @CantidadProCompra
	where ID_Medicamento =@ID_Medicamento

end;
