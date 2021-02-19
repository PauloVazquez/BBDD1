-- Declaración de cursor
declare cursor1 cursor
local -- Traballamos con el en monoposto
keyset -- Creamos unha táboa de chaves e accede a través delas
for select titulo, precio from tlibros -- Crea un buffer de datos aos que quero acceder

open cursor1 -- Abrimos cursor
declare @titulo char(50), @precio money -- Declaramos as variables dentro do cursor.
fetch first from cursor1 into @titulo, @precio -- Mostramos a tupla pola que queremos empezar (first, last, 5, -5)
while @@fetch_status = 0 -- Mentres haxa datos
begin		
	if left(@titulo,1) = 't' -- Podemos poñer condicionais no cursor
	print @titulo+space(4)+str(@precio,8,2) -- Mostramos a seguinte tupla
	fetch next from cursor1 into @titulo, @precio -- Lemos a seguinte tupla cara diante (next, prior (cara atrás)).
						      -- Saltamos cada X títulos con Relative ou -X hacia arriba
end
close cursor1
deallocate cursor1 -- Liberamos a memoria do cursor


select * from tlibros
select * from teditoriais
select * from tprovincias