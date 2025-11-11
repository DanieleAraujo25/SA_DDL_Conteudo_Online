-- ==========================================================
-- SISTEMA DE GERENCIAMENTO DE CONTEÚDO ONLINE
-- Estrutura de Tabelas (DDL) - MySQL
-- ==========================================================

-- 1. TABELA: Usuários
CREATE TABLE Usuarios (
    usuario_id INT PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    data_cadastro DATE NOT NULL
);

-- ==========================================================

-- 2. TABELA: Professores
CREATE TABLE Professores (
    professor_id INT PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    especialidade VARCHAR(100) NOT NULL,
    salario_base DECIMAL(10, 2)
);

-- ==========================================================

-- 3. TABELA: Cursos
CREATE TABLE Cursos (
    curso_id INT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL UNIQUE,
    descricao TEXT,
    carga_horaria INT,
    data_lancamento DATE
);

-- ==========================================================

-- 4. TABELA: Aulas
CREATE TABLE Aulas (
    aula_id INT PRIMARY KEY,
    titulo_aula VARCHAR(255) NOT NULL,
    duracao_minutos INT NOT NULL,
    tipo_conteudo VARCHAR(50)
);

-- ==========================================================
-- ALTERAÇÕES DE ESTRUTURA
-- ==========================================================

-- Adicionando nova coluna em Professores
ALTER TABLE Professores
ADD COLUMN email_corporativo VARCHAR(150);

-- Alterando o tipo de dado da coluna carga_horaria na tabela Cursos
ALTER TABLE Cursos
MODIFY COLUMN carga_horaria DECIMAL(5, 2);

-- ==========================================================
-- REMOÇÃO E RECRIAÇÃO DA TABELA Aulas
-- ==========================================================

-- Removendo a tabela Aulas
DROP TABLE IF EXISTS Aulas;

-- Recriando a tabela Aulas
CREATE TABLE Aulas (
    aula_id INT PRIMARY KEY,
    titulo_aula VARCHAR(255) NOT NULL,
    duracao_minutos INT NOT NULL,
    tipo_conteudo VARCHAR(50)
);

-- ==========================================================
-- FIM DO SCRIPT
-- ==========================================================
