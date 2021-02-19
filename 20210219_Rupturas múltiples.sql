-- Ruptura múltiple, rompendo por editorial, e dentro de cada editorial, por autor.
-- Sumar os prezos e mostrar os totais por autores e por editoriais.
-- Contar o número de libros por autor e o número de autores por editorial

declare totaisAutorEditorial cursor
local
keyset
for select editorial, autor, titulo, precio from tlibros order by editorial, autor, titulo

declare @titulo char(50), @autor char(30), @editorial char(4), @prezo money
declare @editorialTraballo char(4), @autorTraballo varchar(30)
declare @totalPrezoAutor money, @TotalPrezoEditorial money
declare @totalLibros int, @totalAutores int
set @totalPrezoAutor = 0
set @totalPrezoEditorial = 0
set @totalLibros = 0
set @totalAutores = 0

open totaisAutorEditorial
fetch first from totaisAutorEditorial into @editorial, @autor, @titulo, @prezo
set @editorialTraballo = @editorial
set @autorTraballo = @autor
while @@fetch_status = 0
begin
	print @editorial+' '+@autor+@titulo+str(@prezo,6,2)
	set @totalPrezoAutor = @totalPrezoAutor + @prezo
	set @totalLibros = @totalLibros + 1 
	fetch next from totaisAutorEditorial into @editorial, @autor, @titulo, @prezo
	if @editorialTraballo != @editorial or @autorTraballo != @autor
	begin
		print '   Total '+@autorTraballo+replicate('.',60-len(@autorTraballo))+str(@totalPrezoAutor,6,2)
		print '   Total libros de '+@autorTraballo+replicate('.',50-len(@autorTraballo))+str(@totalLibros,2)
		print ' '
		set @totalPrezoEditorial = @totalPrezoEditorial + @totalPrezoAutor
		set @totalAutores = @totalAutores + 1
		set @totalPrezoAutor = 0
		set @totalLibros = 0
		set @AutorTraballo = @autor
		if @editorialTraballo != @editorial
		begin
			print '   Total '+@editorialTraballo+replicate('.',76-len(@editorialTraballo))+str(@totalPrezoEditorial,6,2)
			print '   Total autores de'+' '+@editorialTraballo+replicate('.',66-len(@editorialTraballo))+str(@totalAutores,2)
			print ' '
			set @totalAutores = 0
			set @totalPrezoEditorial = 0
			set @EditorialTraballo = @editorial
		end
	end
end
print '   Total '+@autorTraballo+replicate('.',60-len(@autorTraballo))+str(@totalPrezoAutor,6,2)
print '   Total libros de '+@autorTraballo+replicate('.',50-len(@autorTraballo))+str(@totalLibros,2)
print ' '
set @totalPrezoEditorial = @totalPrezoEditorial + @totalPrezoAutor
set @totalAutores = @totalAutores + 1
print '   Total '+@editorialTraballo+replicate('.',76-len(@editorialTraballo))+str(@totalPrezoEditorial,6,2)
print '   Total autores de'+' '+@editorialTraballo+replicate('.',66-len(@editorialTraballo))+str(@totalAutores,2)
print ' '
close totaisAutorEditorial
deallocate totaisAutorEditorial
