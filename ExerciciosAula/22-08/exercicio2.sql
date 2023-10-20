drop database if exists Empresa;
create database Empresa;
use Empresa;
create table Colaboradores (
	id					INT,
    identificacao		CHAR(6),
    nome				VARCHAR(60),
    cpf					CHAR(14),
    cargo				VARCHAR(60),
    salario				FLOAT
    );
insert into Colaboradores (id, identificacao, nome, cpf, cargo, salario) 
	values (1, 123456, 'Pedro Sobral', '252.593.288-41', 'Gestor de negócios' , 5300.00),
		   (2, 654321, 'Pedro Sobral', '252.593.288-41', 'Gestor de negócios' , 5300.00),
           (3, 321456, 'Pedro Sobral', '252.593.288-41', 'Gestor de negócios' , 5300.00),
           (4, 123456, 'Pedro Sobral', '252.593.288-41', 'Gestor de negócios' , 5300.00),
           (5, 123456, 'Pedro Sobral', '252.593.288-41', 'Gestor de negócios' , 5300.00);
    
select * from Colaboradores