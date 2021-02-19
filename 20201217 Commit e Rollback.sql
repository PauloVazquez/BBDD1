select * from tprueba

-- Rollback
begin transaction -- Ou begin tran
select titulo, editorial from tprueba
	where editorial = 'Anaya'
delete from tprueba
	where editorial = 'Anaya'
select titulo, editorial from tprueba
	where editorial = 'Anaya'
rollback transaction -- Ou rollback tran
select titulo, editorial from tprueba
	where editorial = 'Anaya'

-- Commit
begin transaction -- Ou begin tran
select titulo, editorial from tprueba
	where editorial = 'Anaya'
delete from tprueba
	where editorial = 'Anaya'
select titulo, editorial from tprueba
	where editorial = 'Anaya'
commit transaction -- Ou rollback tran
select titulo, editorial from tprueba
	where editorial = 'Anaya'