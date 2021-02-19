-- # � unha t�boa temporal local, que s� pode usarse no equipo no que se crea.

-- Creamos unha t�boa temporal local dende tlibros
select * into #taboa1 from tlibros

select * from #taboa1

-- Podemos borrar a t�boa, tam�n se borrar� ao pechar sesi�n no SQL Server.
drop table #taboa1

-- Creamos unha t�boa temporal con datos novos
create table #taboatemporal (
dni char(9) primary key,
nome varchar(20),
idade int
)

select * from #taboatemporal

-- Insertamos valores na t�boa
insert into #taboatemporal
values ('11111111D','Pepe', 23)

-- Modificamos datos
update #taboatemporal set idade = 27
where dni = '11111111D'

drop table #taboatemporal

-- ## � t�boa temporal global, pode compartirse entre varios equipos.
-- Creamos unha t�boa temporal global con datos novos
create table ##taboatemporal (
dni char(9) primary key,
nome varchar(20),
idade int
)

-- Insertamos valores na t�boa
insert into ##taboatemporal
values ('11111111D','Pepe', 23)

-- Modificamos datos
update ##taboatemporal set idade = 27
where dni = '11111111D'

select * from ##taboatemporal

drop table ##taboatemporal