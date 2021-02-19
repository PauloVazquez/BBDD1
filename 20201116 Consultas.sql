-- Mostrar un atributo numérico como cadea, fai falta usar a función STR
-- STR comeza despois de 10 espazos, hai que marcarlle a lonxitude da cadea: 5 e 2 decimais: 2
-- str(valor numérico, lonxitude que quero que teña a cadea, número de decimais
select 'O prezo do libro '+titulo+' é de '+str(precio,5,2)+' euros', precio from tlibros order by precio asc

-- cast permite cambiar entre tipos de variables
-- Outra forma de facelo, pasalo a char de lonxitude 6, xa que son os necesarios para ' xx,yy'
select titulo+cast(precio as char(6)) from tlibros

-- Con varchar, a cadea adáptase ao valor que necesita, se necesita 5, adapta a 5. Non pón espazos entre título e prezo
select titulo+cast(precio as varchar(15)) from tlibros order by precio asc
-- Solucionamos poñendo espazo na consulta
select titulo+' '+cast(precio as varchar(15)) from tlibros order by precio asc