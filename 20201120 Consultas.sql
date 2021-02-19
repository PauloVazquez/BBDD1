select * from tlibros

-- Mostrar cantos libros te�o que sexan Novelas de Bolsillo
select count(*) novelas_de_bolsillo  from tlibros
where encuadernacion = 'De Bolsillo' AND genero = 'Novela'

-- Mostrar cantos libros te�o que sexan Novelas de Bolsillo po�endo as columnas de encuadernaci�n e x�nero
select encuadernacion, genero, count(*) novelas_de_bolsillo  from tlibros
where encuadernacion = 'De Bolsillo' AND genero = 'Novela'
group by encuadernacion, genero

-- Mostrar cantos libros te�o que sexan Novelas de Bolsillo agrupados por editorial e ordeados de m�is a menos
select editorial, count(*) novelas_de_bolsillo  from tlibros
where encuadernacion = 'De Bolsillo' AND genero = 'Novela'
group by editorial order by novelas_de_bolsillo desc

