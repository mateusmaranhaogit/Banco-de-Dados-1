drop database if exists logistica ;
create database logistica;
use logistica;

create table viagem (
	idViagem			int 			auto_increment		primary key,
	CidadeOrigem		varchar(45)		references cidade(id),
	CidadeDestino		varchar(45)		references cidade(id),
    condutor			varchar(45)		references condutor(id),
    veiculo				varchar(45)		references veiculo(id),
    placa				varchar(45)		references veiculo(id),
    distancia			int,
    data_saida			date,
    data_chegada		date
);

create table cidadeOrigem (
	idCidade_Origem		int 			auto_increment		primary key,
    nome_cidade			varchar(45)		not null,
    populacao			int,
    estado				varchar(2)		not null
);

create table cidadeDestino (
	idCidade_Destino	int 			auto_increment		primary key,
    nome_cidade			varchar(45)		not null,
    populacao			int,
    estado				varchar(2)		not null
);

create table condutor (
	idCondutor			int 			auto_increment		primary key,
	nome_condutor		varchar(45)		not null,
    idade				int	 			not null,
    cnh					varchar(45)		unique
);

create table veiculo (
	idVeiculo		int 				auto_increment		primary key,
    condutor_id		int					references 	condutor(id),	
	modelo_veiculo	varchar(45)			not null,				
    placa			varchar(45)			unique
);

/* 6 - */
insert into viagem values (1, "Sorocaba", "Boituva", "Elon Musk", "Toyota Etios", "IAP2750", "120", "2022-10-01", "2022-10-02");
insert into viagem values (2, "Itu", "São Roque", "Toguro dos Santos", "Toyota Corolla", "COH70050", "130", "2022-10-03", "2022-10-04");
insert into viagem values (3, "Piracicaba", "Holambra", "Sandra Silva", "Honda City", "DAU6188", "140", "2022-10-05", "2022-10-06");
insert into viagem values (4, "Ubatuba", "Campos de Jordão", "Manuela Dantas", "Toyota Etios", "IAP2750", "150", "2022-10-07", "2022-10-08");
insert into viagem values (5, "Guarujá", "São Pedro", "João Júnior", "Honda Fit", "NBA2805", "160", "2022-10-09", "2022-10-10");
insert into viagem values (6, "Sorocaba", "Campos de Jordão", "Elon Musk", "Chevrolet Camaro", "IZS2188", "170", "2022-10-11", "2022-10-12");
insert into viagem values (7, "Itu", "Holambra", "João Júnior", "Toyota Corolla", "COH7005", "180", "2022-10-13", "2022-10-14");
insert into viagem values (8, "Piracicaba", "São Roque", "Manuela Dantas", "Honda City", "DAU6188", "190", "2022-10-15", "2022-10-16");
insert into viagem values (9, "Ubatuba", "Boituva", "Sandra Silva", "Honda Fit", "NBA2805", "140", "2022-10-17", "2022-10-18");
insert into viagem values (10, "Sorocaba", "São Roque", "Toguro dos Santos", "Chevrolet Camaro", "IZS2188", "120", "2022-10-19", "2022-10-20"); 

insert into condutor values (1, "Elon Musk", 36, "38218550000");
insert into condutor values (2, "Toguro dos Santos", 32, "45612324836");
insert into condutor values (3, "Sandra Silva", 24, "75408668533");
insert into condutor values (4, "Manuela Dantas", 26, "730626554445");
insert into condutor values (5, "João Júnior", 26, "0");

insert into cidadeOrigem values (1, "Sorocaba", 700000, "SP");
insert into cidadeOrigem values (2, "Itu", 400000, "SP");
insert into cidadeOrigem values (3, "Piracicaba", 100000, "SP");
insert into cidadeOrigem values (4, "Ubatuba", 200000, "SP");
insert into cidadeOrigem values (5, "Guarujá", 250000, "SP");

insert into cidadeDestino values (1, "Boituva", 150000, "SP");
insert into cidadeDestino values (2, "São Roque", 80000, "SP");
insert into cidadeDestino values (3, "Holambra", 260000, "SP");
insert into cidadeDestino values (4, "Campos de Jordão", 130000, "SP");
insert into cidadeDestino values (5, "São Pedro", 330000, "SP");

insert into veiculo values (1, 1, "Toyota Etios", "IAP2750");
insert into veiculo values (2, 2, "Toyota Corolla", "COH7005");
insert into veiculo values (3, 3,  "Honda City", "DVU6188");
insert into veiculo values (4, 2, "Honda Fit", "NBA2805");
insert into veiculo values (5, 4, "Chevrolet Camaro", "IZS2188");

/*7
CREATE VIEW viagens AS SELECT * FROM viagem; 
*/

/*8
select idViagem, CidadeOrigem, CidadeDestino, distancia from viagem;
*/

/*10
select * from condutor where cnh = 0
*/