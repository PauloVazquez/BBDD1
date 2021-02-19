-- Dá o código ASCII da primeira letra da cadea
select ascii ('CADEA')

-- Dá o carácter ASCII correspondente a un valor, C = 67
select char(67)

-- Devolve a posición inicial do patrón exacto 'col. Pón 0 se a cadea non está
-- dentro da outra
select charindex('col','caracola')

-- Selecciona os títulos que conteñan a cadea 'in' dentrop do título
-- Mostra a posición na que aparece esa cadea
select titulo, charindex('in',titulo) from tlibros where charindex('in',titulo) != 0

-- Selecciona a diferenza entre dúas cadeas de caracteres
select difference ('Ola','Adeus')

-- Selecciona os X caracteres á esquerda ou da dereita da palabra ou atributo dado
select left (titulo,4) from tlibros
select right ('Casamata',4) 
select right ('Casamata',len('it'))

-- Selecciona os 8 caracteres dende a posición 5
select substring ('Bienaventuranza',5,8)

-- Selecciona os atributos en maiúsculas (upper) ou en minúsculas (lower)
-- Ao poñer título e autor ao lado crea o nome da nova columna
select upper(titulo) titulo,lower(autor) autor from tlibros

-- O símbolo + serve para unir cadeas de caracteres
print 'Ola, ' + ' que tal?'
-- Así vai dár erro
print 'Ola ' + 23
-- Hai que crear o número como cadea, str representa como 10 caracteres por defecto
print 'Ola ' + str(23)
-- Así representa 3 pola esquerda
print 'Ola ' + str(23,3)
-- Da cadea string 23.67, imprimirá os 5 primeiros caracteres e 2 serán decimais
-- O espazo vai incluido no 'Ola ', como puxen 5 caracteres colle os 5 do número (inclúe o punto)
print 'Ola ' + str(23.67,5,2)