
select * from tprobas
select * into tprobas from tlibros


select @@rowcount

--Podemos imprimir pero dar� erro porque hai que concatenar, print traballa sempre con cadeas
declare @nome varchar(15), @idade int
set @nome = 'Xan'
set @idade = 27
print @nome, @idade

-- As� tam�n dar� erro
declare @nome varchar(15), @idade int
set @nome = 'Xan'
set @idade = 27
print @nome+ @idade

--T�n que po�erse as�
declare @nome varchar(15), @idade int
set @nome = 'Xan'
set @idade = 27
print @nome + str(@idade,3)

-- Declaramos unha variable de tipo t�boa
declare @taboa table(nome varchar(15), idade int)
insert into @taboa values('Xan',34)
insert into @taboa values('Ana',35)
select * from @taboa