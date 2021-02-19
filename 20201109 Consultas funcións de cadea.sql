-- D� o c�digo ASCII da primeira letra da cadea
select ascii ('CADEA')

-- D� o car�cter ASCII correspondente a un valor, C = 67
select char(67)

-- Devolve a posici�n inicial do patr�n exacto 'col. P�n 0 se a cadea non est�
-- dentro da outra
select charindex('col','caracola')

-- Selecciona os t�tulos que conte�an a cadea 'in' dentrop do t�tulo
-- Mostra a posici�n na que aparece esa cadea
select titulo, charindex('in',titulo) from tlibros where charindex('in',titulo) != 0

-- Selecciona a diferenza entre d�as cadeas de caracteres
select difference ('Ola','Adeus')

-- Selecciona os X caracteres � esquerda ou da dereita da palabra ou atributo dado
select left (titulo,4) from tlibros
select right ('Casamata',4) 
select right ('Casamata',len('it'))

-- Selecciona os 8 caracteres dende a posici�n 5
select substring ('Bienaventuranza',5,8)

-- Selecciona os atributos en mai�sculas (upper) ou en min�sculas (lower)
-- Ao po�er t�tulo e autor ao lado crea o nome da nova columna
select upper(titulo) titulo,lower(autor) autor from tlibros

-- O s�mbolo + serve para unir cadeas de caracteres
print 'Ola, ' + ' que tal?'
-- As� vai d�r erro
print 'Ola ' + 23
-- Hai que crear o n�mero como cadea, str representa como 10 caracteres por defecto
print 'Ola ' + str(23)
-- As� representa 3 pola esquerda
print 'Ola ' + str(23,3)
-- Da cadea string 23.67, imprimir� os 5 primeiros caracteres e 2 ser�n decimais
-- O espazo vai incluido no 'Ola ', como puxen 5 caracteres colle os 5 do n�mero (incl�e o punto)
print 'Ola ' + str(23.67,5,2)