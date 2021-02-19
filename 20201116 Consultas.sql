-- Mostrar un atributo num�rico como cadea, fai falta usar a funci�n STR
-- STR comeza despois de 10 espazos, hai que marcarlle a lonxitude da cadea: 5 e 2 decimais: 2
-- str(valor num�rico, lonxitude que quero que te�a a cadea, n�mero de decimais
select 'O prezo do libro '+titulo+' � de '+str(precio,5,2)+' euros', precio from tlibros order by precio asc

-- cast permite cambiar entre tipos de variables
-- Outra forma de facelo, pasalo a char de lonxitude 6, xa que son os necesarios para ' xx,yy'
select titulo+cast(precio as char(6)) from tlibros

-- Con varchar, a cadea ad�ptase ao valor que necesita, se necesita 5, adapta a 5. Non p�n espazos entre t�tulo e prezo
select titulo+cast(precio as varchar(15)) from tlibros order by precio asc
-- Solucionamos po�endo espazo na consulta
select titulo+' '+cast(precio as varchar(15)) from tlibros order by precio asc