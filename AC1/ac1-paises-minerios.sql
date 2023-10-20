drop database if exists PaísesMinérios;
create database PaísesMinérios;
use PaísesMinérios;

create table Países (
	ID 				int				primary key 		auto_increment,
    NomePaís		varchar(30)		not null,
    Continente 		varchar(30),
    Capital 		varchar(30),
    Moeda 			varchar(50),
    ÁreaEmM2		int,
    VulcõesAtivos	int		
);

create table Minerios (
	ID				int				primary key 		auto_increment,
    NomeMinério		varchar(30)		not null
);

create table Producao (
	idPaíses		int				references Países(ID),
    idMinérios		int				references Minérios(ID),
    Ano				varchar(4),
    Toneladas		int
);

insert into Países (NomePaís, Continente, Capital, Moeda, ÁreaEmM2, VulcõesAtivos) values
	("Brasil", "América", "Brasília", "Real", 8516000, 0),
    ("Estados Unidos", "América", "Washignton", "Dólar Americano", 9834000, 3),
    ("Austrália", "Oceania", "Camberra", "Dólar Australiano", 6542002, 2),
    ("Equador", "América", "Quito", "Dólar Americano", 6548222, 1),
    ("Panamá", "América", "Cidade do Panamá", "Dólar Americano", 7786552, 0),
    ("Alemanha", "Europa", "Berlim", "Euro", 6698754, 1),
    ("Ucrânia", "Europa", "Kiev", "Grívnia", 4423589, 0),
    ("Afeganistão", "Ásia", "Kabul", "Afegane", 6256543, 3),
    ("França", "Europa", "Paris", "Euro", 9987564, 4),
    ("Cazaquistão", "Ásia", "Astana", "Tenge", 6658756, 5);
    
insert into Minerios (NomeMinério) values
	("Silício"),
    ("Ferro"),
    ("Bauxita"),
    ("Carvão"),
    ("Cobre"),
    ("Ouro"),
    ("Diamante"),
    ("Ametista"),
    ("Ruby"),
    ("Obsidiana"),
    ("Netherite"),
    ("Esmeralda"),
    ("Quartzo"),
    ("Tungstênio"),
    ("Níquel");
    
insert into Producao (idPaíses, idMinérios, Ano, Toneladas) values
	(1 , 1, 2010, 2564232),
    (1, 2, 2011, 56465456),
    (1, 2, 2013, 52252656),
    (1, 3, 2011, 23132145),
    (1, 4, 2015, 31516515),
    (1, 5, 2012, 59616551),
    (1, 6, 2017, 89526265),
    (1, 7, 2018, 23165165),
    (1, 8, 2019, 65156165),
    (1, 9, 2020, 31561568),
    (2, 1, 2010, 56546546),
    (2, 2, 2011, 56545452),
    (2, 2, 2012, 32156561),
    (2, 3, 2011, 92626516),
    (2, 4, 2015, 86516506),
    (2, 5, 2012, 31615623),
    (2, 6, 2017, 23156026),
    (2, 7, 2018, 51531560),
    (2, 8, 2019, 05262315),
    (2, 9, 2020, 82625662),
    (4, 4, 2013, 32165023),
    (5, 5, 2014, 22222707),
    (6, 6, 2015, 14051978),
    (7, 7, 2016, 22031587),
    (8, 8, 2017, 96094128),
    (9, 9, 2018, 82182105),
    (10, 10, 2019, 9201647),
    (9, 11, 2020, 1708833),
    (8, 12, 2019, 5339978),
    (7, 13, 2018, 3771921),
    (6, 14, 2017, 6364944),
    (7, 15, 2016, 1013560),
	(6, 6, 2021, 5465165),
    (8, 14, 2021, 6546546);
    
/* 
1 - Um relatório que mostra todos os países de um continente, informando o nome do país, sua capital e moeda oficial.
2 - O total de silício produzido na década de 2010 de cada país.
3 - Todos os países que em 2019 registraram produção de ferro entre 2000000 e 5000000 de toneladas.
4 - Todos os continentes informando seu nome, área e quantidade vulcões ativos.
5 - O pais com maior produção de bauxita em 2011.
6 - A média mundial de produção de diamante em 2012.
7 - O minério com maior produção em 2018.
8 - A média de produção de cada minério em 2014.
9 - Todos os países que o nome termina com 'istão' ou 'lândia'.
10 - Todos os países que produzem ouro e tungstênio no ano passado bem como as quantidades.

1 - Um relatório que mostra todos os países de um continente, informando o nome do país, sua capital e moeda oficial.
select ID, NomePaís, Capital, Continente, Moeda from Países

2 - O total de silício produzido na década de 2010 de cada país.
select * from Producao
where idMinérios = 1

3 - Todos os países que em 2019 registraram produção de ferro entre 2000000 e 5000000 de toneladas.
select * from Producao
where ano = '2019'

4 - Todos os continentes informando seu nome, área e quantidade vulcões ativos.
select Continente, ÁreaEmM2, VulcõesAtivos from Países

5 - O pais com maior produção de bauxita em 2011.
select * from Producao
where idMinérios = 3 and ano = 2011
order by Toneladas desc

6 - A média mundial de produção de diamante em 2012.
select AVG(Toneladas) from Producao
where idMinérios = 7

7 - O minério com maior produção em 2018.
select idMinérios from Producao
order by Toneladas desc

8 - A média de produção de cada minério em 2014.
select idMinérios, Toneladas from Producao
where ano = 2018
order by Toneladas desc

9 - Todos os países que o nome termina com 'istão' ou 'lândia'.
select ID, NomePaís from Países
where NomePaís like '%istão' or '%lândia'

10 - Todos os países que produzem ouro e tungstênio no ano passado bem como as quantidades.
select idPaíses, idMinérios from Producao
where idMinérios = 'Ouro'and 'Tugstênio'
	
    
    

    
    
    
    
    
    
	
		