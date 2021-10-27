-- ---------- Trabalho Final  ----------
--
--         SCRIPT DE POPULAÇÃO (DML)
--
-- Data Criacao ...........: 23/10/2021
-- Autor(es) ..............: Samuel Borges e Nathan Serra 
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: SamuelBorges
--
--
-- PROJETO => 01 Base de Dados
--         => 11 Tabelas
--
-- ---------------------------------------------------------

-- BASE DE DADOS
use SamuelBorges;

-- TABELAS
INSERT INTO PROPRIEDADE (setor, rua, numero, nome) VALUES
	('Setor Nordeste','Rua do Limoeiro',5,'Alegria de Viver'),
    ('Setor de Chacaras','Rua das Alcaparras', 45, 'Bom Recanto'),
    ('Setor Norte', 'Rua João Da Silva', 39, 'Jabuti Alegre'),
    ('Setor Sul', 'Rua Maria Machado', 53, 'Jorge Neto'),
    ('Setor Leste', 'Rua Abobrinha', 42, 'Tilápia Saltitante');

INSERT INTO AGRICULTOR (cpf, nome, dataNascimento, idPropriedade) VALUES
	(22233344455, 'Naruto Uzumaki', '1997-05-20', 1),
    (33344455566, 'Jorge Barroso', '1985-07-25', 2),
    (44455566677, 'Tony Gordo', '1970-03-12', 3),
    (55566677788, 'Márcio Palmeira', '2001-09-22', 4),
    (66677788899, 'Homero Brito',  '1990-12-10', 5);

INSERT INTO telefone (telefone, cpf) VALUES
	(61988889555, 22233344455),
    (61999223344, 33344455566),
    (61981615555, 44455566677),
    (61940028922, 55566677788),
    (61908009923, 66677788899);

INSERT INTO TECNICO (nomeCompleto) VALUES
	('Kakashi Hatake'),
    ('LeBron James'),
    ('Pedrinho Matador'),
    ('Alec Baldwin'),
    ('Carlos Alberto de Nobrega');

INSERT INTO supervisiona (idTecnico, idPropriedade) VALUES
	(1,1),
    (2,2),
    (3,3),
    (4,4),
    (5,5);

INSERT INTO TALHAO (numero, idPropriedade) VALUES
	(4 ,1),
    (6 ,2),
    (17 ,3),
    (23 ,4),
    (15 ,5);

INSERT INTO VEGETAL (nome) VALUES
	('Abóbora Japonesa'),
    ('Tomate Cereja'),
    ('Morango de Pescoço'),
    ('Banana da Terra'),
    ('Maçã Tilápia');

INSERT INTO SAFRA (dataPlantio, dataColheita, idTalhao, idVegetal) VALUES
	('2021-05-05', null, 1, 1),
    ('2020-02-24', '2020-04-28', 2, 2),
    ('2021-04-10', '2021-07-02', 3, 3),
    ('2021-07-30', null, 4, 4),
    ('2021-01-03', '2021-03-30', 5, 5);

INSERT INTO TIPO_AGROTOXICO (nome) VALUES
	('Fungicida'),
    ('Herbicida'),
    ('Inseticida'),
    ('Acaricida'),
    ('Rodenticidas');

INSERT INTO AGROTOXICO (nome, periodoCarencia, idTipoAgrotoxico) VALUES 
	('Forth Pronto Uso', 5, 1),
    ('Glifomato Lifosato Insetimax', 7,2 ),
    ('Neen Spray Dimy', 10, 3),
    ('Upward Concentrado', 14, 4),
    ('Racumin Pó', 8, 5);

INSERT INTO APLICACAO (dataAplicacao, foto, dosagem, idSafra, idAgrotoxico) VALUES
	('2021-07-10', x'0101', null, 1, 1),
    ('2020-03-15', x'1101', '0.825', 2, 2),
    ('2021-05-22', x'0007', null, 3, 3),
    ('2021-08-24', x'0808', '20.125', 4, 4),
    ('2021-02-08', x'0220', '800.025', 5, 5);

