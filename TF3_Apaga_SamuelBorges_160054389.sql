-- ---------- Trabalho Final  ----------
--
--         SCRIPT DE DELEÇÃO (DDL)
--
-- Data Criacao ...........: 23/10/2021
-- Autor(es) ..............: Samuel Borges e Nathan Serra 
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: SamuelBorges
--
-- Ultimas Alteracoes
--   27/10/2021 => Adiciona remoção de Usuários e Perfis
--
-- PROJETO => 01 Base de Dados
--         => 03 Usuários
--         => 03 Perfis
--         => 11 Tabelas  
--
-- ---------------------------------------------------------

-- BASE DE DADOS
use SamuelBorges;

-- TABELAS
DROP TABLE APLICACAO;

DROP TABLE AGROTOXICO;

DROP TABLE TIPO_AGROTOXICO;

DROP TABLE SAFRA;

DROP TABLE VEGETAL;

DROP TABLE TALHAO;

DROP TABLE supervisiona;

DROP TABLE TECNICO;

DROP TABLE telefone;

DROP TABLE AGRICULTOR;

DROP TABLE PROPRIEDADE;

-- USUARIOS

DROP USER 'admin','kakashi_hatake','jorge_barroso';

-- PERFIS

DROP ROLE  'administrador', 'tecnico', 'agricultor';

FLUSH PRIVILEGES;
