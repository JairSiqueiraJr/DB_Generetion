CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_personagens(
	id BIGINT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(255),
    Habilidades VARCHAR(255),
    Localidade VARCHAR(255),
    Estilo VARCHAR(255),
    id_champions BIGINT,
    FOREIGN KEY (id_champions) REFERENCES tb_classes(id)
);

CREATE TABLE tb_classes(
	id	BIGINT PRIMARY KEY AUTO_INCREMENT,
    Raça VARCHAR(255),
    Classe VARCHAR(255),
    Pocisionamento VARCHAR(255)
);
SELECT * FROM tb_classes;
SELECT * FROM tb_personagens;

INSERT INTO tb_classes(Raça,Classe,Pocisionamento)VALUES("YODLE", "TANK" , "TOP LANE"); 
INSERT INTO tb_classes(Raça,Classe,Pocisionamento)VALUES("HUMANO", "ATIRADOR" , "BOT LANE"); 
INSERT INTO tb_classes(Raça,Classe,Pocisionamento)VALUES("FADA", "SUPORTE" , "BOT LANE");
INSERT INTO tb_classes(Raça,Classe,Pocisionamento)VALUES("HUMANOIDES", "LUTADORA" , "JUNLGE"); 
INSERT INTO tb_classes(Raça,Classe,Pocisionamento)VALUES("DEMONIO", "ATIRADOR" , "BOT LANE");
INSERT INTO tb_classes(Raça,Classe,Pocisionamento)VALUES("HUMANO", "MAGO" , "MID LANE"); 
INSERT INTO tb_classes(Raça,Classe,Pocisionamento)VALUES("HUMANO", "Assasino" , "MID LANE");

INSERT INTO tb_personagens(Nome,Habilidades,Localidade,Estilo,id_champions)VALUES("GNAR", "DANO FISICO" , "TERRA YORDLES", "RESISTENTE",1 ); 
INSERT INTO tb_personagens(Nome,Habilidades,Localidade,Estilo,id_champions)VALUES("ASHE", "VELOCIDADE ATKK" , "FREIJORD", "CARRY",2 );
INSERT INTO tb_personagens(Nome,Habilidades,Localidade,Estilo,id_champions)VALUES("SORAKA", "AP" , "VASTIDÃO", "UTILITY",3 );
INSERT INTO tb_personagens(Nome,Habilidades,Localidade,Estilo,id_champions)VALUES("LILLIAN", "AP" , "IONIA", "CARRY",4 );
INSERT INTO tb_personagens(Nome,Habilidades,Localidade,Estilo,id_champions)VALUES("KAISA", "DANO FISICO" , "VAZIO", "CARRY",5 );
INSERT INTO tb_personagens(Nome,Habilidades,Localidade,Estilo,id_champions)VALUES("LUX", "AP" , "DEMACIA", "CARRY",6 ); 
INSERT INTO tb_personagens(Nome,Habilidades,Localidade,Estilo,id_champions)VALUES("TALON", "DANO FISICO" , "NOXUS", "CARRY",7 ); 
 
SELECT * FROM tb_personagens WHERE Ataque > 2000;

SELECT * FROM tb_personagens WHERE Defesa > 1000 and Defesa < 2000 ;

SELECT * FROM tb_personagens
WHERE  Nome LIKE 'g%';
 
SELECT * FROM tb_personagens 
inner join tb_classes on tb_classes.id = tb_personagens.id_champions; 

SELECT *  FROM tb_personagens 
inner join tb_classes on tb_classes.id = tb_personagens.id_champions
WHERE tb_classes.Classe = "ATIRADOR";

 
 
 
 

	