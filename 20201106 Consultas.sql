-- No examinador de obxectos temos todas as funci�ns posibles.

select * from tpersonas

-- Mostrar a media aritm�tica dos valores dunha columna
select avg(edad) from tpersonas

-- Conta todas as filas que existan na t�boa
select count(*) from tpersonas

-- Conta todas as filas que non te�en valor null segundo o atributo estipulado
select count(edad) from tpersonas

-- Mostra o valor m�is alto e o m�is baixo dunha  t�boa segundo un atributo dado e crea o nome das columnas m�ximo e m�nimo
select max(edad) "m�ximo, min (edad) m�nimo from tpersonas

-- Mostra as idades da t�boa de persoas ordeado pola idade
select edad from tpersonas order by edad

-- Esta opci�n d� erro porque ao d�r idade m�nima e m�xima s� d� unha tupla como soluci�n, e hai varios DNI. Non pode escoller
select DNI, max(edad) idade_maxima, min(edad) idade_m�nima from tpersonas

-- Seleccionar o DNI e cambiar o nome da columna a NIF
select DNI NIF, nombre from tpersonas

-- Suma as idades da t�boa personas
select sum(edad) from tpersonas