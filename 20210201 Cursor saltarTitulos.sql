--Cursor que lea o 1º, 2º, 4º, 7º, 11º, 16º e así sucesivamente ata os 142 (Sumando 1, 2, 3, 4,5, etc)
declare saltarTitulos cursor
local
keyset
for select titulo from tlibros
open saltarTitulos
declare @titulo char(50), @posicion int
fetch first from saltarTitulos into @titulo
set @posicion = 1
while @@fetch_status = 0
begin
	print @titulo
	fetch relative @posicion from saltarTitulos into @titulo
	set @posicion = @posicion + 1
end
close saltarTitulos
deallocate saltarTitulos
