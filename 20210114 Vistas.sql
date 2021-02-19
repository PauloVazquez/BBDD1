select p.nombre, count(*) from tlibros, teditoriales e, tprovincias p
where editorial = e.codigo and cod_prov = p.codigo
group by p.nombre
order by count(*) desc

select * from tlibros
select * from teditoriales
select * from tprovincias

-- Creamos unha vista
create view vista1
as
select titulo, autor, nombre from tlibros, teditoriales
where editorial = codigo

select * from vista1

-- Creamos unha vista cambiando os nomes das columnas
create view vista2(libro,escritor,editorial)
as
select titulo, autor, nombre from tlibros, teditoriales
where editorial = codigo

select * from vista2

-- Seleccionamos os obxectos referentes á vista1
select * from sysobjects where name = 'vista1'

-- Eliminamos a vista1 se existe no sistema
if exists (select name from sysobjects
	where name = 'vista2' and type = 'V')
drop view vista2
-- Create view tén que ser a primeira instrución, con GO permite borrar e crear despois na mesma instrución
go
create view vista2(libro,escritor,editorial)
as
select titulo, autor, nombre from tlibros, teditoriales
where editorial = codigo


-- Creamos unha vista 3 como join. As columnas teñen que ter nomes diferentes
if exists (select name from sysobjects
	where name = 'vista3' and type = 'V')
drop view vista3
-- Create view tén que ser a primeira instrución, con GO permite borrar e crear despois na mesma instrución
go 
create view vista3
as
select titulo, autor, p.nombre provincia, e.nombre editorial
from tlibros, teditoriales e, tprovincias p
where editorial = e.codigo and cod_prov = p.codigo

-- Coa estrutura anterior, podemos crear a mesma vista poñendo o nome das columnas ao lado do nome das columnas
if exists (select name from sysobjects
	where name = 'vista3' and type = 'V')
drop view vista3
-- Create view tén que ser a primeira instrución, con GO permite borrar e crear despois na mesma instrución
go 
create view vista3 (titulo, autor, provincia, editorial)
as
select titulo, autor, p.nombre, e.nombre
from tlibros, teditoriales e, tprovincias p
where editorial = e.codigo and cod_prov = p.codigo

select * from vista3