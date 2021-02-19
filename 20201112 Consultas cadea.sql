-- Con LTRIM e RTRIM eliminamos os espazos en branco ao inicio e/ou ao final
select 'col '+'i'+' flor'
select rtrim('col ')+'i'+ltrim(' flor')
-- Para sacar os espazos da dereita e a esquerda dunha mesma cadea, aniñamos as funcións
select rtrim('col ')+rtrim(ltrim(' i '))+ltrim(' flor')

--QUOTENAME - Entrecomiña título e pón entre chaves o autor (se non especificas pón chaves []
select quotename(titulo,'"'), quotename(autor,'[]') from tlibros