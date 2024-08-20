--1 
select Nome, Ano from Filmes;

--2
select Nome, Ano from Filmes 
Order by Ano ASC;

--3
select Nome, Ano, Duracao from Filmes;

--4
select Nome, Ano, Duracao from Filmes where Ano =1997;

--5
select Nome, Ano, Duracao from Filmes where Ano > 2000;


--6
select Nome, Ano, Duracao from Filmes where Duracao > 100 AND Duracao < 150
order by Duracao ASC;


--7
select 
    Ano, Count(*) Quantidade, AVG(Duracao) DuracaoMedia
from filmes
group by Ano
order by DuracaoMedia DESC;

--8 
select PrimeiroNome, UltimoNome, Genero from Atores where Genero = 'M';

--9 Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
select 
	PrimeiroNome, 
	UltimoNome, 
	Genero 
from Atores where Genero = 'F'
order by PrimeiroNome;

--10 
select 
	f.Nome, 
	g.Genero 
from Filmes f
inner join FilmesGenero fg on fg.IdFilme = f.Id
inner join Generos g on fg.IdGenero = g.id;

--11
select 
	f.Nome, 
	g.Genero 
from Filmes f
inner join FilmesGenero fg on fg.IdFilme = f.Id
inner join Generos g on fg.IdGenero = g.id
where g.Genero = 'Mistério';

--12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
select
	f.nome,
	a.PrimeiroNome,
	a.UltimoNome,
	e.Papel
from Filmes f
inner join ElencoFilme e on e.IdFilme=f.Id
inner join Atores a on e.IdAtor = a.Id;
