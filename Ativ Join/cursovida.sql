create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint auto_increment,
tipo varchar(20) not null,
vagas int not null,
primary key (id)
);

INSERT INTO tb_categoria (tipo, vagas) VALUES ("EAD",50);
INSERT INTO tb_categoria (tipo, vagas) VALUES ("Presencial", 30);

select * from tb_categoria;

create table tb_curso (
id bigint auto_increment,
nome varchar (255) not null,
dataInicio date,
dataFim date,
precoMensal decimal(6,2) not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

INSERT INTO tb_curso (nome, dataInicio, dataFim, precoMensal, categoria_id) VALUES ("Curso JAVA Expert Completão", "2022-01-01", "2022-07-01", 450.00,1);
INSERT INTO tb_curso (nome, dataInicio, dataFim, precoMensal, categoria_id) VALUES ("Curso JAVA iniciante", "2022-01-01", "2022-07-01", 65.00,2);
INSERT INTO tb_curso (nome, dataInicio, dataFim, precoMensal, categoria_id) VALUES ("Lógica de Programação Pro expert", "2022-04-15", "2022-08-20", 425.00,1);
INSERT INTO tb_curso (nome, dataInicio, dataFim, precoMensal, categoria_id) VALUES ("Lógica de Programação Intermediário", "2022-04-15", "2022-09-20", 62.00,2);

select * from tb_curso;


select * from tb_curso where precoMensal > 50;


select * from tb_curso where precoMensal between 3 and 60;


select * from tb_curso where nome like "%j%";


select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id;


select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id where tb_categoria.id = 2;