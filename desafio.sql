-- 1 - Buscar o nome e ano dos filmes
SELECT Nome, Ano 
	FROM Filmes;

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano 

SELECT Nome, Ano 
	FROM Filmes 
ORDER BY Ano ASC;

--3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT Nome , Ano, Duracao 
	FROM Filmes 
WHERE Nome = 'de volta para o futuro';

--4 - Buscar os filmes lançados em 1997
SELECT Nome, Ano, Duracao 
	FROM Filmes 
WHERE Ano = 1997;

--5 - Buscar os filmes lançados APÓS o ano 2000
SELECT Nome, Ano, Duracao 
	FROM Filmes 
WHERE Ano >= 2000;

--6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT 
	Nome, Ano, Duracao 
FROM Filmes 
	WHERE Duracao > 100 AND Duracao <  150 ORDER BY Duracao ASC ;

--7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente

SELECT Ano, COUNT(*) Quantidade
FROM Filmes
	WHERE Ano <> ''
GROUP BY Ano
ORDER BY Quantidade DESC;

-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome

SELECT 
	Id, PrimeiroNome, UltimoNome, Genero 
FROM Atores 
WHERE Genero LIKE 'm%';

 -- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
 SELECT 
	Id, PrimeiroNome, UltimoNome, Genero 
FROM Atores 
	WHERE Genero LIKE 'f%'
ORDER BY PrimeiroNome ASC;

-- 10 - Buscar o nome do filme e o gênero
SELECT Filmes.Nome,
		Generos.Genero AS NomeGenero
FROM Filmes 
INNER JOIN FilmesGenero fg ON Filmes.Id = fg.IdFilme
INNER JOIN Generos ON Generos.Id = fg.IdGenero;

-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"

SELECT Filmes.Nome,
		Generos.Genero AS NomeGenero
FROM Filmes 
INNER JOIN FilmesGenero fg ON Filmes.Id = fg.IdFilme
INNER JOIN Generos ON Generos.Id = fg.IdGenero
WHERE Generos.Genero = 'Mistério';

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
select f.Nome ,a.PrimeiroNome, a.UltimoNome, p.Papel 
FROM Filmes as f
INNER JOIN ElencoFilme p ON p.IdFilme = f.Id
INNER JOIN Atores a ON p.IdAtor = a.Id


