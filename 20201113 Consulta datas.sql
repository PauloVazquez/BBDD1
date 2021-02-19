-- Seleccionar os títulos que se editaron os meses que conteñen r
select titulo, datename (mm,fech_ed) mes from tlibros
where datename (mm,fech_ed) like '%r%'

-- Mostrar o título e o autor nunha soa columna
select titulo + ' // '  + autor libros_e_escritor from tlibros

-- Mostrar o título e o autor nunha soa columna pero aliñados como se fosen columnas
select titulo + replicate (' ',47-len(titulo))  + autor libros_e_escritores from tlibros
select titulo + space(47-len(titulo)) + autor libros_e_escritores from tlibros