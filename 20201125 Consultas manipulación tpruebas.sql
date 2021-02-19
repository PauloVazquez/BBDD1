-- Crear unha nova táboa tpruebas a partir de todos os datos de t libros
select * into tpruebas from tlibros

-- Mostrar que xéneros hai na táboa
select distinct genero from tpruebas

-- Saber cantos libros teño de cada xénero
select genero, count(*)from tpruebas
group by genero

-- Saber cantos libros teño de cada xénero ordeados polo número de exemplares ascendentemente
select genero, count(*)from tpruebas
group by genero order by count(*) desc

-- Visualizar os títulos de ciencia ficción en maiúsculas

select UPPER(titulo) from tpruebas
where genero = 'Ciencia Ficción'

-- Modificar a maiúsculas todos os títulos de ciencia ficción
update tpruebas
set titulo = UPPER(titulo)
where genero = 'Ciencia Ficción'

-- Modificar os títulos para poñer só a primeira en maiúsculas
update tpruebas
set titulo = left(UPPER(titulo),1)+right(lower(titulo),len(titulo)-1)
where genero = 'Ciencia Ficción'

update tpruebas
set titulo = substring(UPPER(titulo),1,1)+substring(lower(titulo),2,len(titulo)-1)
where genero = 'Ciencia Ficción'

-- Borrar as novelas e ciencia ficción
delete from tpruebas
where genero = 'Novela' or genero = 'Ciencia Ficción'

delete from tpruebas
where genero in ('Novela','Ciencia Ficción')

-- Crear unha táboa tpruebas a partir de tlibros
select * into tpruebas from tlibros

select * from tpruebas