# 📊 Sistema de Gestão de Funcionários — MySQL

## 📌 Sobre o Projeto

Projeto acadêmico desenvolvido durante o curso de **Ciência da Computação na UNIP**, com o objetivo de aplicar conhecimentos de Banco de Dados utilizando SQL e MySQL.

O sistema simula o gerenciamento de funcionários, departamentos e cargos de uma empresa, permitindo realizar consultas, análises salariais, cálculos de orçamentos e funções para reajustes de salários.

O projeto foi desenvolvido para aprimorar habilidades em modelagem de dados, consultas SQL, relacionamentos entre tabelas e funções armazenadas.

## 🛠️ Tecnologias Utilizadas

- **MySQL** — Sistema de gerenciamento de banco de dados relacional.
- **SQL** — Linguagem utilizada para criação, manipulação e consulta de dados.
- **MySQL Workbench** — Ambiente de desenvolvimento e gerenciamento do banco.

## 🗂️ Estrutura do Projeto


```text
gestao-funcionarios-mysql/
│
├── 01_criacao_tabelas.sql
├── 02_insercao_dados.sql
├── 03_consultas.sql
├── 04_funcoes.sql
└── README.md
```


### Descrição dos Arquivos

- **01_criacao_tabelas.sql:** Criação do banco de dados e das tabelas com chaves primárias e estrangeiras.
- **02_insercao_dados.sql:** Inserção de registros fictícios para realização dos testes.
- **03_consultas.sql:** Consultas SQL utilizando funções de agregação, agrupamentos e filtros.
- **04_funcoes.sql:** Funções armazenadas para cálculo de reajustes salariais.

## 🗃️ Estrutura do Banco de Dados

O banco de dados `LABFUNCAO` possui quatro tabelas:

| Tabela | Descrição |
|---|---|
| `funcionario` | Armazena informações pessoais, salários, cargos e departamentos. |
| `departamento` | Armazena os departamentos e seus respectivos orçamentos. |
| `cargo` | Armazena os cargos disponíveis na empresa. |
| `auditoria` | Estrutura destinada ao registro de informações de auditoria. |

As tabelas possuem relacionamentos implementados por meio de **Primary Keys** e **Foreign Keys**, garantindo a integridade referencial.

## 🔎 Consultas SQL Desenvolvidas

Foram desenvolvidas consultas para:

1. Identificar o maior e o menor salário dos funcionários cadastrados em 2026.
2. Calcular a soma e a média salarial dos funcionários cadastrados em janeiro de 2026.
3. Calcular a soma e a média dos salários por departamento.
4. Identificar o maior e o menor orçamento dos departamentos criados em 2025 ou 2026.
5. Calcular a soma e a média dos orçamentos de departamentos criados em dezembro de 2025.
6. Calcular a soma e a média dos salários por cargo.

**Principais recursos utilizados:**

- `SELECT`
- `WHERE`
- `GROUP BY`
- `SUM()`
- `AVG()`
- `MAX()`
- `MIN()`
- `YEAR()`
- `MONTH()`
- `IN()`

## ⚙️ Funções Armazenadas

Foram desenvolvidas três funções para realizar cálculos de reajustes salariais.

### 1. Função aumento15()

Calcula o salário com aumento de 15%, recebendo o salário atual como parâmetro.

**Exemplo:**

```sql
SELECT
    nm_funcionario,
    vl_salario_funcionario,
    aumento15(vl_salario_funcionario) AS novo_salario
FROM funcionario;
```

### 2. Função aumento20()

Calcula o salário com aumento de 20% para um funcionário específico, utilizando seu código como parâmetro.

```sql
SELECT aumento20(1) AS novo_salario;
```

### 3. Função valor_aumento()

Retorna somente o valor correspondente ao reajuste de 20% de um funcionário, sem somá-lo ao salário original.

```sql
SELECT valor_aumento(1) AS valor_aumento;
```

**Observação:** as funções apenas calculam e retornam valores. Os salários armazenados no banco de dados não são modificados.

## 🚀 Como Executar o Projeto

1. Instale o MySQL e o MySQL Workbench.
2. Faça o download ou clone este repositório.
3. Abra o MySQL Workbench e conecte-se ao servidor.
4. Execute `01_criacao_tabelas.sql`.
5. Execute `02_insercao_dados.sql`.
6. Execute `03_consultas.sql` para visualizar as consultas.
7. Execute `04_funcoes.sql` para criar e testar as funções salariais.

**Importante:** consultas com filtros de datas dependem das datas registradas no banco. Caso não existam registros no período solicitado, as funções de agregação podem retornar `NULL`.

## 🎯 Conhecimentos Aplicados

Este projeto permitiu praticar:

- Modelagem e organização de bancos de dados relacionais.
- Criação e relacionamento de tabelas.
- Manipulação e consulta de registros.
- Funções de agregação e agrupamento.
- Filtragem de dados por períodos.
- Desenvolvimento de funções SQL com parâmetros.
- Organização e documentação de projetos utilizando GitHub.

## 👨‍💻 Autor

**Lucas Rocha**

Estudante de Ciência da Computação — UNIP

- **GitHub:** [LucasRocha001](https://github.com/LucasRocha001)
- **LinkedIn:** [Lucas Rocha](https://www.linkedin.com/in/lucasrocha001)

---

📚 *Projeto desenvolvido para fins acadêmicos e de aprimoramento das habilidades em Banco de Dados e SQL.*
