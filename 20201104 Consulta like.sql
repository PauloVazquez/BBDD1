-- Clase 04/11/2020

-- Seleccionar os nomes que empecen por A ou P e que a súa quinta letra sexa unha vogal.
-- [AP] As letras aquí dentro marca as opcións que se están buscando, neste caso que o primeiro caracter sexa A ou P
-- _ Cada símbolo _ marca un espazo baleiro que pode ser calquera.
-- [AEIOU] Isto marca que nese caracter só caben as vogais
-- % Este símbolo permite que a a palabra continúe. Por exemplo nesta consulta sen ese % non aparecería Patricia.

select * from tpersonas where nombre like '[AP]___[AEIOU]%'

-- Seleccionar aqueles nomes que non superen as 5 letras.
-- len(campo)<=X marca que a lonxitude do campo concreto sexa menor ou igual ao valor dado

select * from tpersonas where len(nombre)<=5

-- Seleccionar o nome, a idade e a idade dentro de 5 anos das persoas cuxo nome teña 5 ou menos caracteres
select nombre, edad, edad_futura=edad+5 from tpersonas where len(nombre)<=5

