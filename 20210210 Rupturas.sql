--Ruptura que visualice o nome das editoriais de cada provincia e ao final de cada provincia o número de editoriais que se visualizaron
declare editoriaisPorProvincia cursor
keyset
local
for select edit.nome, prov.nome from teditoriais edit, tprovincias prov where cod_prov = prov.codigo order by prov.nome
open editoriaisPorProvincia
declare @nomeEditorial char(35), @nomeProvincia varchar(22)
declare @nomeProvinciaAnterior varchar(22), @contadorEditoriais int, @contadorEditoriaisTotal int
set @contadorEditoriais = 0
set @contadorEditoriaisTotal = 0
fetch first from editoriaisPorProvincia into @nomeEditorial, @nomeProvincia
set @nomeProvinciaAnterior = @nomeProvincia
while @@fetch_status = 0 -- Salta este bucle se a táboa estivera baleira
begin
	print @nomeEditorial+replicate(' ',10)+@nomeProvincia -- Empezar por defecto no grupo de traballo
	set @contadorEditoriais = @contadorEditoriais + 1
	fetch next from editoriaisPorProvincia into @nomeEditorial, @nomeProvincia -- Acabar sempre lendo unha tupla
	
	if @nomeProvinciaAnterior != @nomeProvincia-- Proceso de ruptura
	begin	
		print 'Total '+@nomeProvinciaAnterior+replicate('.',37-len(@nomeProvinciaAnterior))+str(@contadorEditoriais,3)
		print ' '
		set @contadorEditoriaisTotal = @contadorEditoriaisTotal + @contadorEditoriais -- Sumamos as editoriais deste bloque ao contador total
		set @contadorEditoriais = 0
		set @nomeProvinciaAnterior = @nomeProvincia -- Sempre asociar a variable nova no campo de traballo
	end
end
-- Último proceso antes de acabar
set @contadorEditoriaisTotal = @contadorEditoriaisTotal + @contadorEditoriais -- Sumamos as editoriais deste bloque ao contador total
print 'Total '+@nomeProvinciaAnterior+replicate('.',37-len(@nomeProvinciaAnterior))+str(@contadorEditoriais,3)
print ' '
print 'Total editoriais '+replicate('.',27)+str(@contadorEditoriaisTotal,3)
close editoriaisPorProvincia
deallocate editoriaisPorProvincia