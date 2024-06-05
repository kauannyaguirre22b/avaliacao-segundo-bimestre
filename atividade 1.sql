use avaliacao_22b;

-- 1.Inserir um Novo Livro
INSERT INTO Livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma) VALUES
("As Crônicas de Nárnia", "C.S Lewis", 1950, TRUE, "Fantasia", "978-0064471190", "Harper Collins", 768, "Inglês");

-- 2.Inserir Múltiplos Livros
INSERT INTO Livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma) VALUES
("Cem Anos de Solidão", "Gabriel Garcia Marquez", 1967, true, "Ficção", '978-0241968581', "Penguin Books", 422, "Espanhol"),
("Harry Potter e a Pedra Filosofal", "J.K. Rowling", 1997, true, "Fantasia", '978-0439708180', "Bloomsbury", 309, "Inglês"),
("O Senhor dos Anéis: A Sociedade do Anel", "J.R.R. Tolkien", 1954, true, "Fantasia", '978-0618640157', "HarperCollins", 423, "Inglês");

-- 3.Inserir Livro com Categoria Específica
INSERT INTO Livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma) VALUES
("O Spacateiro", "Ruan Assis", 2024, true, "História", '978-6568890714', "Larissa Silvestre", 224, "Português");

SELECT * FROM livros;

-- 4.Atualizar disponibilidade 
UPDATE livros
SET disponivel = false
WHERE ano_publicacao < 2000;

-- 5.Atualizar Editora
UPDATE Livros
SET editora = 'Plume Books'
WHERE titulo = '1984';

-- 6.Atualizar Idioma
UPDATE livros
SET idioma = "Inglês"
WHERE editora = "Peguin Books";

-- 7.Atualizar Titulo
UPDATE livros
SET titulo = "Harry Poter e a Pedra Filosofal (Edição Especial)"
WHERE isbn = "978-0439708180";

-- 8.Deletar por Categoria
DELETE FROM livros
WHERE categoria = "Terror";

-- 9.Deletar por Idioma e Ano
DELETE FROM livros
WHERE idioma = "Francês" AND
ano_publicacao < 1970;

-- 10.Deletar Livro Específico
DELETE FROM livros
WHERE titulo = "As Crônicas de Nárnia";

-- 11.Deletar por Editora
DELETE FROM livros
WHERE editora = "Penguin Books";

-- 12.Selecionar com WHERE
SELECT * FROM livros
WHERE quantidade_paginas > 500;

-- 13.Selecionar com GROUP BY
SELECT categoria, COUNT(*) AS quantidade
FROM livros
GROUP BY categoria;

-- 14.Selecionar com LIMIT
SELECT * FROM livros
ORDER BY id
LIMIT 5;

-- 15.Selecionar com SUM e COUNT
SELECT SUM(quantidade_paginas) AS total_paginas, COUNT(*) AS total_livros, AVG(quantidade_paginas) AS media_paginas
FROM livros
WHERE categoria = "Drama";

-- 16.Selecionar com AVG
SELECT AVG(ano_publicacao) AS media_ano_publicacao
FROM livros
WHERE disponivel = TRUE;

-- 17.Selecionar com MAX e MIN
SELECT MIN(ano_publicacao)
FROM livros;

SELECT MAX(ano_publicacao)
FROM livros;

-- 18.Selecionar com ORDER BY
SELECT * FROM livros
ORDER BY ano_publicacao DESC;

-- 19.Selecionar com UNION
SELECT titulo FROM livros
WHERE idioma = "Inglês"
UNION
SELECT titulo FROM livros
WHERE idioma = "Português";

-- 20.Selecionar Livros de um Autor Específico
SELECT * FROM livros
WHERE autor = "George Orwell";






 