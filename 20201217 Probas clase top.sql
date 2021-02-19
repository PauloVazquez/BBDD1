-- Visualizar título, autor, editorial dos libros que teñan a inicial da editorial no título ou no autor

select titulo, autor, editorial from tlibros
	where titulo like '%'+left(editorial,1)+'%' or autor like '%'+left(editorial,1)+'%'

select titulo, autor, editorial from tlibros
	where patindex('%'+left(editorial,1)+'%',titulo) !=0 or
		patindex('%'+left(editorial,1)+'%',autor) !=0

-- Seleccionar a primeira fila da táboa tlibros
select top 1 titulo, autor, editorial from tlibros
order by editorial

-- Seleccionar as 3 primeiras filas da táboa tlibros ordeadas por editorial
select top 3 titulo, autor, editorial from tlibros
order by editorial

-- Seleccionar os libros das 3 primeiras editoriais
select top 3 with ties titulo, autor, editorial from tlibros
order by editorial

-- Mostrar os 22 libros máis caros
select top 22 titulo, autor, editorial, precio from tlibros
order by precio desc -- Sen with ties non mostra o 23 que tén o mesmo prezo ca o 22

-- Mostrar os 22 libros máis caros, mostrar os repetidos aínda que sobrepasen os 22
select top 22 with ties titulo, autor, editorial, precio from tlibros
order by precio desc

-- Mostrar o 10% de libros con máis páxinas
select top 10 percent titulo, autor, editorial, precio from tlibros
order by precio desc

select * from tlibros

