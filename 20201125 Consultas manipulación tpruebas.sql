-- Crear unha nova t�boa tpruebas a partir de todos os datos de t libros
select * into tpruebas from tlibros

-- Mostrar que x�neros hai na t�boa
select distinct genero from tpruebas

-- Saber cantos libros te�o de cada x�nero
select genero, count(*)from tpruebas
group by genero

-- Saber cantos libros te�o de cada x�nero ordeados polo n�mero de exemplares ascendentemente
select genero, count(*)from tpruebas
group by genero order by count(*) desc

-- Visualizar os t�tulos de ciencia ficci�n en mai�sculas

select UPPER(titulo) from tpruebas
where genero = 'Ciencia Ficci�n'

-- Modificar a mai�sculas todos os t�tulos de ciencia ficci�n
update tpruebas
set titulo = UPPER(titulo)
where genero = 'Ciencia Ficci�n'

-- Modificar os t�tulos para po�er s� a primeira en mai�sculas
update tpruebas
set titulo = left(UPPER(titulo),1)+right(lower(titulo),len(titulo)-1)
where genero = 'Ciencia Ficci�n'

update tpruebas
set titulo = substring(UPPER(titulo),1,1)+substring(lower(titulo),2,len(titulo)-1)
where genero = 'Ciencia Ficci�n'

-- Borrar as novelas e ciencia ficci�n
delete from tpruebas
where genero = 'Novela' or genero = 'Ciencia Ficci�n'

delete from tpruebas
where genero in ('Novela','Ciencia Ficci�n')

-- Crear unha t�boa tpruebas a partir de tlibros
select * into tpruebas from tlibros

select * from tpruebas