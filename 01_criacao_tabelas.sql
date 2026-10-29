
-- Banco de dados: Sistema de Gestao de Funcionarios

CREATE DATABASE IF NOT EXISTS LABFUNCAO;
USE LABFUNCAO;

-- Tabela departamento
CREATE TABLE IF NOT EXISTS departamento (
    cd_departamento INT NOT NULL AUTO_INCREMENT,
    nm_departamento VARCHAR(45) NOT NULL,
    vl_orcamento_departamento DECIMAL(8,2) NOT NULL,
    dt_criacao DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (cd_departamento)
);

-- Tabela cargo
CREATE TABLE IF NOT EXISTS cargo (
    cd_cargo INT NOT NULL AUTO_INCREMENT,
    nm_cargo VARCHAR(45) NOT NULL,
    dt_criacao DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (cd_cargo)
);

-- Tabela funcionario
CREATE TABLE IF NOT EXISTS funcionario (
    cd_funcionario INT NOT NULL AUTO_INCREMENT,
    nm_funcionario VARCHAR(45) NOT NULL,
    email_funcionario VARCHAR(45) NOT NULL,
    cd_cpf_funcionario VARCHAR(45) NOT NULL,
    vl_salario_funcionario DECIMAL(8,2) NOT NULL,
    idade_funcionario INT NOT NULL,
    cd_departamento INT NOT NULL,
    cd_cargo INT NOT NULL,
    dt_criacao DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (cd_funcionario),

    CONSTRAINT fk_funcionario_departamento
        FOREIGN KEY (cd_departamento)
        REFERENCES departamento (cd_departamento),

    CONSTRAINT fk_funcionario_cargo1
        FOREIGN KEY (cd_cargo)
        REFERENCES cargo (cd_cargo)
);

-- Tabela auditoria
CREATE TABLE IF NOT EXISTS auditoria (
    cd_auditoria INT NOT NULL AUTO_INCREMENT,
    dt_auditoria DATE NOT NULL,
    usuario_bd VARCHAR(45) NOT NULL,
    mensagem VARCHAR(100) NOT NULL,
    PRIMARY KEY (cd_auditoria)
);
