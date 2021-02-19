-- Seleccionar os t�tulos e os autores no que o libro comece pola mesma letra que o autor
select titulo,autor from tlibros
where left(titulo,1) = left(autor,1)

-- Selecciona o t�tulo do dereito e do rev�s
select titulo , reverse(titulo)titulo_reves from tlibros

-- Selecciona os t�tulos e cambia todas as 'a' pola letra 'x'
select titulo, replace(titulo,'a','�') titulo_x from tlibros
-- Selecciona os t�tulos e cambia todos os 'Teo' por 'P�o'
select titulo, replace(titulo,'Teo','P�o') titulo_x from tlibros

-- Selecciona os t�tulos que conte�en Teo e mostra o cambio de Teo por P�o
select titulo, replace(titulo,'Teo','P�o') from tlibros
where titulo like '%Teo%'

-- Mostra o gui�n repetido 5 veces
select replicate('-',5)

-- Visualizar o t�tulo e tantos gui�ns como letras te�a o t�tulo
select titulo, replicate('-',len(titulo)) titulo_guion from tlibros

-- Mostrar os tres �ltimos caracteres dos t�tulos
select titulo, right(titulo,3) ultimos_caracteres from tlibros

select titulo, len(titulo) from tlibros
-- Mostrar os 3 �ltimos caracteres dos t�tulos sen usar RIGHT
select titulo, substring(titulo,len(titulo)-2,3) ultimos_caracteres from tlibros