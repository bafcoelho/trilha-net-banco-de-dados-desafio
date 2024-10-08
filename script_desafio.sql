--1
Select Nome, Ano from Filmes;

--2
Select Nome, Ano
From Filmes
Order By Ano Asc;

--3
Select 
	Nome, 
	Ano, 
	Duracao
From
	Filmes
Where
	Nome = 'De Volta para o Futuro';

--4
Select 
	Nome, 
	Ano, 
	Duracao
From
	Filmes
Where
	Ano = 1997;

--5
Select 
	Nome, 
	Ano, 
	Duracao
From
	Filmes
Where
	Ano > 2000;

--6
Select 
	Nome, 
	Ano, 
	Duracao
From
	Filmes
Where
	Duracao > 100 and 
	Duracao < 150
order by Duracao asc;

--7 -- Enunciado provavelmente está incorreto está solicitando ordenado pela duração ao invés da quantidade.
Select  
	Ano, 
	Count(*) as Quantidade
From
	Filmes
Group By Ano
order by Quantidade desc;

-- 8 
Select 
	Id,
	PrimeiroNome,
	UltimoNome,
	Genero
From
	Atores
Where
	Genero = 'M'

-- 9
Select 
	Id,
	PrimeiroNome,
	UltimoNome,
	Genero
From
	Atores
Where
	Genero = 'F'
Order By PrimeiroNome

-- 10
Select
	f.Nome,
	g.Genero
From
	Filmes f
		inner join FilmesGenero fm
			on fm.IdFilme = f.Id
		inner join Generos g
			on fm.IdGenero = g.Id;

--11
Select
	f.Nome,
	g.Genero
From
	Filmes f
		inner join FilmesGenero fm
			on fm.IdFilme = f.Id
		inner join Generos g
			on fm.IdGenero = g.Id
where
	g.Genero = 'Mistério';


--12
Select
	f.Nome,
	a.PrimeiroNome,
	a.UltimoNome,
	e.Papel
From
	Filmes f
		inner join ElencoFilme e
			on e.IdFilme = f.Id
		inner join Atores a
			on e.IdAtor = a.Id;
