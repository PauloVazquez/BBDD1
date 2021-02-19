-- Introducir todos os libros de tlibros en tpruebas que non estean en tpruebas
insert into tpruebas select * from tlibros
where isbn not in (select isbn from tpruebas)

select * from tpruebas

-- Seleccionar aqueles xéneros e prezo medio dos xéneros que teñan o prezo medio superior á media global de todos os xéneros.
select 


-- Insertar en teditoriales os códigos e nomes das editoriais que están en tlibros
insert into teditoriales(codigo, nombre) select distinct left(upper(editorial),2)+right(upper(editorial),2), editorial from tlibros

select * from teditoriales
select distinct editorial from tlibros

