--IF

-- Declaramos unha variable e executamos en funci�n dun condicional
declare @nome  varchar(15)
set @nome = 'Xaime'
if @nome = 'Xaime'
	print 'Correcto'
else
	print 'Incorrecto'
print 'FIN'

-- Se o if ou o else t�n d�as sentenzas, hai que po�er begin e end para agrupalas
declare @nome  varchar(15)
set @nome = 'Xaime'
if @nome = 'Xaime'
begin
	print 'Correcto'
	print 'Ese � o nome'
end
else
begin
	print 'Incorrecto'
	print 'Ese non � o nome'
end
print 'FIN'

--WHILE

declare @cont int
set @cont = 0
while(@cont<10)
begin
	set @cont = @cont + 1
	print 'Ola'
end
print 'FIN'