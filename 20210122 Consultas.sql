-- Mostrar as 3 provincias con máis editoriais incluíndo valores repetido
select top 3 with ties prov.nome, count(*) from teditoriais edi, tprovincias prov
	where prov.codigo = cod_prov
group by prov.nome
order by count(*) desc

-- Mostrar o título e autor editados nunha provincia dada por unha variable
declare @provincia varchar(22)
set @provincia = 'Álava'
select titulo, autor from tlibros
	where editorial in (
		select codigo from teditoriais
			where cod_prov in (
				select codigo from tprovincias
					where nome = @provincia))

-- Mostrar o título e autor editados nunha provincia dada por unha variable
declare @provincia varchar(22)
set @provincia = 'Álava'
select titulo, autor from tlibros, tprovincias prov, teditoriais edit
	where editorial = edit.codigo and cod_prov = prov.codigo
		and prov.nome = @provincia

-- Mostrar os libros da editorial do libro á que pertenza o libro máis caro
select titulo, autor, nome from tlibros, teditoriais
	where editorial = codigo and editorial in (
		select editorial from tlibros
			where precio = (select max(precio) from tlibros))

-- Mostrar o autor do que teño máis libros
select top 1 with ties autor from tlibros
group by autor order by count(*) desc

-- Mostrar os libros do autor do que temos máis libros
select titulo, autor from tlibros
	where autor = (select top 1 with ties autor from tlibros
group by autor order by count(*) desc)

-- Mostrar os nomes das editoriais da provincia que máis editoriais teña
select nome from teditoriais
	where cod_prov in (select top 1 with ties cod_prov from teditoriais
group by cod_prov order by count(*) desc)

select  * from tlibros
select * from teditoriais
select * from tprovincias