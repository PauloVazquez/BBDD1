-- Mostrar o n�mero de libros de cada autor ordeados de maior a menor
select autor, count(titulo) numero_de_titulos from tlibros
group by autor order by numero_de_titulos desc

-- Mostrar o n�mero de tuplas nas que aparece o autor, a�nda que o t�tulo te�a valor nulo
select autor, count(*) numero_de_titulos from tlibros
group by autor order by numero_de_titulos desc

-- Mostrar o n�mero de t�tulos de cada autor que comezan por vogal
select autor, count(*) numero_de_titulos from tlibros
where titulo LIKE '[AEIOU�����]%'
group by autor order by numero_de_titulos desc

-- Neste caso soluci�nase buscando a primeira letra na lista de vogais 
select autor, count(*) numero_de_titulos from tlibros
where left(titulo,1) in ('A','E','I','O','U','�','�','�','�','�')
group by autor order by numero_de_titulos desc