
USE LABFUNCAO;

-- =========================================
-- EXERCICIO 7
-- Funcao que calcula e retorna um aumento
-- de 15% no salario de todos os funcionarios.
-- =========================================

DELIMITER //

CREATE FUNCTION aumento15(salario DECIMAL(8,2))
RETURNS DECIMAL(10,2)
DETERMINISTIC
NO SQL
BEGIN
    RETURN salario * 1.15;
END //

DELIMITER ;

-- Consulta para visualizar o novo salario
-- de todos os funcionarios.

SELECT
    nm_funcionario,
    vl_salario_funcionario,
    aumento15(vl_salario_funcionario) AS novo_salario
FROM funcionario;


-- =========================================
-- EXERCICIO 8
-- Funcao que calcula e retorna um aumento
-- de 20% para um funcionario especifico,
-- utilizando o codigo como parametro.
-- =========================================

DELIMITER //

CREATE FUNCTION aumento20(codigo INT)
RETURNS DECIMAL(10,2)
READS SQL DATA
BEGIN
    DECLARE salario DECIMAL(8,2);

    SELECT vl_salario_funcionario
    INTO salario
    FROM funcionario
    WHERE cd_funcionario = codigo;

    RETURN salario * 1.20;
END //

DELIMITER ;

-- Exemplo: funcionario de codigo 1

SELECT aumento20(1) AS novo_salario;


-- =========================================
-- EXERCICIO 9
-- Funcao que retorna somente o valor do
-- aumento salarial de um funcionario,
-- utilizando o codigo como parametro.
-- Exemplo utilizando aumento de 20%.
-- =========================================

DELIMITER //

CREATE FUNCTION valor_aumento(codigo INT)
RETURNS DECIMAL(10,2)
READS SQL DATA
BEGIN
    DECLARE salario DECIMAL(8,2);

    SELECT vl_salario_funcionario
    INTO salario
    FROM funcionario
    WHERE cd_funcionario = codigo;

    RETURN salario * 0.20;
END //

DELIMITER ;

-- Exemplo: funcionario de codigo 1

SELECT valor_aumento(1) AS valor_aumento;
