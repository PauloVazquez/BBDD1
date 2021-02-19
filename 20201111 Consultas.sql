-- Seleccionar os títulos e os autores no que o libro comece pola mesma letra que o autor
select titulo,autor from tlibros
where left(titulo,1) = left(autor,1)

-- Selecciona o título do dereito e do revés
select titulo , reverse(titulo)titulo_reves from tlibros

-- Selecciona os títulos e cambia todas as 'a' pola letra 'x'
select titulo, replace(titulo,'a','€') titulo_x from tlibros
-- Selecciona os títulos e cambia todos os 'Teo' por 'Pío'
select titulo, replace(titulo,'Teo','Pío') titulo_x from tlibros

-- Selecciona os títulos que conteñen Teo e mostra o cambio de Teo por Pío
select titulo, replace(titulo,'Teo','Pío') from tlibros
where titulo like '%Teo%'

-- Mostra o guión repetido 5 veces
select replicate('-',5)

-- Visualizar o título e tantos guións como letras teña o título
select titulo, replicate('-',len(titulo)) titulo_guion from tlibros

-- Mostrar os tres últimos caracteres dos títulos
select titulo, right(titulo,3) ultimos_caracteres from tlibros

select titulo, len(titulo) from tlibros
-- Mostrar os 3 últimos caracteres dos títulos sen usar RIGHT
select titulo, substring(titulo,len(titulo)-2,3) ultimos_caracteres from tlibros