CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classe (
	id_classe VARCHAR(255) UNIQUE,
    habilidade VARCHAR(255),
	skins INT,
    PRIMARY KEY(id_classe)
    );
    
INSERT INTO tb_classe (id_classe, habilidade, skins) VALUES 
	("Mercador","Vendedor nato",2),
    ("Espadachim","Habilidade com espadas",5),
	("Mago","Magia",3);
    
CREATE TABLE tb_personagem (
	id INT AUTO_INCREMENT,
    nome VARCHAR(255),
    ataque INT,
    defesa INT,
    resistencia INT,
    magia INT,
    classe VARCHAR(255),
    PRIMARY KEY(id),
    FOREIGN KEY (classe) REFERENCES tb_classe(id_classe)
);

INSERT INTO tb_personagem (nome, ataque, defesa, resistencia, magia, classe) VALUES
	("Ash",2000,1400,1000,9000, "Mago"),
    ("Kakashi",9000,8000,500,3000, "Espadachim"),
    ("Ryoma",1500,1900,1900,5000, "Mercador"),
    ("Brantc",4000,900,1000,9000, "Espadachim"),
    ("BaCloud",5000,3000,1000,9000, "Mago");
 
SELECT *FROM tb_personagem;
SELECT *FROM tb_personagem WHERE ataque>2000;
SELECT *FROM tb_personagem WHERE defesa>1000 and defesa<2000;
SELECT *FROM tb_personagem WHERE nome LIKE "%c%";
SELECT *FROM tb_personagem INNER JOIN tb_classe on tb_classe.id_classe = tb_personagem.classe;
SELECT *FROM tb_personagem INNER JOIN tb_classe on tb_classe.id_classe = tb_personagem.classe 
WHERE classe LIKE "Espadachim";

