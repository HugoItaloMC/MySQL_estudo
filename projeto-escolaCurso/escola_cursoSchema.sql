# New Schema
create schema `escola_curso`;

# New Tables :
  #CREATE TABLE `escola_curso`.`notas` ( 
  #  `id_notas` INT NOT NULL AUTO_INCREMENT,   
  #  PRIMARY KEY (`id_notas`));
# OBS :  Podemos reaproveita o bloco de criacão de para criar novas tables

# Alter tables : 

ALTER TABLE `escola_curso`.`alunos` 
ADD COLUMN `nome` VARCHAR (100) NOT NULL AFTER `id_alunos`,
ADD COLUMN `data_nascimento` DATE NOT NULL AFTER `nome`,
ADD COLUMN `endereco` VARCHAR (255) NOT NULL AFTER `data_nascimento`,
ADD COLUMN `cidade` VARCHAR (100) NOT NULL AFTER `endereco`,
ADD COLUMN `estado` VARCHAR (2) NOT NULL AFTER `cidade`,
ADD COLUMN `cpf` VARCHAR (11) NOT NULL AFTER `estado`;

#    Table cursos :
ALTER TABLE `escola_curso`.`cursos`
ADD COLUMN `nome` VARCHAR (100) NOT NULL AFTER `id_cursos`;


# Tabela notas

ALTER TABLE `escola_curso`.`notas`
ADD COLUMN `descricaoAtividade` VARCHAR(100) NOT NULL AFTER `id_notas`,
ADD COLUMN `valorNota` DECIMAL (5,2) NOT NULL AFTER `descricaoAtividade`;


# Inserir dados em uma tabela : 

# Tabela alunos : 
INSERT INTO `escola_curso`.`alunos`
VALUES (DEFAULT, 'Italo Correia', '1993-07-16', 'Av. Sao Carlos de Almeida, 887', 'Sao Paulo', 'SP', '119876543');


# Alterando dados de uma tabela especificando a coluna :

UPDATE `escola_curso`.`alunos`
SET nome = 'Hugo Italo Magalhaes'
WHERE id_alunos = 1 


