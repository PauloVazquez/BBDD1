-- Con LTRIM e RTRIM eliminamos os espazos en branco ao inicio e/ou ao final
select 'col '+'i'+' flor'
select rtrim('col ')+'i'+ltrim(' flor')
-- Para sacar os espazos da dereita e a esquerda dunha mesma cadea, ani�amos as funci�ns
select rtrim('col ')+rtrim(ltrim(' i '))+ltrim(' flor')

--QUOTENAME - Entrecomi�a t�tulo e p�n entre chaves o autor (se non especificas p�n chaves []
select quotename(titulo,'"'), quotename(autor,'[]') from tlibros