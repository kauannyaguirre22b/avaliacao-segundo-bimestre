use repescagem_22b;

-- 1
SELECT nome, especialidade
FROM Medicos;

-- 2
SELECT nome
FROM Medicos
WHERE especialidade = 'Cardiologia';

-- 3
SELECT nome
FROM Medicos
WHERE data_contratacao >=2000;

-- 4
SELECT nome
FROM Medicos
ORDER BY data_contratacao DESC;

-- 5
SELECT nome
FROM Medicos
WHERE  especializacoes_adicionais LIKE 'Cirurgia';

-- 6
SELECT nome, email
FROM Medicos
ORDER BY nome, email ASC;

-- 7
SELECT nome
FROM Medicos
WHERE horario_trabalho = '12:00-20:00' or '11:00-19:00';

-- 8
SELECT * FROM Medicos
WHERE telefone LIKE '%8901';

-- 9 
SELECT * FROM Medicos
WHERE salario between 15000 AND 16000;

-- 10
SELECT AVG (salario)
FROM Medicos;




