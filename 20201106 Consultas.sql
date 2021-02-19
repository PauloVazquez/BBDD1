-- No examinador de obxectos temos todas as funcións posibles.

select * from tpersonas

-- Mostrar a media aritmética dos valores dunha columna
select avg(edad) from tpersonas

-- Conta todas as filas que existan na táboa
select count(*) from tpersonas

-- Conta todas as filas que non teñen valor null segundo o atributo estipulado
select count(edad) from tpersonas

-- Mostra o valor máis alto e o máis baixo dunha  táboa segundo un atributo dado e crea o nome das columnas máximo e mínimo
select max(edad) "máximo, min (edad) mínimo from tpersonas

-- Mostra as idades da táboa de persoas ordeado pola idade
select edad from tpersonas order by edad

-- Esta opción dá erro porque ao dár idade mínima e máxima só dá unha tupla como solución, e hai varios DNI. Non pode escoller
select DNI, max(edad) idade_maxima, min(edad) idade_mínima from tpersonas

-- Seleccionar o DNI e cambiar o nome da columna a NIF
select DNI NIF, nombre from tpersonas

-- Suma as idades da táboa personas
select sum(edad) from tpersonas