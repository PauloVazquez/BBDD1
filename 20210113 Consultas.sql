select * from tprovincias
select * from teditoriais


-- Mostrar cantas editoriais tén cada provincia, mostrando o nome das mesmas
select tprovincias.nome, count(*) from teditoriais, tprovincias
where cod_prov = tprovincias.codigo
group by tprovincias.nome
order by count(*) desc

-- Mostrar cantas editoriais tén cada provincia, mostrando o nome das mesmas
select prov.nome, count(*) from teditoriais, tprovincias prov -- Aplicamos alias (p) a tprovincias para acurtar na select
where cod_prov = prov.codigo
group by prov.nome
order by count(*) desc

-- Mostrar o título, autor, nome da editorial e o nome da provincia
select titulo, autor, ed.nome, prov.nome from tlibros, teditoriais ed, tprovincias prov
where editorial = ed.codigo and cod_prov = prov.codigo

-- Mostrar os libros que hai por provincia da editorial
select prov.nome, count(*) from tlibros, teditoriais ed, tprovincias prov
where editorial = ed.codigo and cod_prov = prov.codigo
group by prov.nome

select * from tprovincias
select * from teditoriais
select * from tlibros