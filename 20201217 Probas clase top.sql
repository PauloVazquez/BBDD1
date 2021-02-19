-- Visualizar t�tulo, autor, editorial dos libros que te�an a inicial da editorial no t�tulo ou no autor

select titulo, autor, editorial from tlibros
	where titulo like '%'+left(editorial,1)+'%' or autor like '%'+left(editorial,1)+'%'

select titulo, autor, editorial from tlibros
	where patindex('%'+left(editorial,1)+'%',titulo) !=0 or
		patindex('%'+left(editorial,1)+'%',autor) !=0

-- Seleccionar a primeira fila da t�boa tlibros
select top 1 titulo, autor, editorial from tlibros
order by editorial

-- Seleccionar as 3 primeiras filas da t�boa tlibros ordeadas por editorial
select top 3 titulo, autor, editorial from tlibros
order by editorial

-- Seleccionar os libros das 3 primeiras editoriais
select top 3 with ties titulo, autor, editorial from tlibros
order by editorial

-- Mostrar os 22 libros m�is caros
select top 22 titulo, autor, editorial, precio from tlibros
order by precio desc -- Sen with ties non mostra o 23 que t�n o mesmo prezo ca o 22

-- Mostrar os 22 libros m�is caros, mostrar os repetidos a�nda que sobrepasen os 22
select top 22 with ties titulo, autor, editorial, precio from tlibros
order by precio desc

-- Mostrar o 10% de libros con m�is p�xinas
select top 10 percent titulo, autor, editorial, precio from tlibros
order by precio desc

select * from tlibros

