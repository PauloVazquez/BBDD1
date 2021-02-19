-- Convirte entre tipos, neste caso entre datas
select fech_ed, convert(varchar(11),fech_ed) from tlibros

select fech_ed, convert(varchar,fech_ed,106) from tlibros

select fech_ed, convert(varchar,fech_ed,1) from tlibros

select fech_ed, convert(varchar,fech_ed,102) from tlibros
