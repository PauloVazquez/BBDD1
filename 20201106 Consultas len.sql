select * from tlibros

-- Mostra os t�tulos e ao lado a lonxitude dos caracteres
select titulo, len(titulo) 'Lonxitude de t�tulo' from tlibros

-- Mostra os t�tulos e a s�a lonxitude da t�boa libros que te�en igual ou menos de 15 caracteres
select titulo, len(titulo) 'Lonxitude do t�tulo' from tlibros where len(titulo)<=15