create database db_rh;

use db_rh;

create table tb_colaboradores (
	id bigint auto_increment,
    nome varchar(255) not null,
    idade int,
    sexo char not null,
    area varchar(255)not null,
    salario decimal not null,
    PRIMARY KEY (id)
);

insert into tb_colaboradores (nome, idade, sexo, area, salario) values ("Guts da Silva",25,'M',"soldado",1500.36);
insert into tb_colaboradores (nome, idade, sexo, area, salario) values ("Casca",22,'F',"cavaleiro",2500.78);
insert into tb_colaboradores (nome, idade, sexo, area, salario) values ("Corkus",33,'M',"retaguarda",1200.36);
insert into tb_colaboradores (nome, idade, sexo, area, salario) values ("Pipin",25,'M',"retaguarda",1500.36);
insert into tb_colaboradores (nome, idade, sexo, area, salario) values ("NOSFERATU",100,'M',"elite",10000.20);
insert into tb_colaboradores (nome, idade, sexo, area, salario) values ("Charlotte",18,'F',"realeza",20000.25);

select * from tb_colaboradores where salario >=2000.00;

select * from tb_colaboradores where salario <=2000.00;

update tb_colaboradores set area = "infantaria" where id = 2;

select * from tb_colaboradores;