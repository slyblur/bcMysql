create database db_ecommerce;

use db_ecommerce;

create table tb_produtos (
	id bigint auto_increment, 
    marca varchar(15) not null,
    cor varchar(15),
    preco decimal not null,
    categoria char,
    disponibilidade boolean,
    primary key (id)
);

insert into tb_produtos (marca, cor, preco, categoria, disponibilidade) values ("vans","branco",189.90,'t',true);
insert into tb_produtos (marca, cor, preco, categoria, disponibilidade) values ("supreme","vermelho",79.97,'c',true);
insert into tb_produtos (marca, cor, preco, categoria, disponibilidade) values ("brutal kill","azul",89.90,'c',true);
insert into tb_produtos (marca, cor, preco, categoria, disponibilidade) values ("vomited","cinza",169.90,'b',true);
insert into tb_produtos (marca, cor, preco, categoria, disponibilidade) values ("obey","preto",119.00,'t',false);
insert into tb_produtos (marca, cor, preco, categoria, disponibilidade) values ("sex pot revenge","preto",299.90,'c',true);
insert into tb_produtos (marca, cor, preco, categoria, disponibilidade) values ("CIVARIZE","roxo",259.60,'b',true);
insert into tb_produtos (marca, cor, preco, categoria, disponibilidade) values ("HELLCATPUNKS","darkblue",459.96,'b',false);

select * from tb_produtos;

select * from tb_produtos where preco >= 500;

select * from tb_produtos where preco <= 500;

update tb_produtos set disponibilidade = true where id = 8;

select * from tb_produtos;

update tb_produtos set preco = 599.90 where id = 6;

select preco from tb_produtos where id =6;
