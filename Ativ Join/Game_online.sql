create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id bigint not null auto_increment,
classe varchar(50) not null,
resistencia int not null,
primary key (id)
);

insert into tb_classe (classe, resistencia) VALUES ("Mago",5);
insert into tb_classe (classe, resistencia) VALUES ("Tanque",10);
insert into tb_classe (classe, resistencia) VALUES ("Assassino",6);
insert into tb_classe (classe, resistencia) VALUES ("Atirador",3);
insert into tb_classe (classe, resistencia) VALUES ("Lutador",7);

create table tb_personagem(
id bigint auto_increment,
nome varchar(100) not null,
habilidade varchar(50) not null,
poderAtaq bigint not null,
poderDef bigint not null,
classe_id bigint,
primary key (id),
foreign key (classe_id) references tb_classe (id) 
);

insert into tb_personagem (nome, habilidade, poderAtaq, poderDef, classe_id) VALUES ("Morgana", "Ligação das Trevas", 7000,6000,1);
insert into tb_personagem (nome, habilidade, poderAtaq, poderDef, classe_id) VALUES ("Blizcrank", "Puxão Biônico",4000,7000,2);
insert into tb_personagem (nome, habilidade, poderAtaq, poderDef, classe_id) VALUES ("Teemo","Dardo Ofuscante",9000,2000,3);
insert into tb_personagem (nome, habilidade, poderAtaq, poderDef, classe_id) VALUES ("Jinx","Super Miga Míssil da Morte!", 10000,2000,4);
insert into tb_personagem (nome, habilidade, poderAtaq, poderDef, classe_id) VALUES ("Ekko","Cronoquebra",8000,8000,5);
insert into tb_personagem (nome, habilidade, poderAtaq, poderDef, classe_id) VALUES ("Jhin","Aclamação",10000,2000,4);
insert into tb_personagem (nome, habilidade, poderAtaq, poderDef, classe_id) VALUES ("Nautilus","Ira do Titã",3000,9000,2);
insert into tb_personagem (nome, habilidade, poderAtaq, poderDef, classe_id) VALUES ("Viktor","Tempestade do Caos",8000,4000,1);

select * from tb_personagem;

select * from tb_personagem where poderAtaq > 2000;

select * from tb_personagem where poderDef between 1000 and 2000;

select * from tb_personagem where nome like "%c%";

select tb_personagem.nome, tb_personagem.habilidade, tb_personagem.poderAtaq, tb_personagem.poderDef,
 tb_classe.classe, tb_classe.resistencia from tb_personagem inner join 
 tb_classe on tb_classe.id = tb_personagem.classe_id;

select tb_personagem.nome, tb_personagem.habilidade, tb_personagem.poderAtaq, tb_personagem.poderDef,
 tb_classe.classe, tb_classe.resistencia from tb_personagem right join 
 tb_classe on tb_classe.id = tb_personagem.classe_id where tb_classe.id = 1;