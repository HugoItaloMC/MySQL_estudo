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
VALUES (DEFAULT, 'Hector Henrique', '2018-06-28', 'Rua Souza Melo, 443', 'Patos', 'PB', '67852212366');


# Alterando dados de uma tabela especificando a coluna :

UPDATE `escola_curso`.`alunos`
SET nome = 'Hugo Italo Magalhaes'
WHERE id_alunos = 1 

# OBS :  Para deletar uma tabela usamos o comando ' drop  ' em seguida ' table nomeDaTabela '


/*  
 Criando a relacão entre as tabelas, um tabela alunos_cursos com um id_alunos_cursos primary key 
e id_alunos ligada a tabela alunos, id_cursos ligada a tabela cursos,  como chaves estrangeiras.
 Na tabela notas , criamos uma id_ numérica como chave estrangeira id_alunos_cursos 
exe Relacionaento das tabelas logo abaixo : */

CREATE TABLE `escola_curso`.`alunos_cursos` (
  `id_alunos_cursos` INT NOT NULL AUTO_INCREMENT,
  `id_alunos` INT NOT NULL,
  `id_cursos` INT NOT NULL,
  PRIMARY KEY (`id_alunos_cursos`),
  INDEX `fk_id_aluno_idx` (`id_alunos` ASC) VISIBLE,
  INDEX `fk_id_cursos_idx` (`id_cursos` ASC) VISIBLE,
  CONSTRAINT `fk_id_aluno`
    FOREIGN KEY (`id_alunos`)
    REFERENCES `escola_curso`.`alunos` (`id_alunos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_id_cursos`
    FOREIGN KEY (`id_cursos`)
    REFERENCES `escola_curso`.`cursos` (`id_cursos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

# Indexando a tabela notas : 
ALTER TABLE `escola_curso`.`notas` 
ADD COLUMN `id_alunos_cursos` INT NOT NULL AFTER `id_notas`,
ADD INDEX `fk_id_alunos_cursos_idx` (`id_alunos_cursos` ASC) VISIBLE;
;
ALTER TABLE `escola_curso`.`notas` 
ADD CONSTRAINT `fk_id_alunos_cursos`
  FOREIGN KEY (`id_alunos_cursos`)
  REFERENCES `escola_curso`.`alunos_cursos` (`id_alunos_cursos`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;


# Povoando as Tabelas

INSERT INTO `escola_curso`.`alunos_cursos`
VALUES
(DEFAULT, 1,1), -- 1
(DEFAULT, 1,2), -- 2
(DEFAULT, 2,1), -- 3
(DEFAULT, 3,3), -- 4
(DEFAULT, 5,1), -- 5
(DEFAULT, 4,2), -- 6
(DEFAULT, 3,2), -- 7
(DEFAULT, 1, 3); -- 8

INSERT INTO `escola_curso`.`notas`
VALUES
(DEFAULT,1,'Prova 1',29.2),
(DEFAULT,3,'Prova 1',28.5),
(DEFAULT,5,'Prova 1',26.1),
(DEFAULT,2,'Prova 2',30.0),
(DEFAULT,6,'Prova 2',18.2),
(DEFAULT,7,'Prova 2',21.0),
(DEFAULT,4,'Exercicio 3',19.0),
(DEFAULT,8,'Exercicio 3',22.6);