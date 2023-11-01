-- Trigger para actualizar invenario
-- use Farmacia;

-- Trigger 
create trigger DespuesDeCompras
on Detalle_Compras
after insert
as
begin
	declare @ID_Medicamento int
	declare @CantidadProdCompra datetime
	
	
    select 
	@ID_Medicamento = ID_Medicamento,
	@CantidadProdCompra = CantidadProdCompra
	
    from inserted

	print 'Inventario de medicamento actualizado después de la compra.'

end;


-- Evento que activa el trigger
exec ActualizarInvetarioMedicamentos 
	@ID_Medicamento='4',
	@CantidadProdCompra='10'


