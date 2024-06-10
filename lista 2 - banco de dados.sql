-- 1.Selecionar Livros Disponíveis
select * from livros
where disponivel = 1;

-- 2.Selecionar por Editora
select * from livros
where editora like "harpercollins";

-- 3.Selecionar por Ano de Publicação
select * from livros
where ano_publicacao between 2000 and 2010;

-- 4.Selecionar com COUNT e HAVING:
select autor, count(titulo) from livros
group by autor
having count(titulo) > 3;

-- 5.Selecionar com LIKE
select * from livros
where titulo like "%senhor%";

-- 6.Selecionar com IN:
select * from livros
where categoria in ("fantasia", "ficção científica", "fábula");

-- 7.Selecionar com DISTINCT:
select distinct idioma from livros;

-- 8.Selecionar com BETWEEN
select * from livros
where quantidade_paginas between 200 and 400;

-- 9.Selecionar Títulos e Anos de Publicação
select titulo, ano_publicacao from livros
order by ano_publicacao