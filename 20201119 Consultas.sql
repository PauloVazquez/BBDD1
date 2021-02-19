-- Mostrar o número de libros de cada autor ordeados de maior a menor
select autor, count(titulo) numero_de_titulos from tlibros
group by autor order by numero_de_titulos desc

-- Mostrar o número de tuplas nas que aparece o autor, aínda que o título teña valor nulo
select autor, count(*) numero_de_titulos from tlibros
group by autor order by numero_de_titulos desc

-- Mostrar o número de títulos de cada autor que comezan por vogal
select autor, count(*) numero_de_titulos from tlibros
where titulo LIKE '[AEIOUÁÉÍÓÚ]%'
group by autor order by numero_de_titulos desc

-- Neste caso soluciónase buscando a primeira letra na lista de vogais 
select autor, count(*) numero_de_titulos from tlibros
where left(titulo,1) in ('A','E','I','O','U','Á','É','Í','Ó','Ú')
group by autor order by numero_de_titulos desc