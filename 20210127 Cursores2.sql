-- FIRST => Primero
-- FIRST <=> ABSOLUTE 1
-- LAST => Último
-- LAST <=> ABSOLUTE -1
-- NEXT => Seguinte
-- NEXT <=> RELATIVE 1
-- PRIOR => Anterior
-- PRIOR <=> RELATIVE -1
-- ABSOLUTE (+)número => Posición absoluta dende principio
-- ABSOLUTE (-)número => Posición absoluta dende final
-- RELATIVE (+)número => Salto á posición indicada dende posición actual cara diante
-- RELATIVE (-)número => Salto á posición indicada dende posición actual cara atrás

declare cursor1 cursor
local
keyset
for select titulo, precio from tlibros -- Crea un buffer de datos aos que quero acceder
declare @titulo char(50), @precio money -- Declaramos as variables dentro do cursor.
open cursor1 -- Abrimos cursor
fetch first from cursor1 into @titulo, @precio -- Se quero posicionarme nunha tupla concreta, poñemos "fetch absolute X" sendo X a tupla. Admite valores negativos.
while @@fetch_status = 0
begin
	print @titulo+space(4)+str(@precio,8,2) -- Mostramos a tupla pola que queremos empezar (first, last, 5, -5) e despois fai o bucle e vai á seguinte tupla
	fetch next from cursor1 into @titulo, @precio 
end
close cursor1
deallocate cursor1


-- Mostramos os libros e prezos das tuplas pares
declare cursor1 cursor
local
keyset
for select titulo, precio from tlibros
declare @titulo char(50), @precio money
open cursor1 -- Abrimos cursor
fetch absolute 2 from cursor1 into @titulo, @precio
while @@fetch_status = 0
begin
	print @titulo+space(4)+str(@precio,8,2)
	fetch relative 2 from cursor1 into @titulo, @precio 
c
close cursor1
deallocate cursor1

-- Sumar prezos dos libros
declare cursor1 cursor
local
keyset
for select titulo, precio from tlibros
declare @titulo char(50), @prezo money, @totalprezo money
set @totalprezo = 0
open cursor1 -- Abrimos cursor
fetch first from cursor1 into @titulo, @prezo
while @@fetch_status = 0
begin
	print @titulo+space(4)+str(@prezo,8,2)
	set @totalprezo = @totalprezo + @prezo
	fetch cursor1 into @titulo, @prezo 
end
print 'Total libros....: '+str(@totalprezo,8,2)
close cursor1
deallocate cursor1