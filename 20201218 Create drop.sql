-- Crear obxectos
create tipo_obxecto nome_obxecto
create table proba
-- Eliminar obxectos
drop table tprueba

-- Creamos unha táboa cos 3 atributos seguintes
create table tprueba
(
nif char(9),
nome varchar(15),
idade int
)

select * from tprueba

-- Insertamos un rexistro de exemplo
insert into tprueba
	values('11111111A','Samuel',23)

-- Insertamos datos parciais
insert into tprueba (nif,idade)
	values('11111111A',23) -- Permite o mesmo NIF porque non é PK e deixa poñer como NULL o nome

-- Borramos esa táboa
drop table tprueba

-- Creamos unha táboa cos 3 atributos seguintes e unha PK
create table tprueba
(
nif char(9) primary key,
nome varchar(15),
idade int
)

-- Insertamos un rexistro de exemplo
insert into tprueba
	values('11111111A','Samuel',23)

-- Insertamos datos parciais
insert into tprueba (nif,idade)
	values('11111111A',23) -- Non deixa porque NIF é PK

insert into tprueba (nif,idade)
	values('11111111B',23) -- Agora deixa por ser diferente NIF

insert into tprueba (nome,idade)
	values('Xan',21) -- Non deixa porque a PK non pode ser nula

insert into tprueba
	values('22222222D', 'Xan Antonio', 21)

insert into tprueba
	values('22222225K', 'Sara', 222)

select * from tprueba

-- Borramos esa táboa
drop table tprueba

-- Creamos unha táboa cos 3 atributos seguintes, unha PK e restrinximos a idade
create table tprueba
(
nif char(9) primary key,
nome varchar(15) not null default 'Descoñecido', -- Nome not null pero prevendo que a veces non o vou saber poño un default
idade int check (idade between 1 and 110)
)

-- Insertamos un rexistro de exemplo
insert into tprueba
	values('11111111A','Samuel',23)

-- Insertamos datos parciais
insert into tprueba (nif,idade)
	values('11111111B',23) -- Agora deixa por ser diferente NIF

insert into tprueba
	values('22222222D', 'Xan Antonio', 21)

insert into tprueba
	values('22222225K', 'Sara', 22)

select * from tprueba

-- Borramos esa táboa
drop table tprueba

-- Creamos unha táboa cos 4 atributos seguintes, unha PK e restrinximos a idade
create table tprueba
(
nif char(9) primary key,
nome varchar(15) not null default 'Descoñecido', -- Nome not null pero prevendo que a veces non o vou saber poño un default
idade int check (idade between 1 and 110),
sexo char(1) check(sexo in ('V','M','O')) default 'O' -- Hai que poñer o valor por defecto entre os valores válidos
)

insert into tprueba
	values('11111111A','Samuel',23,'V')

insert into tprueba (nif,idade,sexo)
	values('11111111B',23,'M')

insert into tprueba (nif, nome, idade)
	values('22222222D', 'Xan Antonio', 21)

select * from tprueba

select * into tproba from tlibros