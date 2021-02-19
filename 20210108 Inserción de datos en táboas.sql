-- Insertamos os datos das provincias
insert into tprovincias values(1, 'Álava')
insert into tprovincias values(2, 'Albacete')
insert into tprovincias values(3, 'Alicante')
insert into tprovincias values(8, 'Barcelona')
insert into tprovincias values(15, 'A Coruña')
insert into tprovincias values(27, 'Lugo')
insert into tprovincias values(28, 'Madrid')
insert into tprovincias values(32, 'Ourense')
insert into tprovincias values(36, 'Pontevedra')
insert into tprovincias values(50, 'Zaragoza')
insert into tprovincias values(0, 'Descoñecida')

-- Modificamos o valor do varchar da columna nome para que sexa igual que o de tlibros.editorial
alter table teditoriais alter column nome varchar(35)

-- Mostramos as diferentes editoriais e as 4 letras da esquerda para detectar que 4 letras se repiten (darán problemas de PK)
select distinct editorial, left(editorial,4) from tlibros order by editorial

-- Insertamos as editoriais da táboa tlibros agás as que teñan de código Edic porque son varias.
-- Poñemos código 0 de provincia por ser descoñecidas por agora
insert into teditoriais
	select distinct left(upper(editorial),4), editorial, 0 from tlibros
		where left(editorial, 4) not in ('Edic')

-- Insertamos as editoriais que comezan por Ediciones, seleccionando as 2 primeiras letras das súas dúas primeiras palabras
insert into teditoriais
	select distinct left(upper(editorial),2)+upper(substring(editorial, 11,2)), editorial, 0 from tlibros
		where left(editorial, 9) in ('Ediciones')

-- Insertamos as editoriais que comezan por Ediciones, seleccionando as 2 primeiras letras das súas dúas primeiras palabras
insert into teditoriais
	select distinct left(upper(editorial),2)+upper(substring(editorial, 10,2)), editorial, 0 from tlibros
		where left(editorial, 8) in ('Edicións')

-- Cambiar todas as editoriais da táboa tlibros polo código correspondente
update tlibros set
	editorial = (select codigo from teditoriais where editorial = nome)

-- Modificamos o valor do varchar da columna tlibros.editorial para que sexa igual que o de editoriais.codigo
alter table tlibros alter column editorial char(4) not null

-- Creamos a unión de táboas con clave foránea e primaria
alter table tlibros add foreign key (editorial)
	references teditoriais (codigo)


select * from tlibros, teditoriais
	where tlibros.editorial = teditoriais.codigo

select * from teditoriais
select * from tlibros
