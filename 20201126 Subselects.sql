-- Introducir todos os libros de tlibros en tpruebas que non estean en tpruebas
insert into tpruebas select * from tlibros
where isbn not in (select isbn from tpruebas)

select * from tpruebas

-- Seleccionar aqueles x�neros e prezo medio dos x�neros que te�an o prezo medio superior � media global de todos os x�neros.
select 


-- Insertar en teditoriales os c�digos e nomes das editoriais que est�n en tlibros
insert into teditoriales(codigo, nombre) select distinct left(upper(editorial),2)+right(upper(editorial),2), editorial from tlibros

select * from teditoriales
select distinct editorial from tlibros

