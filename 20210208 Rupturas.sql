-- Facer ruptura con título e prezo ordeado por editoriais e que ao final dea o prezo total de todos e o número de editoriais.
declare rupturaEditorial cursor
keyset
local
for select titulo, editorial, precio from tlibros order by editorial -- Facemos a select de traballo, importante tela ordeada
open rupturaEditorial
declare @titulo char(50), @editorial char(4), @prezo money
declare @totalPrezo money, @editorialAnterior char(4) -- @editorialAnterior sería o CW
declare @prezoTotalXeral money, @editoriais int, @nomeditorial char(52)
set @totalPrezo = 0
set @prezoTotalXeral = 0
set @editoriais = 0
fetch first from rupturaEditorial into @titulo, @editorial, @prezo
set @editorialAnterior = @editorial -- Asociamos a editorial co campo de traballo CW
-- Seguir organigrama proceso de ruptura
while @@fetch_status = 0
begin
	if @editorialAnterior != @editorial
	begin
		-- Proceso de ruptura
		set @nomeditorial = (select nome from teditoriais where codigo = @editorialAnterior)
		print 'Total '+@nomeditorial+str(@totalPrezo,6,2)
		set @editoriais = @editoriais + 1
		set @prezoTotalXeral = @prezoTotalXeral + @totalPrezo
		set @totalPrezo = 0
		set @editorialAnterior = @editorial
	end
	print @editorial+'  '+@titulo+'  '+str(@prezo,6,2)
	
	set @totalPrezo = @totalPrezo + @prezo
	
	fetch next from rupturaEditorial into @titulo, @editorial, @prezo
end
set @prezoTotalXeral = @prezoTotalXeral + @totalPrezo
set @editoriais = @editoriais + 1
print 'Total '+@editorialAnterior+replicate('.',48)+str(@totalPrezo,6,2)
print 'Prezo total de libros '+replicate('.',35)+str(@prezoTotalXeral,7,2)
print 'Número total de editoriais '+replicate('.',35)+str(@editoriais,2,0)
close rupturaEditorial
deallocate rupturaEditorial