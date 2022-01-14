create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categorias (
id bigint not null auto_increment,
descricao varchar (255) not null,
ativo boolean,
primary key (id)
);

Insert into tb_categorias (descricao,ativo) values ("Antibiótico",true);
Insert into tb_categorias (descricao,ativo) values ("Beleza",true);
Insert into tb_categorias (descricao,ativo) values ("Higiene pessoal",true);
Insert into tb_categorias (descricao,ativo) values ("Antialérgico",true);
Insert into tb_categorias (descricao,ativo) values ("Doces",true);

select * from tb_categorias;

create table tb_produtos(
id bigint not null auto_increment,
nome varchar (255) not null,
datacadastro timestamp,
quantidade int,
preco decimal(7,2),
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categorias(id)
);

Insert into tb_produtos(nome, datacadastro, quantidade, preco, categoria_id)
values ("Vichy Sabonete Facial", current_date(), 100, 129.99,2);

Insert into tb_produtos(nome, datacadastro, quantidade, preco, categoria_id)
values ("Alegra D", current_date(), 100, 100.99,4);

Insert into tb_produtos(nome, datacadastro, quantidade, preco, categoria_id)
values ("Desodorante Rexona", current_date(), 100, 12.99,3);

Insert into tb_produtos(nome, datacadastro, quantidade, preco, categoria_id)
values ("Bala Halls Melancia", current_date(), 100, 3.99,5);

Insert into tb_produtos(nome, datacadastro, quantidade, preco, categoria_id)
values ("Amoxicilina", current_date(), 100, 12.99,1);

select*from tb_produtos;

select*from tb_produtos where preco > 50;

select*from tb_produtos where preco between 3 and  50;

select*from tb_produtos where nome like "%A%";

select * from tb_produtos inner join tb_categorias
on tb_categorias.id = tb_produtos.categoria_id;

select * from tb_produtos inner join tb_categorias
on tb_categorias.id = tb_produtos.categoria_id
where tb_categorias.id = 3;













