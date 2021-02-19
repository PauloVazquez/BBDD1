-- Declaramos unha variable co valor da suma dos prezos dos libros
declare @valor money
set @valor = (select sum(precio) from tlibros)
select str(@valor,7,2)

-- Declaramos unha variable co valor da suma dos prezos e da suma das p�xinas dos libros
declare @valor money,@numpag int
select @valor = sum(precio), @numpag = sum(num_pag) from tlibros
print 'Total prezo' + space(5) + 'Total p�xinas'
print '-----------------------------'
print str(@valor,7,2)+space(8)+str(@numpag,6)

-- Podemos debuxar a li�a de gui�ns con replicate
declare @valor money,@numpag int
select @valor = sum(precio), @numpag = sum(num_pag) from tlibros
print 'Total prezo' + space(5) + 'Total p�xinas'
print replicate('-',29)
print str(@valor,7,2)+space(8)+str(@numpag,6)