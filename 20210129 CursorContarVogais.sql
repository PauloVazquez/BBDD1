--Cursor que apareza o título e o número de vogais que tén
declare tituloVogais cursor
local
keyset
for select titulo from tlibros
open tituloVogais 
declare @titulo char(50), @contadorvogais int, @posicion int
fetch first from tituloVogais into @titulo
set while @@fetch_status = 0
begin -- Equivalente á chave { de Java
	set @contadorvogais = 0
	set @posicion = 1
	while @posicion <= len(@titulo)
	begin
		if substring(@titulo,@posicion,1) in ('a','e','i','o','u','á','é','í','ó','ú','ü')
			set @contadorvogais = @contadorvogais + 1
		set @posicion = @posicion + 1
	end	
	print @titulo+str(@contadorvogais,5)
	fetch next from tituloVogais into @titulo
end -- Equivalente á chave } de Java
close tituloVogais
deallocate tituloVogais

--Cursor que lea o 1º, 2º, 4º, 7º, 11º, 16º
declare saltarTitulos cursor
local
keyset
for select titulo from tlibros
open saltarTitulos
declare @titulo char(50), @tupla int, @salto int
fetch first from saltarTitulos into @titulo
set while @@fetch_status = 0
set @tupla = 1
set @salto = 1
begin
	set @titulo = @titulo + @salto
	set @salto = @salto + 1
	print @titulo	
	fetch relative @tupla from saltarTitulos into @titulo

end
close saltarTitulos
deallocate saltarTitulos