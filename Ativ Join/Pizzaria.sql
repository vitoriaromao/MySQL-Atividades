create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categorias(
id bigint not null auto_increment,
tipo varchar(255) not null,
massa varchar(255) not null,
primary key (id)
);

INSERT INTO tb_categoria (tipo, massa) VALUES ("Salgada", "Com borda recheada de Catupiry");
INSERT INTO tb_categoria (tipo, massa) VALUES ("Salgada", "Sem borda recheada");
INSERT INTO tb_categoria (tipor, massa) VALUES ("Salgada", "Com borda recheada de cheddar");
INSERT INTO tb_categoria (tipo, massa) VALUES ("Doce", " Com borda recheada de chocolate");
INSERT INTO tb_categoria (tipo, massa) VALUES ("Doce", " Sem borda recheada");

create table tb_produto (
id bigint not null auto_increment,
recheio varchar (100) not null,
preco decimal (5,2) not null,
tamanho varchar (100) not null,
quantidade int not null,
primary key (id),
foreign key (categoria_id)  references tb_categoria (id)
);

insert into tb_produto (recheio,preco,tamanho,quantidade,categoria_id) values ("Calabresa", 55.00, "8 pedaços", 1,1);
insert into tb_produto (recheio,preco,tamanho,quantidade,categoria_id) values ("Portuguesa", 45.00, "4 pedaços", 1,3);
insert into tb_produto (recheio,preco,tamanho,quantidade,categoria_id) values ("Á moda da casa", 85.00, "12 pedaços", 1,2);
insert into tb_produto (recheio,preco,tamanho,quantidade,categoria_id) values ("Chocolate com morango", 60.00, "8 pedaços", 2,5);
insert into tb_produto (recheio,preco,tamanho,quantidade,categoria_id) values ("Banana com canela", 29.00, "2 pedaços", 1,4);

select * from tb_pizza;

select * from tb_pizza where preco > 45.00;

select * from tb_pizza where preco between 29.00 and 60.00;

select * from tb_pizza where recheio like "%c%";

select tb_pizza.recheio, tb_pizza.preco, tb_pizza.tamanho, 
tb_pizza.quantidade, tb_categoria.tipo, tb_categoria.massa
from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id; 

select tb_pizza.recheio, tb_pizza.preco, tb_pizza.tamanho, tb_categoria.tipo, 
tb_categoria.massa from tb_pizza inner join tb_categoria
on tb_categoria.id = tb_pizza.categoria_id where tb_categoria.id = 2;















































