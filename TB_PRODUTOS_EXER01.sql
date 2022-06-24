CREATE DATABASE db_produtos;
USE db_produtos;

CREATE TABLE tb_produtos(
	id  BIGINT PRIMARY KEY AUTO_INCREMENT,
	produto VARCHAR(255),
    quantidade BIGINT,
    estado VARCHAR(50),
    preco DECIMAL (9,2),
    
    PRIMARY KEY (id)
);

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos(produto, quantidade, estado, preco)VALUES("Celulares", 25, "Novo" , 1250.99);
INSERT INTO tb_produtos(produto, quantidade, estado, preco)VALUES("Notebook", 99, "Novo" , 3200.99);
INSERT INTO tb_produtos(produto, quantidade, estado, preco)VALUES("HEADSET", 42, "Novo" , 120.99);
INSERT INTO tb_produtos(produto, quantidade, estado, preco)VALUES("Teclados", 14, "Novo" , 220.49);
INSERT INTO tb_produtos(produto, quantidade, estado, preco)VALUES("Mouses", 5, "Novo" , 60.00);
INSERT INTO tb_produtos(produto, quantidade, estado, preco)VALUES("Camêra IP", 10, "Novo" , 99.99);
INSERT INTO tb_produtos(produto, quantidade, estado, preco)VALUES("JBL sons", 7, "Novo" , 250.99);
INSERT INTO tb_produtos(produto, quantidade, estado, preco)VALUES("Placa de video RTX 3080ti", 3, "Novo" , 5400.00);

SELECT * FROM tb_produtos WHERE preco > 500;

SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos
SET preco =  6300.00
WHERE id = 8;