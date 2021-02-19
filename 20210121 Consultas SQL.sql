select prov.nombre, edi.nombre, count(*) from tprovincias prov, teditoriales edi, tlibros
	where prov.codigo = edi.cod_prov and edi.codigo = editorial
group by prov.nombre, edi.nombre
order by prov.nombre

-- Visualizar o título e o nome da provincia sempre e cando no título estea a segunda letra da provincia
select titulo, prov.nombre nombre_provincia from tprovincias prov, teditoriales edi, tlibros
	where prov.codigo = edi.cod_prov and edi.codigo = editorial and titulo like '%'+substring(prov.nombre,2,1)+'%'


-- Visualizar o título e o nome da provincia sempre e cando no título non estea a segunda letra da provincia
select titulo, prov.nombre nombre_provincia from tprovincias prov, teditoriales edi, tlibros
	where prov.codigo = edi.cod_prov and edi.codigo = editorial and titulo not like '%'+substring(prov.nombre,2,1)+'%'

select * from tlibros
select * from teditoriales
select * from tprovincias