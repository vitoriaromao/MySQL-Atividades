create database db_lojaEletonicos;
use db_lojaEletonicos;

-- Crie uma tabela com 5 atributos dos produtos --
create table tb_produtos(
	id bigint auto_increment,
    nome varchar(30) not null,
    condicao varchar(30) not null,
    quantidade int not null,
    preco decimal (6,2) not null,
    primary key (id)
);

-- Popule esta tabela com até 8 dados -- 
INSERT INTO tb_produtos (nome, condicao, quantidade, preco) VALUES ("Televisão 45' LG ","Usado",7,500.00);
INSERT INTO tb_produtos (nome, condicao, quantidade, preco) VALUES ("Nintendo 64 color","Usado",1,4000.00);
INSERT INTO tb_produtos (nome, condicao, quantidade, preco) VALUES ("Playstation 4","Novo",10,2500.00);
INSERT INTO tb_produtos (nome, condicao, quantidade, preco) VALUES ("Aparelho de som","novo",6=5,1205.00);

-- Faça um select que retorne os produtos com o valor maior que 500 --
select * from tb_produtos where preco > 500.00;

-- Faça um select que retorne os produtos com o valor menor que 500 --
select * from tb_produtos where preco < 500.00;

-- Atualize um dado desta tabela através de uma query de atualização -- 
update tb_produtos set preco = 80.00 where id = 4;