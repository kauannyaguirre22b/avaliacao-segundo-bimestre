use avaliacao_22b;

INSERT INTO Livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma) VALUES
("As Crônicas de Nárnia", "C.S Lewis", 1950, TRUE, "Fantasia", "978-0064471190", "Harper Collins", 768, "Inglês");

UPDATE Livros
SET disponivel = false
WHERE ano-publicacao < 2000;


SELECT quantidade_paginas
FROM Livros
WHERE quantidade_paginas > 500;

SELECT * FROM Livros
LIMIT 5;

SELECT AVG(ano_publicacao = true)
FROM Livros;

SELECT ano_publicacao
FROM Livros
ORDER BY ano_publicacao DESC;







