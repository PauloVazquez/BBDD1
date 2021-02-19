-- Clase 04/11/2020

-- Seleccionar os nomes que empecen por A ou P e que a s�a quinta letra sexa unha vogal.
-- [AP] As letras aqu� dentro marca as opci�ns que se est�n buscando, neste caso que o primeiro caracter sexa A ou P
-- _ Cada s�mbolo _ marca un espazo baleiro que pode ser calquera.
-- [AEIOU] Isto marca que nese caracter s� caben as vogais
-- % Este s�mbolo permite que a a palabra contin�e. Por exemplo nesta consulta sen ese % non aparecer�a Patricia.

select * from tpersonas where nombre like '[AP]___[AEIOU]%'

-- Seleccionar aqueles nomes que non superen as 5 letras.
-- len(campo)<=X marca que a lonxitude do campo concreto sexa menor ou igual ao valor dado

select * from tpersonas where len(nombre)<=5

-- Seleccionar o nome, a idade e a idade dentro de 5 anos das persoas cuxo nome te�a 5 ou menos caracteres
select nombre, edad, edad_futura=edad+5 from tpersonas where len(nombre)<=5

