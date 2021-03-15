CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categoria(
	idcategoria BIGINT NOT NULL AUTO_INCREMENT,
	docesalgado VARCHAR(255),
	borda VARCHAR(255),
    preco REAL,
    PRIMARY KEY(idcategoria)
);

INSERT INTO tb_categoria(docesalgado, borda, preco) VALUES
	("Doce", "Borda de Doce de Leite", 46.99),
    ("Salgado", "Borda de Catupiry", 38.99),
    ("Salgado", "Sem borda", 25.99);
    

CREATE TABLE tb_pizza(
	id BIGINT NOT NULL AUTO_INCREMENT,
    sabor VARCHAR(255),
    tamanho BIGINT,
    formato VARCHAR(255),
    vegano BOOLEAN,
    categoria BIGINT,
    FOREIGN KEY(categoria) REFERENCES tb_categoria(idcategoria),
    PRIMARY KEY(id)
);

INSERT INTO tb_pizza (sabor, tamanho, formato, vegano, categoria) VALUES 
	("Calabresa", 12, "Redonda", FALSE, 3),
    ("Mussarela", 16, "Quadrada", TRUE, 2),
    ("Portuguesa", 16, "Redonda", FALSE, 2),
    ("Pepperoni", 16, "Quadrada", FALSE, 3),
    ("Atum", 12, "Quadrada", FALSE, 2),
    ("Beijinho", 12, "Quadrada", FALSE, 1),
    ("Brigadeiro", 12, "Redonda", FALSE, 1),
    ("Prestígio", 16, "Quadrada", TRUE, 1);
    
SELECT *FROM tb_pizza INNER JOIN tb_categoria ON tb_categoria.idcategoria = tb_pizza.categoria;
SELECT *FROM tb_pizza INNER JOIN tb_categoria ON tb_categoria.idcategoria = tb_pizza.categoria WHERE (preco>45);
SELECT *FROM tb_pizza INNER JOIN tb_categoria ON tb_categoria.idcategoria = tb_pizza.categoria WHERE docesalgado LIKE "DOCE";
SELECT *FROM tb_pizza INNER JOIN tb_categoria ON tb_categoria.idcategoria = tb_pizza.categoria WHERE (preco>29 AND preco<60);
SELECT *FROM tb_pizza INNER JOIN tb_categoria ON tb_categoria.idcategoria = tb_pizza.categoria WHERE sabor LIKE "%C%";
