-- YEAR escolle o ano dunha cadea de datetime
select fech_ed, year(fech_ed) from tlibros
-- MONTH escolle o mes dunha cadea de datetime
select fech_ed, month(fech_ed) from tlibros
-- DAY escolle o d�a dunha cadea de datetime
select fech_ed, day(fech_ed) from tlibros

--GETDATE d�nos a data do sistema
select getdate()

-- DATEADD engade un intervalo marcado a unha data
select fech_ed, dateadd(yy,9,fech_ed) from tlibros
select fech_ed, dateadd(mm,9,fech_ed) from tlibros
select fech_ed, dateadd(dd,9,fech_ed) from tlibros

-- Que mostre a data de dentro de 15 d�as no d�a que se execute
select getdate(), dateadd(dd,15,getdate())

-- Calcula os meses de vida,
select datediff(mm,'1988-1-9',getdate())

--Visualizar ordeados por data (de actual a antigo), o t�tulo do libro e a data da edici�n
select titulo, fech_ed from tlibros order by fech_ed DESC

-- Visualizar t�tulo e data de edici�n de todos os libros editados nos 10 �ltimos anos
-- da data de consulta
select titulo, fech_ed from tlibros
where datediff(yy,fech_ed,getdate())<= 10
order by fech_ed DESC

--DATEPART d� a parte que queiramos da data.
select fech_ed, datepart(dd,fech_ed) from tlibros
select fech_ed, datepart(mm,fech_ed) from tlibros
select fech_ed, datepart(yy,fech_ed) from tlibros
--Indica a semana
select fech_ed, datepart(wk,fech_ed) from tlibros
-- Indica o d�a da semana
select fech_ed, datepart(dw,fech_ed) from tlibros
-- Indica o d�a do ano
select fech_ed, datepart(dy,fech_ed) from tlibros

--DATENAME d� o nome 
select fech_ed, datename(mm,fech_ed) from tlibros
-- Indica o d�a da semana
select fech_ed, datename(dw,fech_ed) from tlibros

-- Visualizar os t�tulos editados en cada d�a da semana
select titulo,fech_ed, datename(dw,fech_ed) 'dia_edicion' from tlibros where datename(dw,fech_ed)= 'Lunes'
select titulo,fech_ed, datename(dw,fech_ed) 'dia_edicion' from tlibros where datename(dw,fech_ed)= 'Martes'
select titulo,fech_ed, datename(dw,fech_ed) 'dia_edicion' from tlibros where datename(dw,fech_ed)= 'Mi�rcoles'
select titulo,fech_ed, datename(dw,fech_ed) 'dia_edicion' from tlibros where datename(dw,fech_ed)= 'Jueves'
select titulo,fech_ed, datename(dw,fech_ed) 'dia_edicion' from tlibros where datename(dw,fech_ed)= 'Viernes'
select titulo,fech_ed, datename(dw,fech_ed) 'dia_edicion' from tlibros where datename(dw,fech_ed)= 'S�bado'
select titulo,fech_ed, datename(dw,fech_ed) 'dia_edicion' from tlibros where datename(dw,fech_ed)= 'Domingo'