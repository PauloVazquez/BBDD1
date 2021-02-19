-- Seleccionar os libros de prezo menor ou igual a 10€
select * from tlibros
where precio <= 10 order by precio desc

-- Crear unha nova táboa, tbaratos cos libros con prezo menor ou igual a 10€
select * into tbaratos from tlibros where precio <= 10

select * from tbaratos

-- Crear unha nova táboa, tcaros, con algunhas columnas da táboa tlibros cun prezo maior de 21€
select isbn, titulo, autor, precio into tcaros from tlibros where precio > 21

-- Union entre as dúas táboas, os títulos que están en ambas táboas
select isbn, titulo, autor, precio from tcaros
union
select isbn, titulo, autor, precio from tbaratos

-- Unión entre as dúas táboas, sen all, mostra sen duplicados, se queremos mostrar todos, poñemos all
select isbn, titulo, autor, precio from tcaros
union
select isbn, titulo, autor, precio from tlibros

select isbn, titulo, autor, precio from tcaros
union all
select isbn, titulo, autor, precio from tlibros

-- Se as columnas son do mesmo tipo, funciona, pero mistura autores con títulos.
-- Pode estar funcionando aparentemente ben pero non sendo útil por misturar información
select isbn, titulo, autor, precio from tcaros
union all
select isbn, autor, titulo, precio from tlibros

-- Se as columnas son de diferente tipo xa non funciona.
select isbn, titulo, precio, autor from tcaros
union all
select isbn, autor, titulo, precio from tlibros

-- Mostrar os libros que non están nas táboas tcaros, tbaratos, sabendo o criterio de prezo
select * from tlibros
where precio > 10 and precio <= 21

select * from tlibros
where precio between 10 and 20.99

-- Mostra os títulos e os isbn dos libros cuxo isbn non están en tbaratos nin tcaros
select isbn, titulo from tlibros where isbn not in (
select isbn from tbaratos
union
select isbn from tcaros)

-- Crea unha nova táboa, tmedios, cos títulos que non están nas outras dúas
select * into tmedios from tlibros where isbn not in (
select isbn from tbaratos
union
select isbn from tcaros)

-- Cantas páxinas teñen todos os libros
select sum(num_pag)/2 numeros_follas from tlibros

-- Seleccionar media de páxinas por libro
select avg(num_pag) from tlibros

-- Selecciona o título co maior número de páxinas
select titulo from tlibros
where num_pag = (select max(num_pag) from tlibros)

-- Se poño = funciona porque só dá un título, se dera un listado tería que poñer in
select titulo from tlibros
where num_pag in (select max(num_pag) from tlibros)