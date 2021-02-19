-- Poñer o título, autor e prezo do libro con máis páxinas
declare libroMaisPaxinas cursor
local
keyset
for select titulo, autor, precio, num_pag from tlibros
declare @titulo varchar(50), @autor varchar(30), @precio money, @num_pag numeric(18,0)
declare @tituloMais varchar(50), @autorMais varchar(30), @prezoMais money, @paxinasMais numeric(18,0)
open libroMaisPaxinas 
fetch first from libroMaisPaxinas into @titulo, @autor, @precio, @num_pag
set @paxinasMais =@num_pag
while @@fetch_status = 0
begin
	if @num_pag > @paxinasMais
	begin -- Importante poñer begin se tén varias instrucións
	set @tituloMais = @titulo
	set @autorMais = @autor
	set @prezoMais = @precio
	set @paxinasMais = @num_pag
	end
	fetch next from libroMaisPaxinas into @titulo, @autor, @precio, @num_pag
end
print 'O libro máis tocho é '+@tituloMais+' de '+@autorMais+' e custa '+str(@prezoMais,6,2)+' con '+str(@paxinasMais,4)+' páxinas'
close libroMaisPaxinas
deallocate libroMaisPaxinas
