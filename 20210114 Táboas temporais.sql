-- # É unha táboa temporal local, que só pode usarse no equipo no que se crea.

-- Creamos unha táboa temporal local dende tlibros
select * into #taboa1 from tlibros

select * from #taboa1

-- Podemos borrar a táboa, tamén se borrará ao pechar sesión no SQL Server.
drop table #taboa1

-- Creamos unha táboa temporal con datos novos
create table #taboatemporal (
dni char(9) primary key,
nome varchar(20),
idade int
)

select * from #taboatemporal

-- Insertamos valores na táboa
insert into #taboatemporal
values ('11111111D','Pepe', 23)

-- Modificamos datos
update #taboatemporal set idade = 27
where dni = '11111111D'

drop table #taboatemporal

-- ## É táboa temporal global, pode compartirse entre varios equipos.
-- Creamos unha táboa temporal global con datos novos
create table ##taboatemporal (
dni char(9) primary key,
nome varchar(20),
idade int
)

-- Insertamos valores na táboa
insert into ##taboatemporal
values ('11111111D','Pepe', 23)

-- Modificamos datos
update ##taboatemporal set idade = 27
where dni = '11111111D'

select * from ##taboatemporal

drop table ##taboatemporal