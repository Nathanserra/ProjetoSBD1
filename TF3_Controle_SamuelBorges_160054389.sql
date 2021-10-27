-- ---------- Trabalho Final  ----------
--
--         SCRIPT DE CONTROLE (DDL)
--
-- Data Criacao ...........: 26/10/2021
-- Autor(es) ..............: Samuel Borges e Nathan Serra 
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: SamuelBorges
--
--
-- PROJETO => 01 Base de Dados
--         => 03 Usuários
--         => 03 Perfis
--         => 11 Tabelas
--
-- ---------------------------------------------------------

-- BASE DE DADOS
use SamuelBorges;

-- PERFIS
CREATE ROLE 'administrador';

CREATE ROLE 'tecnico';

CREATE ROLE 'agricultor';

-- USUARIOS
CREATE USER 'admin' IDENTIFIED BY 'Lalala123@';

CREATE USER 'kakashi_hatake' IDENTIFIED BY 'sh4ring4n';

CREATE USER 'jorge_barroso' IDENTIFIED BY 'Mortadela1';

-- PRIVILEGIOS
GRANT ALL ON SamuelBorges TO 'administrador';

GRANT SELECT, INSERT, UPDATE, DELETE ON SamuelBorges.* to 'tecnico';

GRANT SELECT on SamuelBorges.* to 'agricultor';

GRANT INSERT, UPDATE, DELETE ON SamuelBorges.TALHAO TO 'agricultor';

GRANT INSERT, UPDATE, DELETE ON SamuelBorges.APLICACAO TO 'agricultor';

GRANT INSERT, UPDATE ON SamuelBorges.SAFRA TO 'agricultor';

GRANT 'administrador' TO 'admin';
SET DEFAULT ROLE 'administrador' TO 'admin';

GRANT 'tecnico' TO 'kakashi_hatake';
SET DEFAULT ROLE 'tecnico' TO 'kakashi_hatake';

GRANT 'agricultor' TO 'jorge_barroso';
SET DEFAULT ROLE 'agricultor' TO 'jorge_barroso';

FLUSH PRIVILEGES;


