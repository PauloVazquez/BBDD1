
select * from tprobas
select * into tprobas from tlibros


select @@rowcount

--Podemos imprimir pero dará erro porque hai que concatenar, print traballa sempre con cadeas
declare @nome varchar(15), @idade int
set @nome = 'Xan'
set @idade = 27
print @nome, @idade

-- Así tamén dará erro
declare @nome varchar(15), @idade int
set @nome = 'Xan'
set @idade = 27
print @nome+ @idade

--Tén que poñerse así
declare @nome varchar(15), @idade int
set @nome = 'Xan'
set @idade = 27
print @nome + str(@idade,3)

-- Declaramos unha variable de tipo táboa
declare @taboa table(nome varchar(15), idade int)
insert into @taboa values('Xan',34)
insert into @taboa values('Ana',35)
select * from @taboa