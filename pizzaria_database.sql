create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categorias (
	id int AUTO_INCREMENT not null,
    tamanho VARCHAR(25),
    sabor varchar(25),
    vegetariana boolean,
    primary key(id)
);

create table tb_pizzas (
	id INT AUTO_INCREMENT not null,
    sabor VARCHAR(25) not null,
    preco DECIMAL not null,
    massa char,
    borda_recheada boolean,    
    primary key (id),
    CONSTRAINT fk_categorias foreign key(categorias_id) REFERENCES tb_categorias(id)
    
);

insert into tb_categorias (tamanho, sabor, vegetariana) values ("grande-8","doce", true);
insert into tb_categorias (tamanho, sabor, vegetariana) values ("pequena-4","salgada", true);
insert into tb_categorias (tamanho, sabor, vegetariana) values ("broto","agridoce", false);
insert into tb_categorias (tamanho, sabor, vegetariana) values ("esfiha","diet", true);
insert into tb_categorias (tamanho, sabor, vegetariana) values ("superpizza","apimentada", false);

insert into tb_pizzas (sabor, preco, massa, borda_recheada, id_categorias) values ("marguerita", 39.90, 'F', true);
insert into tb_pizzas (sabor, preco, massa, borda_recheada, id_categorias) values ("calabresa", 49.90, 'G', true);
insert into tb_pizzas (sabor, preco, massa, borda_recheada, id_categorias) values ("atum", 39.90, 'G', true);
insert into tb_pizzas (sabor, preco, massa, borda_recheada, id_categorias) values ("vegetariana", 29.90, 'F', true);
insert into tb_pizzas (sabor, preco, massa, borda_recheada, id_categorias) values ("mussarela", 29.90, 'F', true);
insert into tb_pizzas (sabor, preco, massa, borda_recheada, id_categorias) values ("toscana", 29.90, 'F', false);
insert into tb_pizzas (sabor, preco, massa, borda_recheada, id_categorias) values ("da casa", 59.90, 'F', true);
insert into tb_pizzas (sabor, preco, massa, borda_recheada, id_categorias) values ("portuguesa", 49.90, 'G', false);
insert into tb_pizzas (sabor, preco, massa, borda_recheada, id_categorias) values ("carne seca", 69.90, 'F', true);
insert into tb_pizzas (sabor, preco, massa, borda_recheada, id_categorias) values ("camarao", 89.90, 'G', false);


SELECT * FROM tb_pizzas where preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 and 100.00;

SELECT * FROM tb_pizzas WHERE sabor like "%m%"; 

SELECT * FROM tb_pizzas INNER JOIN tb_categorias;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_categorias.id = tb_pizzas.id
WHERE tb_categorias.vegetariana = true;


#comentario: tb_classes.id = tb_personagens.id_classes