--Dár un valor de posición inicial e outro de tuplas a ler, reiniciar na primeira se chegamos ao final da táboa
declare lerTuplasBucle cursor
local
keyset
for select titulo from tlibros
open lerTuplasBucle
declare @titulo char(50), @posicioninicial int, @numerotuplas int, @indice int
set @posicioninicial = 45
set @numerotuplas = 200
fetch absolute @posicioninicial from lerTuplasBucle into @titulo
while @numerotuplas > 0 -- Mentres queden tuplas por ler
begin
	print @titulo + str(@numerotuplas,3)
	fetch next from lerTuplasBucle into @titulo 
	set @numerotuplas = @numerotuplas - 1
	if @@fetch_status != 0 -- Se chega ao final, reiniciamos o contador na primeira tupla
		fetch first from lerTuplasBucle into @titulo
end
close lerTuplasBucle
deallocate lerTuplasBucle

-- Dár un número e que lea a lista de tuplas completa ese número de ciclos (Un ciclo é un percorrido, descendente ou ascendente)
declare lerCiclosTuplas cursor
local
keyset
for select titulo from tlibros
open lerCiclosTuplas
declare @titulo char(50), @ciclos int, @sentido int
set @ciclos = 3
set @sentido = 0
while @ciclos > 0
begin
	if @sentido = 0
	begin
		fetch first from lerCiclosTuplas into @titulo
		while @@fetch_status = 0
		begin
			print @titulo + str(@ciclos,2)
			fetch next from lerCiclosTuplas into @titulo
		end
		set @sentido = 1
	end
	else
	begin
		fetch last from lerCiclosTuplas into @titulo
		while @@fetch_status = 0
		begin
			print @titulo + str(@ciclos,2)
			fetch prior from lerCiclosTuplas into @titulo	
		end
		set @sentido = 0
	end
	set @ciclos = @ciclos - 1
end
close lerCiclosTuplas
deallocate lerCiclosTuplas

-- Dár un número e que lea a lista de tuplas completa ese número de ciclos (Un percorrido descendente e outro ascendente son un ciclo)
declare lerCiclosTuplas cursor
local
keyset
for select titulo from tlibros
open lerCiclosTuplas
declare @titulo char(50), @ciclos int
set @ciclos = 2
while @ciclos > 0
begin
	fetch first from lerCiclosTuplas into @titulo
	while @@fetch_status = 0
	begin
		print @titulo + str(@ciclos,2)
		fetch next from lerCiclosTuplas into @titulo
	end
	fetch last from lerCiclosTuplas into @titulo
	while @@fetch_status = 0
	begin
		print @titulo + str(@ciclos,2)
		fetch prior from lerCiclosTuplas into @titulo
	end
	set @ciclos = @ciclos - 1
end
close lerCiclosTuplas
deallocate lerCiclosTuplas