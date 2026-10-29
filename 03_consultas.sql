
USE LABFUNCAO;

-- EXERCICIO 1
-- Maior e menor salario dos funcionarios
-- cadastrados em 2026.

SELECT
    MAX(vl_salario_funcionario) AS maior_salario,
    MIN(vl_salario_funcionario) AS menor_salario
FROM funcionario
WHERE YEAR(dt_criacao) = 2026;


-- EXERCICIO 2
-- Soma e media dos salarios dos funcionarios
-- cadastrados em janeiro de 2026.

SELECT
    SUM(vl_salario_funcionario) AS soma_salario,
    AVG(vl_salario_funcionario) AS media_salario
FROM funcionario
WHERE MONTH(dt_criacao) = 1
AND YEAR(dt_criacao) = 2026;


-- EXERCICIO 3
-- Soma e media dos salarios por departamento.

SELECT
    cd_departamento,
    SUM(vl_salario_funcionario) AS soma_salario,
    AVG(vl_salario_funcionario) AS media_salario
FROM funcionario
GROUP BY cd_departamento;


-- EXERCICIO 4
-- Maior e menor orcamento dos departamentos
-- cadastrados em 2025 ou 2026.

SELECT
    MAX(vl_orcamento_departamento) AS maior_orcamento,
    MIN(vl_orcamento_departamento) AS menor_orcamento
FROM departamento
WHERE YEAR(dt_criacao) IN (2025, 2026);


-- EXERCICIO 5
-- Soma e media dos orcamentos dos departamentos
-- cadastrados em dezembro de 2025.

SELECT
    SUM(vl_orcamento_departamento) AS soma_orcamento,
    AVG(vl_orcamento_departamento) AS media_orcamento
FROM departamento
WHERE YEAR(dt_criacao) = 2025
AND MONTH(dt_criacao) = 12;


-- EXERCICIO 6
-- Soma e media dos salarios por cargo.

SELECT
    cd_cargo,
    SUM(vl_salario_funcionario) AS soma_salario,
    AVG(vl_salario_funcionario) AS media_salario
FROM funcionario
GROUP BY cd_cargo;
