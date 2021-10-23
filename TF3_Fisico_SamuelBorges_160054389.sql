-- ---------- Trabalho Final  ----------
--
--         SCRIPT DE CRIACAO (DDL)
--
-- Data Criacao ...........: 21/03/2018
-- Autor(es) ..............: Samuel Borges e Nathan Serra 
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: TF3
--
--
-- PROJETO => 01 Base de Dados
--         => 11 Tabelas
--
-- ---------------------------------------------------------

-- BASE DE DADOS
CREATE DATABASE IF NOT EXISTS TF3;

use TF3;

-- TABELAS

CREATE TABLE PROPRIEDADE (
	idPropriedade INT AUTO_INCREMENT NOT NULL,
    setor VARCHAR(20) NULL,
    rua VARCHAR(20) NULL,
    numero INT NULL,
    nome VARCHAR(50) NOT NULL,
    CONSTRAINT PROPRIEDADE_PK PRIMARY KEY (idPropriedade)
)engine=InnoDB, auto_increment=1;

CREATE TABLE AGRICULTOR (
	cpf BIGINT(11) NOT NULL,
    nome VARCHAR(50) NOT NULL,
    dataNascimento DATE NOT NULL,
    idPropriedade INT NOT NULL,
    CONSTRAINT AGRICULTOR_PK PRIMARY KEY (cpf),
    CONSTRAINT AGRICULTOR_PROPRIEDADE_FK FOREIGN KEY (idPropriedade) REFERENCES PROPRIEDADE (idPropriedade)
)engine=InnoDB;

CREATE TABLE telefone (
    telefone BIGINT(11) NOT NULL,
    cpf BIGINT(11) NOT NULL,
    CONSTRAINT telefone_AGRICULTOR_FK FOREIGN KEY (cpf) REFERENCES AGRICULTOR (cpf)
)engine=InnoDB;

CREATE TABLE TECNICO (
	idTecnico INT AUTO_INCREMENT NOT NULL,
    nomeCompleto VARCHAR(50) NOT NULL,
    CONSTRAINT TECNICO_PK PRIMARY KEY (idTecnico)
)engine=InnoDB, auto_increment=1;

CREATE TABLE supervisiona (
	idPropriedade INT NOT NULL,
    idTecnico INT NOT NULL,
    CONSTRAINT supervisiona_PROPRIEDADE_FK FOREIGN KEY (idPropriedade) REFERENCES PROPRIEDADE (idPropriedade),
    CONSTRAINT supervisiona_TECNICO_FK FOREIGN KEY (idTecnico) REFERENCES TECNICO (idTecnico)
)engine=InnoDB;

CREATE TABLE TALHAO (
	idTalhao INT AUTO_INCREMENT NOT NULL,
    numero INT NOT NULL,
    idPropriedade INT NOT NULL,
    CONSTRAINT TALHAO_PK PRIMARY KEY (idTalhao),
    CONSTRAINT TALHAO_PROPRIEDADE_FK FOREIGN KEY (idPropriedade) REFERENCES PROPRIEDADE (idPropriedade)
)engine=InnoDB, auto_increment=1;

CREATE TABLE VEGETAL (
	idVegetal INT AUTO_INCREMENT NOT NULL,
    nome VARCHAR(30) NOT NULL,
    CONSTRAINT VEGETAL_PK PRIMARY KEY (idVegetal)
)engine=InnoDB, auto_increment=1;

CREATE TABLE SAFRA (
	idSafra INT AUTO_INCREMENT NOT NULL,
	dataPlantio DATE NOT NULL,
    dataColheita DATE NULL,
    idTalhao INT NOT NULL,
    idVegetal INT NOT NULL,
    CONSTRAINT SAFRA_PK PRIMARY KEY (idSafra),
    CONSTRAINT SAFRA_TALHAO_FK FOREIGN KEY (idTalhao) REFERENCES TALHAO (idTalhao),
    CONSTRAINT SAFRA_VEGETAL_FK FOREIGN KEY (idVegetal) REFERENCES VEGETAL (idVegetal)
)engine=InnoDB, auto_increment=1;

CREATE TABLE TIPO_AGROTOXICO (
	idTipoAgrotoxico INT AUTO_INCREMENT NOT NULL,
    nome VARCHAR(20) NOT NULL,
    CONSTRAINT TIPO_AGROTOXICO_PK PRIMARY KEY (idTipoAgrotoxico)
)engine=InnoDB, auto_increment=1;

CREATE TABLE AGROTOXICO (
	idAgrotoxico INT AUTO_INCREMENT NOT NULL,
    nome VARCHAR(50) NOT NULL,
    periodoCarencia INT NOT NULL,
    idTipoAgrotoxico INT NOT NULL,
    CONSTRAINT AGROTOXICO_PK PRIMARY KEY (idAgrotoxico),
    CONSTRAINT AGROTOXICO_TIPO_AGROTOXICO_FK FOREIGN KEY (idTipoAgrotoxico) REFERENCES TIPO_AGROTOXICO (idTipoAgrotoxico)
)engine=InnoDB, auto_increment=1;

CREATE TABLE APLICACAO (
	idAplicacao INT AUTO_INCREMENT NOT NULL,
    dataAplicacao DATE NOT NULL,
    foto BLOB NOT NULL,
    idSafra INT NOT NULL,
    idAgrotoxico INT NULL,
    CONSTRAINT APLICACAO_PK PRIMARY KEY (idAplicacao),
    CONSTRAINT APLICACAO_SAFRA_FK FOREIGN KEY (idSafra) REFERENCES SAFRA (idSafra),
    CONSTRAINT APLICACAO_AGROTOXICO FOREIGN KEY (idAgrotoxico) REFERENCES AGROTOXICO (idAgrotoxico)
)engine=InnoDB, auto_increment=1;


