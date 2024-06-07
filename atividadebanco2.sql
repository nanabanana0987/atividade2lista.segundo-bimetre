-- Selecionar todos os livros disponíveis
SELECT * FROM livros WHERE disponivel = true;

-- Selecionar todos os livros da editora HarperCollins
SELECT * FROM livros WHERE editora = 'HarperCollins';

-- Selecionar todos os livros publicados entre 2000 e 2010
SELECT * FROM livros WHERE ano_publicacao BETWEEN 2000 AND 2010;

-- Selecionar autores com mais de 3 livros publicados
SELECT autor, COUNT(*) AS num_livros 
FROM livros 
GROUP BY autor 
HAVING COUNT(*) > 3;

-- Selecionar todos os livros cujo título contém a palavra "Senhor"
SELECT * FROM livros WHERE titulo LIKE '%Senhor%';

-- Selecionar todos os livros nas categorias 'Fantasia', 'Ficção Científica' e 'Fábula'
SELECT * FROM livros WHERE categoria IN ('Fantasia', 'Ficção Científica', 'Fábula');

-- Selecionar todos os idiomas distintos dos livros
SELECT DISTINCT idioma FROM livros;

-- Selecionar todos os livros com número de páginas entre 200 e 400
SELECT * FROM livros WHERE numero_paginas BETWEEN 200 E 400;

-- Verificar se existe algum livro na categoria 'História'
SELECT EXISTS(SELECT 1 FROM livros WHERE categoria = 'História') AS existe_historia;

-- Selecionar o título e o ano de publicação de todos os livros, ordenados por ano de publicação
SELECT titulo, ano_publicacao FROM livros ORDER BY ano_publicacao;
