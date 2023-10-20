drop database if exists PetShop;
create database PetShop;
use PetShop;

create table Especies (
	id			int,
    nome		varchar(60),
    descricao	varchar(60),
    
    primary key(id)
);

create table Animais (
	id			int,
    nome		varchar(60),
    data_nasc	date,
    peso		decimal(4,2),
    especie_id	int,
    
    primary key(id),
    foreign key (especie_id) references Especies(id)
);

insert into Especies values
	(1, "Canis lupus familiaris", "Cão doméstico"),
	(2, "Canis lupus dingo", "Dingo"),
	(3, "Canis lupus familiaris", "Lupus");
    
insert into Animais values
	(1, "Max", "2002-12-02", 12.5, 2),
	(2, "Bella", "2006-10-12", 35.5, 1),
	(3, "Rocky", "2005-11-04", 18.5, 3),
	(4, "Buddy", "2012-10-10", 25.5, 1),
	(5, "Daisy", "2018-08-07", 75.5, 1),
	(6, "Charlie", "2020-01-01", 15.5, 2),
	(7, "Chloe", "2021-11-14", 55.5, 3),
	(8, "Luna", "2012-02-14", 15.5, 3);
    
select * from Animais