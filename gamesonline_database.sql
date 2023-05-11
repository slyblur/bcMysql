create database db_generation_game_online;

use db_generation_game_online;

create table tb_classes (
		id bigint auto_increment,
        classe varchar (25) not null,
        hp_inicial int not null,
        mana_inicial int not null, 
        primary key (id)		
);


create table tb_personagens (
		id bigint auto_increment,
        nome varchar(25) not null,
        ataque bigint not null,
        defesa bigint not null,
        especialidade varchar(25),
        tipo_de_combate varchar(25),
        FOREIGN KEY (id_classes) references tb_classes(id)
);

insert into tb_classes (classe, hp_inicial, mana_inicial) values ("cavalaria",10,12);
insert into tb_classes (classe, hp_inicial, mana_inicial) values ("arquearia",8,16);
insert into tb_classes (classe, hp_inicial, mana_inicial) values ("infantaria",10,20);
insert into tb_classes (classe, hp_inicial, mana_inicial) values ("mercenario",11,13);
insert into tb_classes (classe, hp_inicial, mana_inicial) values ("alquimia",9,16);

insert into tb_personagens (nome, ataque, defesa, especialidade, tipo_de_combate, id_classes) values ("Casca", 8000, 3000, "fisico", "corpo-a-corpo");
insert into tb_personagens (nome, ataque, defesa, especialidade, tipo_de_combate, id_classes) values ("Griffith",10000, 6000,"magico","longo-alcance");
insert into tb_personagens (nome, ataque, defesa, especialidade, tipo_de_combate, id_classes) values ("Guts",21,15000, 10000,"corpo-a-corpo");
insert into tb_personagens (nome, ataque, defesa, especialidade, tipo_de_combate, id_classes) values ("Judeauc",5000, 2000,"fisico","corpo-a-corpo");
insert into tb_personagens (nome, ataque, defesa, especialidade, tipo_de_combate, id_classes) values ("Rickerto",3000, 1500,"fisico","longo-alcance");
insert into tb_personagens (nome, ataque, defesa, especialidade, tipo_de_combate, id_classes) values ("Corkus",4000, 4000,"fisico","corpo-a-corpo");
insert into tb_personagens (nome, ataque, defesa, especialidade, tipo_de_combate, id_classes) values ("Irvine",50000, 20000,"magico", "longo-alcance");
insert into tb_personagens (nome, ataque, defesa, especialidade, tipo_de_combate, id_classes) values ("Zodd Nosferatu",100000, 50000,"fisico","corpo-a-corpo");

alter table tb_personagens ADD CONSTRAINT fk_classes_personagens FOREIGN KEY (personagens_id) references tb_personagens(id);
 
SELECT * from tb_personagens where ataque >= 2000;

SELECT * from tb_personagens where defesa between 1000 and 2000;

SELECT * from tb_personagens where nome like "%c%";

SELECT * from tb_personagens 
inner join tb_classes on tb_classes.id = tb_personagens.classes_id;

SELECT nome 
from tb_personagens 
inner join tb_classes 
on tb_classes.id = tb_personagens.id_classes
where tb_classes.classe = "cavalaria"; 
