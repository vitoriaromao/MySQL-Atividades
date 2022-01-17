create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;

create table tb_categoria(
id bigint auto_increment,
tipo varchar(255) not null,
ativo boolean not null,
primary key (id)
);

INSERT INTO tb_categoria (tipo, ativo) VALUES ("Hidráulico", true);
INSERT INTO tb_categoria (tipo, ativo) VALUES ("Elétrico", true);
INSERT INTO tb_categoria (tipo, ativo) VALUES ("Borracharia", true);

select * from tb_categoria;

create table tb_produtos (
id bigint auto_increment,
nome varchar (255) not null,
anoModelo int not null,
preco decimal(6,2) not null,
qtProduto int not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

INSERT INTO tb_produtos (nome, anoModelo, preco, qtProduto, categoria_id) VALUES ("Furadeira", 2020, 599.90, 1, 2);
INSERT INTO tb_produtos (nome, anoModelo, preco, qtProduto, categoria_id) VALUES ("Mangueira d'água", 2018, 39.50, 2, 1);
INSERT INTO tb_produtos (nome, anoModelo, preco, qtProduto, categoria_id) VALUES ("Bomba Hidráulica", 2022, 59.70, 1, 1);
INSERT INTO tb_produtos (nome, anoModelo, preco, qtProduto, categoria_id) VALUES ("Transformador BIVOLT", 2019, 55.90, 4, 2);
INSERT INTO tb_produtos (nome, anoModelo, preco, qtProduto, categoria_id) VALUES ("Pneu aro 15", 2021, 189.90, 2, 3);

select * from tb_produtos;


select * from tb_produtos where preco > 50;


select * from tb_produtos where preco between 3 and 60;


select * from tb_produtos where nome like "%c%";


select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;


select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id where tb_categoria.id = 2;