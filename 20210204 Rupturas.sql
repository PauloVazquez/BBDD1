-- Para facer rupturas de control tén que estar ordeado dalgunha forma (ORDER BY)
-- Se quero facer unha ruptura por sexos, teñen que estar ordeados por sexos, se fora por cor de pelo, tén que estar ordeado por cor.

-- Facer ruptura con título e prezo ordeado por editoriais
declare rupturaEditorial cursor
keyset
local
for select titulo, editorial, precio from tlibros order by editorial -- Facemos a select de traballo, importante tela ordeada
open rupturaEditorial
declare @titulo char(50), @editorial char(4), @prezo money
declare @totalPrezo money, @editorialAnterior char(4) -- @editorialAnterior sería o CW
set @totalPrezo = 0
fetch first from rupturaEditorial into @titulo, @editorial, @prezo
set @editorialAnterior = @editorial -- Asociamos a editorial co campo de traballo CW
-- Seguir organigrama proceso de ruptura
while @@fetch_status = 0
begin
	if @editorialAnterior != @editorial
	begin
		-- Proceso de ruptura
		print 'Total '+@editorialAnterior+replicate('.',48)+str(@totalPrezo,6,2)
		set @totalPrezo = 0
		set @editorialAnterior = @editorial
	end
	print @editorial+'  '+@titulo+'  '+str(@prezo,6,2)
	set @totalPrezo = @totalPrezo + @prezo
	fetch next from rupturaEditorial into @titulo, @editorial, @prezo
end
print 'Total '+@editorialAnterior+replicate('.',48)+str(@totalPrezo,6,2)
close rupturaEditorial
deallocate rupturaEditorial