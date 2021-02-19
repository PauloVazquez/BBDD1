-- Insertamos valores para dúas provincias novas
insert into tprovincias values(23, 'Jaén')
insert into tprovincias values(30,'Murcia')
insert into tprovincias values(34,'Palencia')

-- Mostrar as provincias onde non hai editoriais e excluir a provincia descoñecida
select nome from tprovincias
	where codigo not in (select distinct cod_prov from teditoriais)
		and codigo != 0

-- Saber o nome da provincia e o número de libros editados nesa provincia
select prov.nome, count(*) numero_libros from tprovincias prov, teditoriais edi, tlibros
	where prov.codigo = edi.cod_prov and edi.codigo = editorial
group by prov.nome
order by count(*) desc

-- Mostrar o nome da provincia, o nome da editorial e cantos libros hai por editorial
select prov.nome, edi.nome, count(*) numero_libros from tprovincias prov, teditoriais edi, tlibros
	where prov.codigo = edi.cod_prov and edi.codigo = editorial
group by edi.nome, prov.nome


select * from tlibros
select * from teditoriais
select * from tprovincias

update tprovincias set 
	nome = 'Coruña, A'
where nome = 'A Coruña'
