drop database if exists Faculdade;
create database Faculdade;
use Faculdade;
create table Alunos (
	id				INT,
    RA				CHAR(6),
    nome			VARCHAR(60),
    data_nasc		DATE,
    endereco		VARCHAR(60),
    email			VARCHAR(60)
    );
insert into Alunos (id, RA, nome, data_nasc, endereco, email) 
	values (1, 222349, 'Mateus Maranhão', '2004-02-14', 'Rua Gregório Ramos dos Santos, 518, Santa Cecília' , '222349@facens.br');
    
select * from Alunos