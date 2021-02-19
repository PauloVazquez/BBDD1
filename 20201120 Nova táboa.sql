-- Seleccionar os libros de prezo menor ou igual a 10�
select * from tlibros
where precio <= 10 order by precio desc

-- Crear unha nova t�boa, tbaratos cos libros con prezo menor ou igual a 10�
select * into tbaratos from tlibros where precio <= 10

select * from tbaratos

-- Crear unha nova t�boa, tcaros, con algunhas columnas da t�boa tlibros cun prezo maior de 21�
select isbn, titulo, autor, precio into tcaros from tlibros where precio > 21

-- Union entre as d�as t�boas, os t�tulos que est�n en ambas t�boas
select isbn, titulo, autor, precio from tcaros
union
select isbn, titulo, autor, precio from tbaratos

-- Uni�n entre as d�as t�boas, sen all, mostra sen duplicados, se queremos mostrar todos, po�emos all
select isbn, titulo, autor, precio from tcaros
union
select isbn, titulo, autor, precio from tlibros

select isbn, titulo, autor, precio from tcaros
union all
select isbn, titulo, autor, precio from tlibros

-- Se as columnas son do mesmo tipo, funciona, pero mistura autores con t�tulos.
-- Pode estar funcionando aparentemente ben pero non sendo �til por misturar informaci�n
select isbn, titulo, autor, precio from tcaros
union all
select isbn, autor, titulo, precio from tlibros

-- Se as columnas son de diferente tipo xa non funciona.
select isbn, titulo, precio, autor from tcaros
union all
select isbn, autor, titulo, precio from tlibros

-- Mostrar os libros que non est�n nas t�boas tcaros, tbaratos, sabendo o criterio de prezo
select * from tlibros
where precio > 10 and precio <= 21

select * from tlibros
where precio between 10 and 20.99

-- Mostra os t�tulos e os isbn dos libros cuxo isbn non est�n en tbaratos nin tcaros
select isbn, titulo from tlibros where isbn not in (
select isbn from tbaratos
union
select isbn from tcaros)

-- Crea unha nova t�boa, tmedios, cos t�tulos que non est�n nas outras d�as
select * into tmedios from tlibros where isbn not in (
select isbn from tbaratos
union
select isbn from tcaros)

-- Cantas p�xinas te�en todos os libros
select sum(num_pag)/2 numeros_follas from tlibros

-- Seleccionar media de p�xinas por libro
select avg(num_pag) from tlibros

-- Selecciona o t�tulo co maior n�mero de p�xinas
select titulo from tlibros
where num_pag = (select max(num_pag) from tlibros)

-- Se po�o = funciona porque s� d� un t�tulo, se dera un listado ter�a que po�er in
select titulo from tlibros
where num_pag in (select max(num_pag) from tlibros)