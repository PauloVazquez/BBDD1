select * from tlibros

-- Mostra os títulos e ao lado a lonxitude dos caracteres
select titulo, len(titulo) 'Lonxitude de título' from tlibros

-- Mostra os títulos e a súa lonxitude da táboa libros que teñen igual ou menos de 15 caracteres
select titulo, len(titulo) 'Lonxitude do título' from tlibros where len(titulo)<=15