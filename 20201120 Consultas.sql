select * from tlibros

-- Mostrar cantos libros teño que sexan Novelas de Bolsillo
select count(*) novelas_de_bolsillo  from tlibros
where encuadernacion = 'De Bolsillo' AND genero = 'Novela'

-- Mostrar cantos libros teño que sexan Novelas de Bolsillo poñendo as columnas de encuadernación e xénero
select encuadernacion, genero, count(*) novelas_de_bolsillo  from tlibros
where encuadernacion = 'De Bolsillo' AND genero = 'Novela'
group by encuadernacion, genero

-- Mostrar cantos libros teño que sexan Novelas de Bolsillo agrupados por editorial e ordeados de máis a menos
select editorial, count(*) novelas_de_bolsillo  from tlibros
where encuadernacion = 'De Bolsillo' AND genero = 'Novela'
group by editorial order by novelas_de_bolsillo desc

