CREATE DATABASE aula3;
USE aula3;
CREATE TABLE cliente(
cpf CHAR(11) NOT NULL,
nasc DATE,
nome VARCHAR(45),
sexo CHAR(1) NOT NULL,
PRIMARY KEY (cpf),
CHECK(sexo IN('m','f')) );




CREATE TABLE veiculo (
cod int AUTO_INCREMENT NOT NULL,
marca VARCHAR(20),
valor DECIMAL(8,2),
cpf_cli CHAR(11),
PRIMARY KEY (cod),
FOREIGN KEY(cpf_cli) REFERENCES cliente(cpf) ON DELETE RESTRICT);


-- inserindo dados tabela cliente:

INSERT INTO cliente(sexo,cpf,nome,nasc)
VALUES ('f','1234','maria','2003/02/22');
select * from cliente;

INSERT INTO cliente 
VALUES ('3456','1987-04-15','joão','m');

INSERT INTO cliente (cpf,sexo)
VALUES ('5678','f');

INSERT INTO cliente (sexo,nome,cpf)
VALUES ('m','pedro','8976');

-- inserindo dados tabela veiculo:
INSERT INTO veiculo (marca,valor,cpf_cli)
VALUES ('toyota',90876.90,'5678');

INSERT INTO veiculo (marca,cpf_cli)
VALUES ('renault','1234');

select * from veiculo;
select * from cliente;

-- atualizar dados
-- update table set coluna=valor where condicao

UPDATE cliente set nome='sofia'
where cpf = '5678';


INSERT INTO veiculo (cod,marca)
VALUES (20,'audi');

INSERT INTO veiculo (marca,valor,cpf_cli)
VALUES ('bmw',120888.92,'5678'),('Vw',79876.33,'1234');


SET sql_safe_updates = 0;
SET sql_safe_updates = 1;

-- APAGAR DADOS: delete
-- delete from tabela where condição

DELETE FROM veiculo WHERE marca ='audi';
DELETE FROM veiculo WHERE marca ='bmw';
DELETE FROM cliente WHERE nome = 'sofia';
DELETE FROM cliente WHERE nome = 'maria';

-- Administração da nossa base e tabelas:
SELECT * FROM cliente;
ALTER TABLE cliente ADD COLUMN endereco VARCHAR(40);
