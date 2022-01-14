create database db_rh;

use db_rh;

create table tb_funcionarios (
id bigint auto_increment,
nome varchar (255) not null,
cargo varchar (255) not null,
genero varchar (255) not null,
salario decimal(6,2) not null,
primary key (id)
);

INSERT INTO tb_funcionarios (nome,cargo,genero,salario) VALUES ("Felipe Nogueira", "Chefe de operação", "Masculino" ,3000.00 );
INSERT INTO tb_funcionarios (nome,cargo,genero,salario) VALUES ("Fabiana Costa" , "Supervisora", "Feminino", 9000.00 );
INSERT INTO tb_funcionarios (nome,cargo,genero,salario) VALUES ("Fabiano Costa" , "Supervisor", "Masculino", 8500.00 );
INSERT INTO tb_funcionarios (nome,cargo,genero,salario) VALUES ("Regiana Martins" , "Atendente", "Feminino", 5000.00 );
INSERT INTO tb_funcionarios (nome,cargo,genero,salario) VALUES ("Regiane Martins" , "Estagiária", "Feminino", 1500.00 );

select * from tb_funcionarios where salario > 2000.00;

select * from tb_funcionarios where salario < 2000.00;
