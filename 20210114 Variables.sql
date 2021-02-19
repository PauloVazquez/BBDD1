-- Declaramos variables
declare @nome varchar(15)
set @nome = 'Mario'
-- Con select aparece nas cuadrículas
select @nome
-- Con print aparece nas mensaxes
print @nome

-- Para averiguar o idioma do sistema co que traballamos
select @@language
-- Para averiguar a versión do sistema co que traballamos
select @@version

select @@rowcount