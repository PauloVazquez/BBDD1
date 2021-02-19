-- group by agrupa pola columna que se lle diga
-- Non se poden escoller diferentes columnas, como con max e min.
-- Se escollo varios atributos, non poder�a agrupalos por editorial
-- Neste caso est� sumando os prezos e agrup�ndoos por editorial
select editorial, sum(precio)prezo from tlibros
group by editorial

-- Agora fai o mesmo e ordea por ese prezo de forma descendente
select editorial, sum(precio)prezo from tlibros
group by editorial order by prezo desc

-- where crea condici�n sobre tupla
-- having crea condici�n sobre grupo

-- Selecciona as editoriais agrupadas nas que temos m�is de 20� en total
select editorial, sum(precio) prezo from tlibros
group by editorial having sum(precio) > 20 order by prezo desc

-- Seleccionar as editorias agrupadas nas que hai m�is de 10� en x�nero novela
-- O where ponse antes porque afecta �s tuplas
-- O having vai despois porque afecta ao grupo creado
select editorial, sum(precio) prezo from tlibros
where genero = 'Novela'
group by editorial having sum(precio) > 10
order by prezo desc