
USE LABFUNCAO;

-- Insercao de departamentos
INSERT INTO departamento
(nm_departamento, vl_orcamento_departamento)
VALUES
('Desenvolvimento', 100000),
('Produto', 200000),
('Serviços', 100000),
('Manutenção', 140000),
('Tecnologia', 450000),
('Diretoria', 350000);

-- Insercao de cargos
INSERT INTO cargo (nm_cargo)
VALUES
('Analista de Sistemas'),
('Vendedor Técnico'),
('Motorista'),
('Programador Junior'),
('Programador Pleno'),
('Analista Senior'),
('VP');

-- Insercao de funcionarios
INSERT INTO funcionario
(nm_funcionario, email_funcionario,
cd_cpf_funcionario, vl_salario_funcionario,
idade_funcionario, cd_departamento, cd_cargo)
VALUES
('Mario', 'mario@gmail.com',
'11111111111', 20000, 44, 1, 1),

('Fernando', 'fernando@fernando.com.br',
'22222222222', 10000, 24, 3, 1),

('Otavio', 'otavio@otavio.com.br',
'33333333333', 30000, 35, 4, 2),

('Lauro', 'lauro@gmail.com.br',
'44444444444', 30000, 30, 4, 3),

('Gumercindo', 'gumercindo@gumercindo.com.br',
'55555555555', 20000, 50, 1, 3),

('Roberto', 'roberto@roberto.com.br',
'66666666666', 20000, 50, 1, 6),

('Claudio', 'claudio@claudio.com.br',
'77777777777', 20000, 50, 1, 5);
