---- ALGORITMOS E ESTRUTURA DE DADOS (SQL);

--- SGBD (Sistema de Gerenciamento de Banco de Dados);
-- Um SGBD é um software que permite criar, gerenciar e manipular bancos de dados.
-- Exemplos de SGBD's populares incluem MySQL, PostgreSQL, MySQL Workbench, Oracle Database e Microsoft SQL Server.

--- Esquema (shcema) de um banco de dados:
-- Um esquema de banco de dados é a estrutura que define como os dados são organizados e armazenados em um banco de dados.
-- Ele inclui a definição das tabelas, colunas, tipos de dados, relacionamentos entre tabelas, restrições e outras propriedades do banco de dados.

-- Query;
-- A Query é uma consulta feita ao banco de dados para buscar informações específicas.

-- SQL File;
-- Um arquivo SQL é um arquivo de texto que contém comandos SQL. Ele é usado para armazenar e executar scripts SQL, como a criação de tabelas, inserção de dados, consultas e outras operações em um banco de dados.
-- Sempre que der algum comando na Query, é necessário usar o ponto e vírgula (;) no final do comando para indicar o término do comando SQL.

-------------------------------------------------------------------------------------------

-- Para selecionar o banco de dados que iremos trabalhar, usamos o comando:
USE nome_do_banco_de_dados; -- Substitua "nome_do_banco_de_dados" pelo nome real do banco de dados que você deseja usar.
-- ou clicamos duas vezes no nome do banco de dados na função "Navigator" -> Schemas.

-------------------------------------------------------------------------------------------

---- Tipos de dados mais comuns em um banco de dados:
--- 1 - Texto (String):
-- CHAR: Armazena strings de tamanho fixo. Usado quando os valores têm um comprimento constante.
-- VARCHAR: Armazena strings de tamanho variável. Apropriado para valores com comprimentos variáveis.
-- TEXTO (TEXT): Armazena strings muito longas, como documentos ou descrições.

--- 2 - Numérico:
-- NTEGER (INT): Armazena números inteiros.
-- FLOAT: Armazena números de ponto flutuante, geralmente usados para valores com casas decimais.
-- NUMERIC (DECIMAL): Armazena números com uma precisão específica, geralmente usados em aplicações financeiras.

--- 3 - Data e Hora:
-- DATE: Armazena datas sem informações de horário.
-- TIME: Armazena informações de horário.
-- TIMESTAMP: Combina data e horário em um único tipo.

--- 4 - Booleano:
-- BOOLEAN (BOOL): Armazena valores verdadeiros ou falsos.

--- 5 - Binário:
-- BLOB (Binary Large Object): Armazena dados binários, como imagens, vídeos ou arquivos.
-- BIT: Armazena valores binários, como 0 ou 1.

------------------------------------------------------------------------------------------

--- CRATE TABLE;
-- O comando CREATE TABLE é usado para criar uma nova tabela em um banco de dados
-- Exemplo de uso do CREATE TABLE:
CREATE TABLE funcionarios (
    id INT PRIMARY KEY, 
    nome VARCHAR(100),
    departamento VARCHAR(50),
    salario DECIMAL(10, 2)
); -- (sempre usando vírgula para separar os campos e ponto e vírgula no final do comando).

--- Tipos de dados mais comuns em SQL:
-- INT;
-- O tipo de dado INT é usado para armazenar números inteiros (sem casas decimais).

-- VARCHAR;
-- O tipo de dado VARCHAR é usado para armazenar cadeias de caracteres(texto) de comprimento variável, até 100 caracteres no exemplo acima na coluna "nome".

-- DECIMAL;
-- O tipo de dado DECIMAL é usado para armazenar números decimais com precisão definida, onde (10, 2) indica que o número pode ter até 10 dígitos no total, com 2 dígitos após a vírgula decimal.

-- ENUM;
-- O tipo de dado ENUM é usado para definir uma coluna que pode armazenar um conjunto específico de valores pré-definidos.
-- Exemplo de uso do ENUM:
CREATE TABLE pedidos (
    id INT PRIMARY KEY,
    status ENUM('Pendente', 'Processando', 'Enviado', 'Entregue', 'Cancelado')
); -- Neste exemplo, a coluna "status" só pode conter um dos valores especificados no conjunto ENUM.

-- TEXT;
-- O tipo de dado TEXT é usado para armazenar grandes quantidades de texto, como descrições ou comentários.

-- DATE;
-- O tipo de dado DATE é usado para armazenar valores de data (ano, mês, dia).
-- Exemplo de uso do DATE:
CREATE TABLE eventos (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    data_evento DATE
); -- Neste exemplo, a coluna "data_evento" armazena a data do evento.

-- TIMESTAMP;
-- O tipo de dado TIMESTAMP é usado para armazenar valores de data e hora, incluindo informações de fuso horário.
-- Exemplo de uso do TIMESTAMP:
CREATE TABLE logs (
    id INT PRIMARY KEY,
    mensagem TEXT,
    data_hora TIMESTAMP DEFAULT CURRENT_TIMESTAMP
); -- Neste exemplo, a coluna "data_hora" armazena a data e hora do log, com o valor padrão sendo a data e hora atual.

-- CHAR;
-- O tipo de dado CHAR é usado para armazenar cadeias de caracteres(texto) de comprimento fixo.
-- Exemplo de uso do CHAR:
CREATE TABLE produtos (
    id INT PRIMARY KEY,
    codigo CHAR(10),
    nome VARCHAR(100)
); -- Neste exemplo, a coluna "codigo" armazena um código de produto com exatamente 10 caracteres.

-- FLOAT;
-- O tipo de dado FLOAT é usado para armazenar números de ponto flutuante, que são números com casas decimais.
-- Exemplo de uso do FLOAT:
CREATE TABLE medidas (
    id INT PRIMARY KEY,
    valor FLOAT
); -- Neste exemplo, a coluna "valor" armazena um número de ponto flutuante.

-- BOOLEAN;
-- O tipo de dado BOOLEAN é usado para armazenar valores booleanos, que podem ser verdadeiros (TRUE) ou falsos (FALSE).
-- Exemplo de uso do BOOLEAN:
CREATE TABLE usuarios (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    ativo BOOLEAN
); -- Neste exemplo, a coluna "ativo" indica se o usuário está ativo (TRUE) ou inativo (FALSE).

-- BLOB;
-- O tipo de dado BLOB (Binary Large Object) é usado para armazenar grandes quantidades de dados binários, como imagens, vídeos ou arquivos.
-- Exemplo de uso do BLOB:
CREATE TABLE imagens (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    dados_imagem BLOB
); -- Neste exemplo, a coluna "dados_imagem" armazena os dados binários da imagem.

-- BIT;
-- O tipo de dado BIT é usado para armazenar valores binários, como 0 ou 1.
-- Exemplo de uso do BIT:
CREATE TABLE flags (
    id INT PRIMARY KEY,
    flag BIT
); -- Neste exemplo, a coluna "flag" armazena um valor binário (0 ou 1).

------------------------------------------------------------------------------------------

--- PRIMARY KEY;
-- A PRIMARY KEY é uma restrição que identifica exclusivamente cada registro em uma tabela de banco de dados.
-- Ela garante que os valores na coluna ou conjunto de colunas designadas como chave primária sejam únicos e não nulos.

-- Exemplo de uso da PRIMARY KEY:
CREATE TABLE produtos (
    produto_id INT PRIMARY KEY,
    nome VARCHAR(100),
    preco DECIMAL(10, 2)
); -- Neste exemplo, a coluna "produto_id" é definida como a chave primária da tabela "produtos", garantindo que cada produto tenha um identificador único.

------------------------------------------------------------------------------------------

--- FOREIGN KEY;
-- A FOREIGN KEY é uma restrição que estabelece um relacionamento entre duas tabelas em um banco de dados.
-- Ela garante que os valores em uma coluna ou conjunto de colunas correspondam aos valores na chave primária de outra tabela.

-- Exemplo de uso da FOREIGN KEY:
CREATE TABLE pedidos (
    pedido_id INT PRIMARY KEY,
    produto_id INT,
    quantidade INT,
    FOREIGN KEY (produto_id) REFERENCES produtos(produto_id)
); -- Neste exemplo, a coluna "produto_id" na tabela "pedidos" é definida como uma chave estrangeira que referencia a coluna "produto_id" na tabela "produtos", estabelecendo um relacionamento entre as duas tabelas.

-- Para adicionar uma chave estrangeira a uma tabela existente, você pode usar o comando ALTER TABLE:
ALTER TABLE pedidos 
ADD COLUMN fk_produto
REFERENCES produtos(produto_id);

--- A FOREIGN KEY costuma se conectar pelo ID de outra tabela, pois é mais fácil de identificar e relacionar os dados entre as tabelas, já que são únicos (primary key).
-- Exemplo:
CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY,
    nome_cliente VARCHAR(100)
);

CREATE TABLE pedidos (
    id_pedido INT PRIMARY KEY,
    id_cliente INT,
    data_pedido DATE,
    total_pedido DECIMAL(10, 2),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
); -- Neste exemplo, a coluna "id_cliente" na tabela "pedidos" é uma chave estrangeira que referencia a coluna "id_cliente" na tabela "clientes", estabelecendo um relacionamento entre as duas tabelas.

--- As vezes, ao rodar um código com FOREIGN KEY, pode dar erro se a tabela que está sendo referenciada não existir ou se os tipos de dados não forem compatíveis;
-- Aparecerá a mensagem de erro: "Cannot add foreign key constraint". 

------------------------------------------------------------------------------------------

--- ALTER TABLE;
-- O comando ALTER TABLE é usado para modificar a estrutura de uma tabela existente em um banco de dados.

--- Palavras-chave da função ALTER TABLE;

-- ADD para adicionar novas colunas.
-- Exemplo de uso do ADD:
ALTER TABLE funcionarios ADD data_admissao DATE; 
-- Adiciona uma nova coluna chamada "data_admissao" do tipo DATE na tabela "funcionarios".

-- DROP para remover colunas, tabelas, sgbd, usuários, e outros existentes.
-- Exemplo de uso do DROP:
ALTER TABLE funcionarios DROP COLUMN data_admissao; 
-- Remove a coluna "data_admissao" da tabela "funcionarios"

-- Outro exemplo de uso do DROP:
DROP TABLE funcionarios; 
-- Remove a tabela "funcionarios" do banco de dados.

-- Outro exemplo de uso do DROP:
DROP DATABASE nome_do_banco_de_dados; 
-- Remove o banco de dados especificado.

-- Outro exemplo de uso do DROP:
DROP SCHEMA Turno_da_manhã;
-- Remove o esquema "Turno_da_manhã" do banco de dados.

-- MODIFY para alterar o tipo de dados ou outras propriedades de uma coluna existente,
-- Exemplo de uso do MODIFY:
ALTER TABLE funcionarios MODIFY salario DECIMAL(12, 2); 
-- Altera o tipo de dados da coluna "salario" para DECIMAL com precisão de 12 dígitos no total e 2 dígitos após a vírgula decimal.

------------------------------------------------------------------------------------------

--- INSERT INTO;
-- O comando INSERT INTO é usado para inserir novos registros em uma tabela de banco de dados.

-- Exemplo de uso do INSERT INTO:
INSERT INTO funcionarios (id, 
nome, 
departamento, 
salario) 
VALUES 
('1', 'João Silva', 'Vendas', 4500.00); -- Os nomes estão entre aspas simples (' ') e os valores numéricos sem aspas. (id vale como texto)
-- Insere um novo registro na tabela "funcionarios" com os valores especificados para cada coluna.

-- Continuando o comando acima:
INSERT INTO funcionarios (id, nome, departamento, salario) 
VALUES 
('2', 'Maria Souza', 'Marketing', 5200.00),
('3', 'Carlos Oliveira', 'Recursos Humanos', 4800.00),
('4', 'Ana Costa', 'TI', 6000.00); 
-- Inserindo múltiplos registros na tabela "funcionarios" em uma única instrução.

------------------------------------------------------------------------------------------

---  SELECT;
--  A função SELECT é usada para selecionar dados de um banco de dados(tabelas).

-- Exemplo de uso do SELECT:
SELECT * FROM nome_da_tabela;
-- O comando seleciona todas as colunas e todas as linhas da tabela especificada, através do uso do asterisco (*).

-- Outro exemplo de uso do SELECT:
SELECT coluna1, coluna2 FROM nome_da_tabela;
-- O comando seleciona apenas as colunas especificadas (coluna1 e coluna2) da tabela.

------------------------------------------------------------------------------------------

--- WHERE;
-- A cláusula WHERE é usada para filtrar registros e obter apenas aqueles que atendem a uma condição específica.

-- Exemplo de uso do WHERE:
SELECT * FROM funcionarios WHERE salario > 5000; 
-- Seleciona todos os funcionários com salário maior que 5000 na tabela "funcionarios".

-- Outro exemplo de uso do WHERE:
SELECT id FROM funcionarios WHERE departamento = 'Vendas'; 
-- Seleciona os IDs dos funcionários que trabalham no departamento de Vendas na tabela "funcionarios".

-- Outro exemplo de uso do WHERE:
SELECT nome, salario FROM funcionarios WHERE nome != 'João'; 
-- Seleciona os nomes e salários dos funcionários cujo nome não é 'João' na tabela "funcionarios".

-------------------------------------------------------------------------------------------

--- DISTINCT;
-- A palavra-chave DISTINCT é usada para retornar apenas valores distintos(diferentes) em uma consulta, ou seja, 
-- não repete valores duplicados, só retorna um valor único para cada valor distinto encontrado na coluna especificada.

-- Exemplo de uso do DISTINCT:
SELECT DISTINCT departamento FROM funcionarios; 
-- Seleciona todos os departamentos distintos na tabela "funcionarios".

-- Outro exemplo de uso do DISTINCT:
SELECT DISTINCT nome FROM funcionarios WHERE salario > 4000; 
-- Seleciona os nomes distintos dos funcionários com salário maior que 4000 na tabela "funcionarios".

-- Outro exemplo de uso do DISTINCT:
SELECT DISTINCT departamento FROM funcionarios WHERE salario > 4000; 
-- Seleciona os departamentos distintos dos funcionários com salário maior que 4000 na tabela "funcionarios".

-- Outro exemplo de uso do DISTINCT:
SELECT DISTINCT nome FROM funcionarios WHERE departamento = 'Vendas'; 
-- Seleciona os nomes distintos dos funcionários que trabalham no departamento de Vendas na tabela "funcionarios".

------------------------------------------------------------------------------------------

--- MAIOR, MENOR, IGUAL, DIFERENTE;
-- Para fazer comparações em SQL, você pode usar os seguintes operadores:
-- Maior que: >
-- Menor que: <
-- Igual a: =
-- Diferente de: != ou <>

-- Exemplo de uso dos operadores (>):
SELECT * FROM funcionarios WHERE salario > 3000; 
-- Seleciona todos os funcionários com salário maior que 3000.

-- Outro exemplo de uso dos operadores (<):
SELECT * FROM funcionarios WHERE salario < 3000; 
-- Seleciona todos os funcionários com salário menor que 3000.

-- Outro exemplo de uso dos operadores (=):
SELECT * FROM funcionarios WHERE departamento = 'Vendas'; 
-- Seleciona todos os funcionários do departamento de Vendas.

-- Outro exemplo de uso dos operadores (!=):
SELECT * FROM funcionarios WHERE departamento != 'Vendas'; 
-- Seleciona todos os funcionários que não estão no departamento de Vendas.

--- Podemos utilizar o maior e menor para diversas funções, não só números;
SELECT * FROM tabelaclientes WHERE nome_cliente > 'C'; 
-- Seleciona todos os clientes cujo nome vem depois da letra 'C' no alfabeto.

-- Outro exemplo de uso dos operadores com maior e menor em texto:
SELECT * FROM tabelaclientes WHERE nome_cliente < 'M'; -- Seleciona todos os clientes cujo nome vem antes da letra 'M' no alfabeto.

--- Para utilizar com datas:
SELECT * FROM pedidos WHERE data_pedido > '2023-01-01'; 
-- Seleciona todos os pedidos feitos após 1º de janeiro de 2023.

-- Outro exemplo de uso dos operadores com datas: 
SELECT * FROM pedidos WHERE data_pedido < '2023-01-01'; 
-- Seleciona todos os pedidos feitos antes de 1º de janeiro de 2023.

-- Outro exemplo de uso ods operadores com datas:
SELECT * FROM pedidos WHERE data_pedido = '2023-06-15'; 
-- Seleciona todos os pedidos feitos em 15 de junho de 2023.

-- Outro exemplo de uso dos operadores com datas:
SELECT * FROM pedidos WHERE data_pedido != '2023-06-15'; 
-- Seleciona todos os pedidos que não foram feitos em 15 de junho de 2023.

------------------------------------------------------------------------------------------

--- AND, OR, NOT;
-- Esses são operadores lógicos usados para combinar múltiplas condições em uma cláusula WHERE.

-- AND: Retorna verdadeiro se ambas as condições forem verdadeiras.
-- OR: Retorna verdadeiro se pelo menos uma das condições for verdadeira.
-- NOT: Inverte o valor lógico de uma condição.

-- Exemplo de uso dos operadores lógicos (AND):
SELECT * FROM funcionarios WHERE salario > 3000 AND departamento = 'Vendas'; 
-- Seleciona todos os funcionários com salário maior que 3000 e que estão no departamento de Vendas.

-- Outro exemplo de uso dos operadores lógicos (OR):
SELECT * FROM funcionarios WHERE salario > 3000 OR departamento = 'Vendas'; 
-- Seleciona todos os funcionários com salário maior que 3000 ou que estão no departamento de Vendas.

-- Outro exemplo de uso dos operadores lógicos (AND e OR):
SELECT * FROM funcionarios WHERE salario > 3000 AND (departamento = 'Vendas' OR departamento = 'Marketing'); 
-- Seleciona todos os funcionários com salário maior que 3000 e que estão no departamento de Vendas ou Marketing.

-- Outro exemplo de uso dos operadores lógicos(NOT):
SELECT * FROM funcionarios WHERE NOT departamento = 'Vendas'; 
-- Seleciona todos os funcionários que não estão no departamento de Vendas.

-- Outro exemplo de uso dos operadores lógicos (NOT e OR):
SELECT * FROM funcionarios WHERE NOT (salario < 4000 OR departamento = 'Recursos Humanos'); 
-- Seleciona todos os funcionários que têm salário maior ou igual a 4000 e que não estão no departamento de Recursos Humanos.

-- Outro exemplo de uso dos operadores lógicos (NOT e AND):
SELECT * FROM funcionarios WHERE NOT (salario > 5000 AND departamento = 'TI'); 
-- Seleciona todos os funcionários que não têm salário maior que 5000 ou que não estão no departamento de TI.

-- Outro exemplo de uso dos operadores lógicos (AND e NOT):
SELECT * FROM funcionarios WHERE salario > 3000 AND NOT (departamento = 'Vendas'); 
-- Seleciona todos os funcionários com salário maior que 3000 e que não estão no departamento de Vendas.

------------------------------------------------------------------------------------------

--- IN (..., ..., ...);
-- O operador IN é usado para filtrar valores que correspondem a qualquer um dos valores especificados em uma lista.

-- Exemplo de uso do IN:
SELECT * FROM funcionarios WHERE departamento IN ('Vendas', 'Marketing', 'TI'); 
-- Seleciona todos os funcionários que estão nos departamentos de Vendas, Marketing ou TI.

-- Outro exemplo de uso do IN:
SELECT * FROM pedidos WHERE status_pedido IN ('Pendente', 'Processando'); 
-- Seleciona todos os pedidos com status "Pendente" ou "Processando".

--  Também podemos usar o IN com operadores lógicos (AND, OR, NOT):
SELECT * FROM funcionarios WHERE salario > 3000 AND departamento IN ('Vendas', 'Marketing'); 
-- Seleciona todos os funcionários com salário maior que 3000 e que estão nos departamentos de Vendas ou Marketing.

-- Outro exemplo de uso do IN com operadores lógicos:
SELECT * FROM funcionarios WHERE salario > 3000 OR departamento IN ('Recursos Humanos', 'TI'); 
-- Seleciona todos os funcionários com salário maior que 3000 ou que estão nos departamentos de Recursos Humanos ou TI.

-- Outro exemplo de uso do IN com operadores lógicos:
SELECT * FROM funcionarios WHERE NOT departamento IN ('Vendas', 'Marketing'); 
-- Seleciona todos os funcionários que não estão nos departamentos de Vendas ou Marketing.   

--  O operador IN equivale ao uso do "=", sua diferença na prática é que o "=" você precisaria usar várias vezes para cada valor que deseja comparar, 
-- enquanto o IN permite listar todos os valores em uma única condição.

------------------------------------------------------------------------------------------

--- LIKE;
-- O operador LIKE é usado para buscar um padrão específico em uma coluna de texto.

-- Exemplo de uso do LIKE:
SELECT * FROM funcionarios WHERE nome LIKE 'A%'; 
-- Seleciona todos os funcionários cujo nome começa com a letra 'A'. 
-- O símbolo de porcentagem (%) é um curinga que representa qualquer sequência de caracteres.

-- Outro exemplo de uso do LIKE;
SELECT * FROM funcionarios WHERE nome LIKE '%Silva'; 
-- Seleciona todos os funcionários cujo nome termina com 'Silva'.

-- Outro exemplo de uso do LIKE;
SELECT * FROM funcionarios WHERE nome LIKE '%an%'; 
-- Seleciona todos os funcionários cujo nome contém a sequência de caracteres 'an'.

-- Outro exemplo de uso do LIKE;
SELECT * FROM funcionarios WHERE nome LIKE '_a%'; 
-- Seleciona todos os funcionários cujo segundo caractere do nome é 'a'. 
-- O sublinhado (_) é um curinga que representa um único caractere.

-- Outro exemplo de uso do LIKE;
SELECT * FROM funcionarios WHERE nome LIKE 'J_n%'; 
-- Seleciona todos os funcionários cujo nome começa com 'J', tem 'n' como terceiro caractere e pode ter qualquer sequência de caracteres após isso.

-- Outro exemplo de uso do LIKE;
SELECT * FROM funcionarios WHERE nome LIKE '%Eduardo%'; 
-- Seleciona todos os funcionários cujo nome contém 'Eduardo' em qualquer posição.

-- Outro exemplo de uso do LIKE;
SELECT * FROM funcionarios WHERE nome LIKE '%o_o%'; 
-- Seleciona todos os funcionários cujo nome contém 'o' como segundo caractere e 'o' como quarto caractere, com qualquer sequência de caracteres antes, entre e depois.

--- Também podemos usar o LIKE com operadores lógicos (AND, OR e NOT):
SELECT * FROM funcionarios WHERE nome LIKE 'A%' AND departamento = 'Vendas'; 
-- Seleciona todos os funcionários cujo nome começa com 'A' e que estão no departamento de Vendas.

-- Outro exemplo de uso do LIKE com operadores lógicos:
SELECT * FROM funcionarios WHERE nome LIKE '%Silva' OR departamento = 'Marketing'; 
-- Seleciona todos os funcionários cujo nome termina com 'Silva' ou que estão no departamento de Marketing.

-- Outro exemplo de uso do LIKE com operadores lógicos:
SELECT * FROM funcionarios WHERE NOT nome LIKE '%an%'; 
-- Seleciona todos os funcionários cujo nome não contém a sequência de caracteres 'an'.

------------------------------------------------------------------------------------------

--- LIMIT;
-- O comando LIMIT é usado para restringir o número de registros retornados por uma consulta SQL.

-- Exemplo de uso do LIMIT:
SELECT * FROM funcionarios LIMIT 5; 
-- Retorna os primeiros 5 registros da tabela "funcionarios".

-- Outro exemplo de uso do LIMIT;
SELECT * FROM pedidos LIMIT 10; 
-- Retorna os primeiros 10 registros da tabela "pedidos".

-- Outro exemplo de uso do LIMIT;
SELECT * FROM funcionarios WHERE salario > 4000 LIMIT 3; 
-- Retorna os primeiros 3 registros da tabela "funcionarios" onde o salário é maior que 4000.

-- Outro exemplo de uso do LIMIT;
SELECT * FROM pedidos WHERE status_pedido = 'Enviado' LIMIT 7; 
-- Retorna os primeiros 7 registros da tabela "pedidos" onde o status do pedido é 'Enviado'.

-- Outro exemplo de uso do LIMIT;
SELECT * FROM funcionarios LIMIT 0, 5; 
-- Retorna os primeiros 5 registros da tabela "funcionarios", começando do índice 0 (primeiro registro).

-- Outro exemplo de uso do LIMIT;
SELECT * FROM funcionarios LIMIT 5, 10; 
-- Retorna 10 registros da tabela "funcionarios", começando a partir do 6º registro (índice 5).

-- Outro exemplo de uso do LIMIT;
SELECT * FROM funcionarios LIMIT 5 OFFSET 10; 
-- Retorna 5 registros da tabela "funcionarios", começando a partir do 11º registro (índice 10).

------------------------------------------------------------------------------------------

--- BETWEEN (...) AND (...);
-- O operador BETWEEN é usado para filtrar valores dentro de um intervalo específico (entre)

-- Exemplo de uso do BETWEEN:
SELECT * FROM funcionarios WHERE salario BETWEEN 2000 AND 5000; 
-- Seleciona todos os funcionários com salário entre 2000 e 5000.

-- Outro exemplo de uso do BETWEEN:
SELECT * FROM pedidos WHERE data_pedido BETWEEN '2023-01-01' AND '2023-06-30'; 
-- Seleciona todos os pedidos feitos entre 1º de janeiro de 2023 e 30 de junho de 2023.

------------------------------------------------------------------------------------------

--- ORDER BY;
-- O comando ORDER BY é usado para ordenar os resultados de uma consulta SQL com base em uma ou mais colunas.

-- Exemplo de uso do ORDER BY:
SELECT * FROM funcionarios ORDER BY salario ASC; 
-- Ordena os funcionários pelo salário em ordem crescente (do menor para o maior).

-- Outro exemplo de uso do ORDER BY:
SELECT * FROM funcionarios ORDER BY salario DESC; 
-- Ordena os funcionários pelo salário em ordem decrescente (do maior para o menor).

-- Outro exemplo de uso do ORDER BY:
SELECT * FROM funcionarios ORDER BY departamento, salario ASC;
-- Ordena os funcionários primeiro pelo departamento em ordem crescente e depois pelo salário em ordem crescente dentro de cada departamento.

-- Outro exemplo de uso do ORDER BY:
SELECT * FROM funcionarios ORDER BY departamento ASC, salario DESC; 
-- Ordena os funcionários primeiro pelo departamento em ordem crescente e depois pelo salário em ordem decrescente dentro de cada departamento.

--- Podemos usar o ORDER BY com textos também:
SELECT * FROM funcionarios ORDER BY nome ASC; -- (pode utilizar sem o ASC) 
-- Ordena os funcionários pelo nome em ordem alfabética crescente.

-- Outro exemplo de uso do ORDER BY com textos:
SELECT * FROM funcionarios ORDER BY nome DESC; 
-- Ordena os funcionários pelo nome em ordem alfabética decrescente.

--- Para utilizar com datas:
SELECT * FROM pedidos ORDER BY data_pedido ASC; 
-- Ordena os pedidos pela data em ordem crescente (do mais antigo para o mais recente).

-- Outro exemplo de uso do ORDER BY com data:
SELECT * FROM pedidos ORDER BY data_pedido DESC; 
-- Ordena os pedidos pela data em ordem decrescente (do mais recente para o mais antigo).

------------------------------------------------------------------------------------------

--- ALIAS;
-- Um alias é um nome temporário (apelido em inglês) atribuído a uma tabela ou coluna em uma consulta SQL.
-- Ele é usado para tornar os nomes mais legíveis ou para evitar conflitos de nomes em consultas complexas.

-- Exemplo de uso do ALIAS:
SELECT nome AS nome_funcionario, salario AS salario_funcionario -- Nome original AS apelido temporário
FROM funcionarios; 
-- Neste exemplo, "nome_funcionario" e "salario_funcionario" são aliases para as colunas "nome" e "salario" da tabela "funcionarios".

-- Outro exemplo de uso do ALIAS;
SELECT produto_id AS id_produto, nome AS nome_produto, preco AS preco_produto -- Nome original AS apelido temporário
FROM produtos; 
-- Neste exemplo, "id_produto", "nome_produto" e "preco_produto" são aliases para as colunas "produto_id", "nome" e "preco" da tabela "produtos". 

--- Podemos usar alias também para fazer cálculos:
CREATE TABLE jogadores (
    id_jogador INT PRIMARY KEY,
    nome_jogador VARCHAR(100),
    pontuacao_atual INT,
    gols_pro INT,
    gols_contra INT,
    saldo_gols INT AS (gols_pro - gols_contra) STORED -- STORED indica que o valor será armazenado fisicamente na tabela.
); -- Neste exemplo, "saldo_gols" é um alias que calcula a diferença entre "gols_pro" e "gols_contra" para cada jogador na tabela "jogadores".

------------------------------------------------------------------------------------------

--- GROUP BY (SUM, AVG, COUNT, MAX, MIN);
-- O comando GROUP BY é usado para agrupar registros com valores semelhantes em uma ou mais colunas.
-- Ele é frequentemente usado em conjunto com funções de agregação para calcular valores resumidos para cada grupo.
-- Para usarmos a função GROUP BY, temos que utilizar uma função de agregação, como SUM, AVG, COUNT, MAX ou MIN, para calcular um valor para cada grupo de registros.

-- SUM(): Retorna a soma total de uma coluna numérica.
-- AVG(): Retorna a média de uma coluna numérica.
-- COUNT(): Retorna o número de registros em um conjunto de resultados.
-- MAX(): Retorna o valor máximo de uma coluna.
-- MIN(): Retorna o valor mínimo de uma coluna. 

-- Exemplo de uso do GROUP BY:
SELECT departamento, COUNT(*) AS total_funcionarios
FROM funcionarios
GROUP BY departamento; 
-- Agrupa os funcionários por departamento e retorna o número total de funcionários em cada departamento.

-- Outro exemplo de uso do GROUP BY:
SELECT departamento, AVG(salario) AS media_salarios
FROM funcionarios
GROUP BY departamento; 
-- Agrupa os funcionários por departamento e retorna a média dos salários em cada departamento.

-- Outro exemplo de uso do GROUP BY:
SELECT departamento, SUM(salario) AS total_salarios
FROM funcionarios
GROUP BY departamento; 
-- Agrupa os funcionários por departamento e retorna a soma total dos salários em cada departamento.

-- Outro exemplo de uso do GROUP BY:
SELECT departamento, MAX(salario) AS maior_salario
FROM funcionarios
GROUP BY departamento; 
-- Agrupa os funcionários por departamento e retorna o maior salário em cada departamento.

-- Outro exemplo de uso do GROUP BY:
SELECT departamento, MIN(salario) AS menor_salario
FROM funcionarios
GROUP BY departamento; 
-- Agrupa os funcionários por departamento e retorna o menor salário em cada departamento.

------------------------------------------------------------------------------------------

--- HAVING;
-- O comando HAVING é usado para filtrar os resultados de uma consulta que utiliza o GROUP BY, permitindo especificar condições para os grupos de registros.
-- Ele é semelhante ao WHERE, mas é aplicado após a agregação dos dados, ou seja, depois que os registros foram agrupados.

-- Exemplo de uso do HAVING:
SELECT departamento, COUNT(*) AS total_funcionarios -- Retorna o número total de funcionários em cada departamento.
FROM funcionarios
GROUP BY departamento
HAVING COUNT(*) > 5; 
-- Retorna os departamentos que têm mais de 5 funcionários.

-- Outro exemplo de uso do HAVING:
SELECT departamento, AVG(salario) AS media_salarios -- Retorna a média dos salários em cada departamento.
FROM funcionarios
GROUP BY departamento
HAVING AVG(salario) > 4000; 
-- Retorna os departamentos onde a média dos salários é maior que 4000.

-- Outro exemplo de uso do HAVING:
SELECT departamento, SUM(salario) AS total_salarios -- Retorna a soma total dos salários em cada departamento.
FROM funcionarios
GROUP BY departamento
HAVING SUM(salario) > 20000; 
-- Retorna os departamentos onde a soma total dos salários é maior que 20000.

-- Outro exemplo de uso HAVING:
SELECT departamento, MAX(salario) AS maior_salario -- Retorna o maior salário em cada departamento.
FROM funcionarios
GROUP BY departamento
HAVING MAX(salario) > 5000; 
-- Retorna os departamentos onde o maior salário é maior que 5000.

-- Outro exemplo de uso HAVING:
SELECT departamento, MIN(salario) AS menor_salario -- Retorna o menor salário em cada departamento.
FROM funcionarios
GROUP BY departamento
HAVING MIN(salario) < 3000; 
-- Retorna os departamentos onde o menor salário é menor que 3000.

--- Utilizando o HAVING com funções de agregação e operadores lógicos:
SELECT departamento, COUNT(*) AS total_funcionarios -- Retorna o número total de funcionários em cada departamento.
FROM funcionarios
GROUP BY departamento
HAVING COUNT(*) > 5 AND AVG(salario) > 4000; 
-- Retorna os departamentos que têm mais de 5 funcionários e onde a média dos salários é maior que 4000.

-- Outro exemplo de uso do HAVING com funções de agregação e operadores lógicos:
SELECT departamento, SUM(salario) AS total_salarios -- Retorna a soma total dos salários em cada departamento.
FROM funcionarios
GROUP BY departamento
HAVING SUM(salario) > 20000 OR MAX(salario) > 5000; 
-- Retorna os departamentos onde a soma total dos salários é maior que 20000 ou onde o maior salário é maior que 5000.

-- Outro exemplo de uso do HAVING com funções de agregação e operadores lógicos:
SELECT departamento, MIN(salario) AS menor_salario -- Retorna o menor salário em cada departamento.
FROM funcionarios
GROUP BY departamento
HAVING MIN(salario) < 3000 AND NOT MAX(salario) > 5000; 
-- Retorna os departamentos onde o menor salário é menor que 3000 e onde o maior salário não é maior que 5000.

------------------------------------------------------------------------------------------

--- CASE;
-- O comando CASE é usado para criar condições lógicas em uma consulta SQL, permitindo retornar valores diferentes com base em condições específicas.
-- Ele é semelhante a uma estrutura de controle de fluxo em linguagens de programação, como o if-else.

-- Exemplo de uso do CASE:
SELECT nome, salario,
CASE -- Chamada da função, tipo "While" no Phyton
    WHEN salario > 5000 THEN 'Alto' -- Se a condição for verdadeira, retorna 'Alto'
    WHEN salario BETWEEN 3000 AND 5000 THEN 'Médio' -- Se a condição for verdadeira, retorna 'Médio'
    ELSE 'Baixo' -- Se nenhuma das condições anteriores for verdadeira, retorna 'Baixo'
END AS nivel_salario
FROM funcionarios; 
-- Neste exemplo, a consulta retorna o nome, salário e um novo campo "nivel_salario" que classifica o salário como 'Alto', 'Médio' ou 'Baixo' com base nos valores do salário.

SELECT nome, departamento,
CASE departamento
    WHEN 'Vendas' THEN 'Departamento de Vendas'
    WHEN 'Marketing' THEN 'Departamento de Marketing'
    WHEN 'TI' THEN 'Departamento de Tecnologia da Informação'
    ELSE 'Outro Departamento'
END AS nome_departamento
FROM funcionarios; 
-- Neste exemplo, a consulta retorna o nome, departamento e um novo campo "nome_departamento" que fornece uma descrição mais detalhada do departamento com base no valor da coluna "departamento".

--- Usando CASE com todas as funções aprendidas (banco de dados "suco_vendas"):
SELECT EMBALAGEM,
CASE 
    WHEN PRECO_DE_LISTA >= 12 THEN 'PRODUTO CARO' -- Se o preço de lista for maior ou igual a 12, retorna 'PRODUTO CARO'
    WHEN PRECO_DE_LISTA >= 7 AND PRECO_DE_LISTA < 12 THEN 'PRODUTO EM CONTA' -- Se o preço de lista for entre 7 e 12, retorna 'PRODUTO EM CONTA'
    ELSE 'PRODUTO BARATO'  -- Se nenhuma das condições anteriores for verdadeira, retorna 'PRODUTO BARATO'
END AS STATUS_PRECO, AVG(PRECO_DE_LISTA) AS PRECO_MEDIO -- Retorna a embalagem, o status do preço e a média do preço de lista
FROM tabela_de_produtos 
WHERE sabor = 'Manga'
GROUP BY EMBALAGEM,
CASE 
    WHEN PRECO_DE_LISTA >= 12 THEN 'PRODUTO CARO' 
    WHEN PRECO_DE_LISTA >= 7 AND PRECO_DE_LISTA < 12 THEN 'PRODUTO EM CONTA'
    ELSE 'PRODUTO BARATO' 
END 
ORDER BY EMBALAGEM;

------------------------------------------------------------------------------------------

--- JOIN;
-- O comando JOIN é usado para combinar registros de duas ou mais tabelas em um banco de dados com base em uma condição de correspondência entre as tabelas.
-- Existem diferentes tipos de JOIN, como INNER JOIN, LEFT JOIN, RIGHT JOIN, CROSS JOIN e FULL JOIN cada um com uma finalidade específica para determinar quais registros serão incluídos no resultado da consulta.

-- INNER JOIN: Retorna apenas os registros que têm correspondência em ambas as tabelas.

-- Exemplo de uso do INNER JOIN:
SELECT A.MATRICULA, A.NOME, B.NUMERO_DA_NOTA_FISCAL FROM -- Seleciona a matrícula, nome e número da nota fiscal.
tabela_de_vendedores A -- Tabela "A" é um alias para a tabela de vendedores (pode utilizar o "AS" no meio).
INNER JOIN notas_fiscais B -- Tabela "B" é um alias para a tabela de notas fiscais (pode utilizar o "AS" no meio).
-- Perceba que chamamos a tabela "tabela_de_vendedores" de "A" e a tabela "notas_fiscais" de "B", para facilitar a escrita do código, mas isso é opcional.

--- Também podemos usar outros comandos com JOIN, como o GROUP BY;
SELECT A.MATRICULA, A.NOME, COUNT(B.NUMERO_DA_NOTA_FISCAL) AS TOTAL_VENDAS FROM -- Seleciona a matrícula, nome e total de vendas.
tabela_de_vendedores A -- Tabela "A" é a tabela de vendedores.
INNER JOIN notas_fiscais B -- Tabela "B" é a tabela de notas fiscais
ON A.MATRICULA = B.MATRICULA_VENDEDOR -- Condição de correspondência entre as tabelas, onde a matrícula do vendedor na tabela "A" deve corresponder à matrícula do vendedor na tabela "B".
GROUP BY A.MATRICULA, A.NOME; 
-- Agrupa os resultados por matrícula e nome do vendedor para calcular o total de vendas para cada vendedor.

--------------------------------------------------------------

-- LEFT JOIN: Retorna todos os registros da tabela à esquerda (tabela "A") e os registros correspondentes da tabela à direita (tabela "B"). Se não houver correspondência, os campos da tabela "B" serão preenchidos com NULL.

-- Exemplo de uso do LEFT JOIN:
SELECT A.NOME, B.HOBBY FROM 
TABELA_ESQUERDA AS A -- Resolvi utilizar o "AS" para deixar mais claro, mas ele é opcional.
LEFT JOIN TABELA_DIREITA AS B -- Resolvi utilizar o "AS" para deixar mais claro, mas ele é opcional.
ON A.IDENTIFICADOR = B.IDENTIFICADOR; 
-- Retorna o nome da tabela "A" e o hobby da tabela "B", incluindo todos os registros da tabela "A" e os hobbies correspondentes da tabela "B". 
-- Se um registro da tabela "A" não tiver um hobby correspondente na tabela "B", o campo do hobby será preenchido com NULL.

--------------------------------------------------------------

-- RIGHT JOIN: Retorna todos os registros da tabela à direita (tabela "B") e os registros correspondentes da tabela à esquerda (tabela "A"). Se não houver correspondência, os campos da tabela "A" serão preenchidos com NULL.

-- Exemplo de uso do RIGHT JOIN:
SELECT A.NOME, B.HOBBY FROM 
TABELA_ESQUERDA AS A
RIGHT JOIN TABELA_DIREITA AS B
ON A.IDENTIFICADOR = B.IDENTIFICADOR; 
-- Retorna o nome da tabela "A" e o hobby da tabela "B", incluindo todos os registros da tabela "B" e os nomes correspondentes da tabela "A".
-- Se um registro da tabela "B" não tiver um nome correspondente na tabela "A", o campo do nome será preenchido com NULL.

--------------------------------------------------------------

-- CROSS JOIN: Retorna o produto cartesiano de ambas as tabelas, ou seja, combina cada registro da tabela "A" com cada registro da tabela "B".

-- Exemplo de uso do CROSS JOIN:
SELECT A.NOME, B.HOBBY FROM
TABELA_ESQUERDA A, TABELA_DIREITA B; 
-- Retorna o nome da tabela "A" e o hobby da tabela "B", combinando cada registro da tabela "A" com cada registro da tabela "B".
-- O CROSS JOIN pode resultar em um número muito grande de registros, dependendo do número de registros em cada tabela, pois combina cada registro de uma tabela com todos os registros da outra tabela.
-- Fique atento com a chamada da função CROSS JOIN, ela pode ser feita de duas formas: usando a palavra-chave CROSS JOIN ou simplesmente listando as tabelas separadas por vírgula, como no exemplo acima. Ambas as formas produzem o mesmo resultado, que é o produto cartesiano das duas tabelas.

--------------------------------------------------------------

-- FULL JOIN: Retorna todos os registros quando há uma correspondência em uma das tabelas. Se não houver correspondência, os campos da tabela sem correspondência serão preenchidos com NULL.

-- Exemplo de uso do FULL JOIN:
SELECT A.NOME, B.HOBBY FROM 
TABELA_ESQUERDA A
FULL JOIN TABELA_DIREITA B
ON A.IDENTIFICADOR = B.IDENTIFICADOR; 
-- Retorna o nome da tabela "A" e o hobby da tabela "B", incluindo todos os registros de ambas as tabelas.
-- Se um registro da tabela "A" não tiver um hobby correspondente na tabela "B", o campo do hobby será preenchido com NULL. Se um registro da tabela "B" não tiver um nome correspondente na tabela "A", o campo do nome será preenchido com NULL.

--- Detalhe crucial do FULL JOIN:
-- O MySQL não suporta o FULL JOIN diretamente, mas você pode simular um FULL JOIN usando uma combinação de LEFT JOIN e RIGHT JOIN com a cláusula UNION.
SELECT A.NOME, B.HOBBY FROM
TABELA_ESQUERDA A
LEFT JOIN TABELA_DIREITA B ON A.IDENTIFICADOR = B.IDENTIFICADOR
UNION
SELECT A.NOME, B.HOBBY FROM
TABELA_ESQUERDA A
RIGHT JOIN TABELA_DIREITA B ON A.IDENTIFICADOR = B.IDENTIFICADOR; 
-- Retorna o nome da tabela "A" e o hobby da tabela "B", incluindo todos os registros de ambas as tabelas.

------------------------------------------------------------------------------------------

--- UNION e UNION ALL;
--  As palavras-chave UNION e UNION ALL são usadas para combinar os resultados de duas ou mais consultas SELECT em um único conjunto de resultados

-- UNION: Retorna apenas os registros distintos (sem duplicatas) do conjunto de resultados combinado.
SELECT nome FROM funcionarios WHERE departamento = 'Vendas' -- Seleciona os nomes dos funcionários do departamento de Vendas
UNION
SELECT nome FROM funcionarios WHERE departamento = 'Marketing'; -- Seleciona os nomes dos funcionários do departamento de Marketing
-- O resultado dessa consulta será uma lista de nomes de funcionários que estão nos departamentos de Vendas ou Marketing, sem duplicatas.

-- UNION ALL: Retorna todos os registros do conjunto de resultados combinado, incluindo duplicatas.
SELECT nome FROM funcionarios WHERE departamento = 'Vendas' -- Seleciona os nomes dos funcionários do departamento de Vendas
UNION ALL
SELECT nome FROM funcionarios WHERE departamento = 'Marketing'; -- Seleciona os nomes dos funcionários do departamento de Marketing
-- O resultado dessa consulta será uma lista de nomes de funcionários que estão nos departamentos de Vendas ou Marketing, incluindo duplicatas se houver funcionários com o mesmo nome em ambos os departamentos.

------------------------------------------------------------------------------------------

--- SUBQUERY (SUBCONSULTA);
-- Uma subquery, ou consulta aninhada, é uma consulta SQL que está dentro de outra consulta SQL. Ela é usada para realizar operações complexas, como filtrar resultados com base em condições que dependem de outra consulta.

-- Exemplo de uso da SUBQUERY:
SELECT nome, salario FROM funcionarios
WHERE salario > (SELECT AVG(salario) FROM funcionarios); 
-- Retorna os nomes e salários dos funcionários cujo salário é maior que a média salarial de todos os funcionários. A subquery (SELECT AVG(salario) FROM funcionarios) calcula a média salarial, e a consulta externa seleciona os funcionários com salário superior a essa média.

-- Outro exemplo de uso da SUBQUERY:
SELECT nome FROM funcionarios
WHERE departamento = (SELECT departamento FROM funcionarios WHERE nome = 'João'); 
-- Retorna os nomes dos funcionários que estão no mesmo departamento que o funcionário chamado 'João'. A subquery (SELECT departamento FROM funcionarios WHERE nome = 'João') retorna o departamento de João, e a consulta externa seleciona os funcionários que pertencem a esse departamento.

-- Outro exemplo de uso da SUBQUERY:
SELECT nome FROM funcionarios
WHERE id IN (SELECT id_funcionario FROM projetos WHERE nome_projeto = 'Projeto X'); 
-- Retorna os nomes dos funcionários que estão envolvidos no 'Projeto X'. A subquery (SELECT id_funcionario FROM projetos WHERE nome_projeto = 'Projeto X') retorna os IDs dos funcionários associados ao 'Projeto X', e a consulta externa seleciona os nomes desses funcionários com base nos IDs retornados pela subquery.

-- Outro exemplo de uso da SUBQUERY:
SELECT nome FROM 
(SELECT nome FROM funcionarios WHERE salario > 4000) AS subconsulta
WHERE nome LIKE 'A%'; 
-- Retorna os nomes dos funcionários que têm salário maior que 4000 e cujo nome começa com a letra 'A'. A subquery (SELECT nome FROM funcionarios WHERE salario > 4000) retorna os nomes dos funcionários com salário superior a 4000, e a consulta externa filtra esses nomes para incluir apenas aqueles que começam com 'A'.

-- Outro exemplo (tabela "suco_vendas"):
SELECT X.EMBALAGEM, X.PRECO_MAXIMO FROM 
(SELECT EMBALAGEM, MAX(PRECO_DE_LISTA) AS PRECO_MAXIMO FROM tabela_de_produtos
GROUP BY EMBALAGEM) X WHERE X.PRECO_MAXIMO >= 10; -- Repare que colocamos um alias "X" para a subquery, isso é necessário para referenciar os resultados da subquery na consulta externa.
-- Retorna as embalagens e os preços máximos dos produtos que têm um preço de lista maior ou igual a 10. A subquery (SELECT EMBALAGEM, MAX(PRECO_DE_LISTA) AS PRECO_MAXIMO FROM tabela_de_produtos GROUP BY EMBALAGEM) calcula o preço máximo para cada embalagem, e a consulta externa filtra esses resultados para incluir apenas aqueles com preço máximo maior ou igual a 10.

------------------------------------------------------------------------------------------

-- VISÃO (VIEW);
-- Uma visão (VIEW) é uma tabela virtual baseada no resultado de uma consulta SQL. Ela não armazena os dados fisicamente, mas sim a definição da consulta que gera os dados. 
-- As visões são usadas para simplificar consultas complexas, fornecer uma camada de abstração e melhorar a segurança dos dados.

-- Exemplo de criação de uma visão:
CREATE VIEW funcionarios_vendas AS
SELECT f.nome, f.departamento, f.salario, p.nome_projeto
FROM funcionarios f
JOIN projetos p ON f.id = p.id_funcionario; 
-- Esta visão chamada "funcionarios_vendas" combina informações da tabela "funcionarios" e "projetos" para mostrar o nome, departamento, salário e nome do projeto de cada funcionário.

-- Vamos a tabela "suco_vendas" para exemplificar melhor o uso da visão, passo a passo:
SELECT EMBALAGEM, MAX(PRECO_DE_LISTA) AS MAIOR_PRECO FROM tabela_de_produtos
GROUP BY EMBALAGEM;
-- Esta consulta retorna o preço máximo para cada embalagem na tabela "tabela_de_produtos".

-- Vamos usar o mesmo SELECT como uma subconsulta para ver apenas os preços máximos que são maiores ou iguais a 10:
SELECT X.EMBALAGEM, X.MAIOR_PRECO FROM
(SELECT EMBALAGEM, MAX(PRECO_DE_LISTA) AS MAIOR_PRECO FROM tabela_de_produtos
GROUP BY EMBALAGEM) X WHERE X.MAIOR_PRECO >= 10;

-- Agora, vamos criar uma visão para simplificar essa consulta:
CREATE VIEW 'VW_MAIORES_EMBALAGENS' AS
SELECT EMBALAGEM, MAX(PRECO_DE_LISTA) AS MAIOR_PRECO FROM tabela_de_produtos
GROUP BY EMBALAGEM
WHERE MAIOR_PRECO >= 10; -- Esta visão chamada "VW_MAIORES_EMBALAGENS" retorna as embalagens e os preços máximos dos produtos que têm um preço de lista maior ou igual a 10.

-- Agora, podemos consultar a visão diretamente para obter os resultados:
SELECT X.EMBALAGEM, X.MAIOR_PRECO FROM
vw_maiores_embalagens X WHERE X.MAIOR_PRECO >= 10;
-- Esta consulta retorna as embalagens e os preços máximos dos produtos que têm um preço de lista maior ou igual a 10, utilizando a visão "VW_MAIORES_EMBALAGENS" para simplificar a consulta.

-- Usando a função JOIN com a visão:
SELECT A.NOME_DO_PRODUTO, A.EMBALAGEM, A.PRECO_DE_LISTA, X.MAIOR_PRECO
FROM tabela_de_produtos A INNER JOIN vw_maiores_embalagens X
ON A.EMBALAGEM = X.EMBALAGEM;
-- Esta consulta retorna o nome do produto, embalagem, preço de lista e o preço máximo para os produtos que têm um preço de lista maior ou igual a 10, utilizando a visão "VW_MAIORES_EMBALAGENS" para obter os preços máximos e fazendo um INNER JOIN com a tabela "tabela_de_produtos" para obter as informações adicionais dos produtos.

-- Podemos riar um indicador de porcentagem para saber o quão mais barato está cada produto, comparado ao valor da coluna "MAIOR_PRECO":
SELECT A.NOME_DO_PRODUTO, A.EMBALAGEM, A.PRECO_DE_LISTA, X.MAIOR_PRECO,
((A.PRECO_DE_LISTA / X.MAIOR_PRECO) -1) * 100 AS PERCENTUAL
FROM tabela_de_produtos A INNER JOIN vw_maiores_embalagens X
ON A.EMBALAGEM = X.EMBALAGEM;
-- Esta consulta retorna o nome do produto, embalagem, preço de lista, preço máximo e o percentual de diferença entre o preço de lista e o preço máximo para os produtos que têm um preço de lista maior ou igual a 10, utilizando a visão "VW_MAIORES_EMBALAGENS" para obter os preços máximos e fazendo um INNER JOIN com a tabela "tabela_de_produtos" para obter as informações adicionais dos produtos.

------------------------------------------------------------------------------------------

--- FUNÇÕES DE STRING;
-- As funções de string são usadas para manipular e formatar dados de texto em consultas SQL. 
-- Elas permitem realizar operações como concatenar, extrair partes de uma string, converter para maiúsculas ou minúsculas, entre outras.

--- Algumas das funções de string mais comuns incluem:

-- CONCAT(): Concatena duas ou mais strings em uma única string.

-- Exemplo de uso do CONCAT:
SELECT CONCAT("SQL ", "Tutorial ", "is ", "fun!") AS ConcatenatedString; 
-- Esta consulta utiliza a função CONCAT para concatenar várias strings em uma única string, resultando em "SQL Tutorial is fun!".

-- Utilizando o CONCAT para combinar o nome e o departamento dos funcionários:
SELECT nome, departamento, CONCAT(nome, ' - ', departamento) AS nome_departamento
FROM funcionarios; 
-- Esta consulta retorna o nome, departamento e uma nova coluna "nome_departamento" que combina o nome do funcionário com o departamento usando a função CONCAT. 

-- Mais um exemplo de uso do CONCAT, dessa vez utilizando a tabela "suco_vendas":
SELECT CONCAT(NOME, ' (', CPF, ') ') AS RESULTADO FROM TABELA_DE_CLIENTES; 
-- Esta consulta utiliza a função CONCAT para combinar o nome do cliente com seu CPF, formatando o resultado como "Nome (CPF)". O resultado é retornado na coluna "RESULTADO".

--------------------------------------------------------------

-- UPPER() ou UCASE(): Converte uma string para maiúsculas.

-- Exemplo de uso do UPPER:
SELECT UPPER("SQL Tutorial is FUN!");
-- Esta consulta utiliza a função UPPER para converter a string "SQL Tutorial is FUN!" para maiúsculas, resultando em "SQL TUTORIAL IS FUN!".

SELECT UCASE("SQL Tutorial is FUN!");
-- Esta consulta utiliza a função UCASE para converter a string "SQL Tutorial is FUN!" para maiúsculas, resultando em "SQL TUTORIAL IS FUN!".

-- Mais um exemplo do uso do UPPER:
SELECT UPPER('olá, tudo bem?') AS RESULTADO;
-- Esta consulta utiliza a função UPPER para converter a string 'olá, tudo bem?' para maiúsculas, resultando em 'OLÁ, TUDO BEM?'.

-- Utilizando o UPPER para converter os nomes dos funcionários para maiúsculas:
SELECT nome, UPPER(nome) AS nome_maiusculo
FROM funcionarios;
-- Esta consulta retorna o nome do funcionário e uma nova coluna "nome_maiusculo" que contém o nome do funcionário convertido para maiúsculas usando a função UPPER.

--------------------------------------------------------------

-- LOWER() ou LCASE(): Converte uma string para minúsculas.

-- Exemplo de uso do LOWER:
SELECT LOWER("SQL Tutorial is FUN!");
-- Esta consulta utiliza a função LOWER para converter a string "SQL Tutorial is FUN!" para minúsculas, resultando em "sql tutorial is fun!".

SELECT LCASE("SQL Tutorial is FUN!");
-- Esta consulta utiliza a função LCASE para converter a string "SQL Tutorial is FUN!" para minúsculas, resultando em "sql tutorial is fun!".

-- Mais um exemplo do uso do LOWER:
SELECT LOWER('OLÁ, TUDO BEM?') AS RESULTADO;
-- Esta consulta utiliza a função LOWER para converter a string 'OLÁ, TUDO BEM?' para minúsculas, resultando em 'olá, tudo bem?'.
--------------------------------------------------------------

-- SUBSTRING(): Extrai uma parte específica de uma string.

-- Exemplo de uso do SUBSTRING:
SELECT SUBSTRING("SQL Tutorial", 5, 3) AS ExtractString;
-- Esta consulta utiliza a função SUBSTRING para extrair uma parte da string "SQL Tutorial". 
-- O segundo argumento (5) indica a posição inicial da extração (começando do 1), e o terceiro argumento (3) indica o número de caracteres a serem extraídos.
-- O resultado será "Tut", que são os caracteres a partir da posição 5 com um comprimento de 3.

-- Outro exemplo de uso do SUBSTRING:
SELECT SUBSTRING('OLÁ, TUDO BEM?', 6) AS RESULTADO;
-- Esta consulta utiliza a função SUBSTRING para extrair uma parte da string 'OLÁ, TUDO BEM?'.
-- O segundo argumento (6) indica a posição inicial da extração (começando do 1) e, como o terceiro argumento não foi especificado, a função irá extrair todos os caracteres a partir da posição 6 até o final da string.
-- O resultado será 'TUDO BEM?', que são os caracteres a partir da posição 6 até o final da string.

--------------------------------------------------------------

-- LENGTH(): Retorna o comprimento de uma string.

-- Exemplo de uso do LENGTH:
SELECT LENGTH("SQL Tutorial") AS LengthOfString;
-- Esta consulta utiliza a função LENGTH para calcular o comprimento da string "SQL Tutorial". 
-- O resultado será 12, que é o número de caracteres na string, incluindo espaços.

--------------------------------------------------------------

-- TRIM(): Remove espaços em branco do início e do fim de uma string.

-- Exemplo de uso do TRIM:
SELECT TRIM('    SQL Tutorial    ') AS TrimmedString;
-- Esta consulta utiliza a função TRIM para remover os espaços em branco do início e do fim da string '    SQL Tutorial    '.
-- O resultado será 'SQL Tutorial', que é a string original sem os espaços em branco extras no início e no fim.

-- Outro exemplo de uso do TRIM:
SELECT TRIM('    OLÁ    ') AS RESULTADO;
-- Esta consulta utiliza a função TRIM para remover os espaços em branco do início e do fim da string '    OLÁ    '.
-- O resultado será 'OLÁ', que é a string original sem os espaços em branco extras no início e no fim.

--------------------------------------------------------------

-- LTRIM(): Remove espaços em branco do início de uma string.

-- Exemplo de uso do LTRIM:
SELECT LTRIM("     SQL Tutorial") AS LeftTrimmedString;
-- Esta consulta utiliza a função LTRIM para remover os espaços em branco do início da string "     SQL Tutorial".
-- O resultado será "SQL Tutorial", que é a string original sem os espaços em branco extras no início.

-- Outro exemplo de uso do LTRIM:
SELECT LTRIM('    OLÁ') AS RESULTADO;
-- Esta consulta utiliza a função LTRIM para remover os espaços em branco do início da string '    OLÁ'.
-- O resultado será 'OLÁ', que é a string original sem os espaços em branco extras no início.

--------------------------------------------------------------

-- RTRIM(): Remove espaços em branco do fim de uma string.

-- Exemplo de uso do RTRIM:
SELECT RTRIM("SQL Tutorial     ") AS RightTrimmedString;
-- Esta consulta utiliza a função RTRIM para remover os espaços em branco do fim da string "SQL Tutorial     ".
-- O resultado será "SQL Tutorial", que é a string original sem os espaços em branco extras no fim.

-- Outro exemplo de uso do RTRIM:
SELECT RTRIM('OLÁ     ') AS RESULTADO;
-- Esta consulta utiliza a função RTRIM para remover os espaços em branco do fim da string 'OLÁ     '.
-- O resultado será 'OLÁ', que é a string original sem os espaços em branco extras no fim.

--------------------------------------------------------------

-- Combinando funções de string:
SELECT nome, UPPER(nome) AS nome_maiusculo, LOWER(nome) AS nome_minusculo, CONCAT(nome, ' - ', departamento) AS nome_departamento
FROM funcionarios; 
-- Esta consulta retorna o nome do funcionário, o nome em maiúsculas, o nome em minúsculas e uma concatenação do nome com o departamento,
-- utilizando as funções UPPER, LOWER e CONCAT para manipular os dados de texto.

-- Mais combinações de funções de string:
SELECT nome, LENGTH(nome) AS comprimento_nome, TRIM(nome) AS nome_sem_espacos, SUBSTRING(nome, 1, 3) AS primeiros_tres_caracteres
FROM funcionarios; 
-- Esta consulta retorna o nome do funcionário, o comprimento do nome, o nome sem espaços em branco no início e no fim, e os primeiros três caracteres do nome, 
-- utilizando as funções LENGTH, TRIM e SUBSTRING para manipular os dados de texto.

-- Outro exemplo de combinação de funções de string:
SELECT nome, CONCAT(UPPER(nome), ' - ', LOWER(departamento)) AS nome_departamento_formatado
FROM funcionarios;
-- Esta consulta retorna o nome do funcionário e uma concatenação do nome em maiúsculas com o departamento em minúsculas, 
-- utilizando as funções UPPER, LOWER e CONCAT para formatar os dados de texto.

------------------------------------------------------------------------------------------

--- FUNÇÕES DE DATAS;
-- As funções de datas são usadas para manipular e formatar dados de data e hora em consultas SQL.
-- Elas permitem realizar operações como extrair partes de uma data, calcular diferenças entre datas, formatar datas em diferentes formatos, entre outras.

-- Algumas das funções de datas mais comuns incluem: 

-- NOW(): Retorna a data e hora atuais do sistema.

-- Exemplo de uso do NOW:
SELECT NOW() AS DataHoraAtual;
-- Esta consulta utiliza a função NOW para obter a data e hora atuais do sistema, retornando o resultado na coluna "DataHoraAtual".

--------------------------------------------------------------

-- ADDTIME(): Adiciona um intervalo de tempo a uma data ou hora.

-- Exemplo de uso do ADDTIME:
SELECT ADDTIME(NOW(), '02:30:00') AS DataHoraFutura;
-- Esta consulta utiliza a função ADDTIME para adicionar um intervalo de 2 horas e 30 minutos à data e hora atuais retornadas pela função NOW, resultando em uma data e hora futura.

-- Outro exemplo de uso do ADDTIME:
SELECT ADDTIME('2024-06-01 10:00:00', '01:15:00') AS DataHoraFutura;
-- Esta consulta utiliza a função ADDTIME para adicionar um intervalo de 1 hora e 15 minutos à data e hora '2024-06-01 10:00:00', resultando em '2024-06-01 11:15:00'.

--------------------------------------------------------------

-- ADDDATE(): Adiciona um intervalo de dias a uma data.

-- Exemplo de uso do ADDDATE:
SELECT ADDDATE(CURDATE(), INTERVAL 7 DAY) AS DataFutura;
-- Esta consulta utiliza a função ADDDATE para adicionar um intervalo de 7 dias à data atual retornada pela função CURDATE, resultando em uma data futura.

-- Outro exemplo de uso do ADDDATE:
SELECT ADDDATE('2024-06-01', INTERVAL 2 WEEK) AS DataFutura;
-- Esta consulta utiliza a função ADDDATE para adicionar um intervalo de 2 semanas à data '2024-06-01', resultando em '2024-06-15'.

--------------------------------------------------------------

-- DATEDIFF(): Retorna a diferença em dias entre duas datas.

-- Exemplo de uso do DATEDIFF:
SELECT DATEDIFF('2024-06-30', '2024-06-01') AS DiferencaDias;
-- Esta consulta utiliza a função DATEDIFF para calcular a diferença em dias entre as datas '2024-06-30' e '2024-06-01', resultando em 29 dias.


-- Outro exemplo de uso do DATEDIFF:
SELECT DATEDIFF(CURDATE(), '2024-01-01') AS DiasDesdeAnoNovo;
-- Esta consulta utiliza a função DATEDIFF para calcular a diferença em dias entre a data atual retornada pela função CURDATE e a data '2024-01-01', resultando no número de dias desde o início do ano.

--------------------------------------------------------------

-- TIMESTAMPDIFF(): Retorna a diferença entre duas datas em uma unidade de tempo especificada (como segundos, minutos, horas, dias, etc.).

-- Exemplo de uso do TIMESTAMPDIFF:
SELECT TIMESTAMPDIFF(HOUR, '2024-06-01 10:00:00', '2024-06-01 15:30:00') AS DiferencaHoras;
-- Esta consulta utiliza a função TIMESTAMPDIFF para calcular a diferença em horas entre as datas '2024-06-01 10:00:00' e '2024-06-01 15:30:00', resultando em 5 horas.

-- Outro exemplo de uso do TIMESTAMPDIFF:
SELECT TIMESTAMPDIFF(DAY, '2024-01-01', CURDATE()) AS DiasDesdeAnoNovo;
-- Esta consulta utiliza a função TIMESTAMPDIFF para calcular a diferença em dias entre a data '2024-01-01' e a data atual retornada pela função CURDATE, resultando no número de dias desde o início do ano.

-- Outro exemplo de uso do TIMESTAMPDIFF:
SELECT TIMESTAMPDIFF(MINUTE, '2024-06-01 10:00:00', '2024-06-01 15:30:00') AS DiferencaMinutos;
-- Esta consulta utiliza a função TIMESTAMPDIFF para calcular a diferença em minutos entre as datas '2024-06-01 10:00:00' e '2024-06-01 15:30:00', resultando em 330 minutos.

-- Outro exemplo de uso do TIMESTAMPDIFF:
SELECT TIMESTAMPDIFF(SECOND, '2024-06-01 10:00:00', '2024-06-01 15:30:00') AS DiferencaSegundos;
-- Esta consulta utiliza a função TIMESTAMPDIFF para calcular a diferença em segundos entre as datas '2024-06-01 10:00:00' e '2024-06-01 15:30:00', resultando em 19800 segundos.

--------------------------------------------------------------

-- CURDATE(): Retorna a data atual do sistema.

-- Exemplo de uso do CURDATE:
SELECT CURDATE() AS DataAtual;
-- Esta consulta utiliza a função CURDATE para obter a data atual do sistema, retornando o resultado na coluna "DataAtual".

--------------------------------------------------------------

-- CURTIME(): Retorna a hora atual do sistema.

-- Exemplo de uso do CURTIME:
SELECT CURTIME() AS HoraAtual;
-- Esta consulta utiliza a função CURTIME para obter a hora atual do sistema, retornando o resultado na coluna "HoraAtual".

--------------------------------------------------------------

-- CURRENT_TIME(): Retorna a hora atual do sistema (sem a data).

-- Exemplo de uso do CURRENT_TIME:
SELECT CURRENT_TIME() AS HoraAtual;
-- Esta consulta utiliza a função CURRENT_TIME para obter a hora atual do sistema, retornando o resultado na coluna "HoraAtual".

--------------------------------------------------------------

-- CURRENT_TIMESTAMP(): Retorna a data e hora atuais do sistema.

-- Exemplo de uso do CURRENT_TIMESTAMP:
SELECT CURRENT_TIMESTAMP() AS DataHoraAtual;
-- Esta consulta utiliza a função CURRENT_TIMESTAMP para obter a data e hora atuais do sistema, retornando o resultado na coluna "DataHoraAtual".

--------------------------------------------------------------

-- CURRENT_DATE(): Retorna a data atual do sistema (sem a hora).

-- Exemplo de uso do CURRENT_DATE:
SELECT CURRENT_DATE() AS DataAtual;
-- Esta consulta utiliza a função CURRENT_DATE para obter a data atual do sistema, retornando o resultado na coluna "DataAtual". 
-- A função CURRENT_DATE é equivalente à função CURDATE, ambas retornam apenas a data atual sem a hora.

--------------------------------------------------------------

-- DATE(): Extrai a parte da data de um valor de data e hora.

-- Exemplo de uso do DATE:
SELECT DATE(NOW()) AS DataAtual;
-- Esta consulta utiliza a função DATE para extrair apenas a parte da data do valor retornado pela função NOW, resultando na data atual sem a hora.

--------------------------------------------------------------

-- YEAR(): Extrai o ano de um valor de data.

-- Exemplo de uso do YEAR:
SELECT YEAR(CURDATE()) AS AnoAtual;
-- Esta consulta utiliza a função YEAR para extrair o ano da data atual retornada pela função CURDATE, resultando no ano atual.

--------------------------------------------------------------

-- MONTH(): Extrai o mês de um valor de data.

-- Exemplo de uso do MONTH:
SELECT MONTH(CURDATE()) AS MesAtual;
-- Esta consulta utiliza a função MONTH para extrair o mês da data atual retornada pela função CURDATE, resultando no mês atual.

--------------------------------------------------------------

-- DAY(): Extrai o dia de um valor de data.

-- Exemplo de uso do DAY:
SELECT DAY(CURDATE()) AS DiaAtual;
-- Esta consulta utiliza a função DAY para extrair o dia da data atual retornada pela função CURDATE, resultando no dia atual.

--------------------------------------------------------------

-- DAYNAME(): Retorna o nome do dia da semana para um valor de data.

-- Exemplo de uso do DAYNAME:
SELECT DAYNAME(CURDATE()) AS NomeDoDia;
-- Esta consulta utiliza a função DAYNAME para obter o nome do dia da semana correspondente à data atual retornada pela função CURDATE, resultando no nome do dia atual.

--------------------------------------------------------------

-- MONTHNAME(): Retorna o nome do mês para um valor de data.

-- Exemplo de uso do MONTHNAME:
SELECT MONTHNAME(CURDATE()) AS NomeDoMes;
-- Esta consulta utiliza a função MONTHNAME para obter o nome do mês correspondente à data atual retornada pela função CURDATE, resultando no nome do mês atual.

--------------------------------------------------------------

-- YEAR(): Retorna o ano de um valor de data.

-- Exemplo de uso do YEAR:
SELECT YEAR(CURDATE()) AS AnoAtual;
-- Esta consulta utiliza a função YEAR para extrair o ano da data atual retornada pela função CURDATE, resultando no ano atual.

------------------------------------------------------------------------------------------

--- FUNÇÕES MATEMÁTICAS;
-- As funções matemáticas são usadas para realizar cálculos numéricos diretamente nos dados armazenados no banco. 
-- Elas permitem manipular valores para arredondamentos, cálculos de precisão e estatísticas básicas antes mesmo dos dados chegarem ao Python ou Excel.

-- Abriremos um novo script e começaremos com um exemplo de expressão numérica:
SELECT (23+((25-2)/2)*45) AS RESULTADO;
-- Executando o código, obtemos o resultado 540,5.

-- Principais Funções Matemáticas:

-- 1. ROUND (Arredondamento): Arredonda um número para um número específico de casas decimais. Muito usado em valores monetários.

-- Exemplo de uso do ROUND:
SELECT ROUND(12.33333232323) AS RESULTADO;
-- Arredondará para 12 (Pois a primeira casa decimal é menor que 5).

-- Outro exemplo de uso do ROUND:
SELECT ROUND(12.7777232323) AS RESULTADO;
-- Arredondará para 13 (Pois a primeira casa decimal é maior ou igual a 5).

--------------------------------------------------------------

-- 2. FLOOR (Arredondamento para baixo): Retorna o maior valor inteiro menor ou igual ao número. "Corta" as casas decimais.

-- Exemplo de uso do FLOOR:
SELECT FLOOR(12.7777232323) AS RESULTADO;
-- Retorna 12 (Ignora que está perto de 13 e "puxa" para baixo).

--------------------------------------------------------------

-- 3. CEIL ou CEILING (Arredondamento para cima): Retorna o menor valor inteiro maior ou igual ao número.

-- Exemplo de uso do CEILING:
SELECT CEILING(12.33333232323) AS RESULTADO;
-- Retorna 13 (Mesmo estando perto de 12, ele "força" o arredondamento para cima).

--------------------------------------------------------------

-- 4. ABS (Valor Absoluto): Retorna o valor positivo de um número, ignorando o sinal de menos. Útil para calcular diferenças.

-- Exemplo de uso do ABS:
SELECT ABS(10 - 25) AS DIFERENCA; 
-- Retorna 15 (Transforma o resultado negativo em positivo).

--------------------------------------------------------------

-- 5. SQRT (Raiz Quadrada): Retorna a raiz quadrada do número.

-- Exemplo de uso do SQRT:
SELECT SQRT(64) AS RESULTADO; 
-- Retorna 8.

--------------------------------------------------------------

-- 6. POWER (Potência): Eleva um número a uma determinada potência.

-- Exemplo de uso do POWER:
SELECT POWER(2, 3) AS RESULTADO; 
-- Retorna 8 (Cálculo: 2 * 2 * 2).

--------------------------------------------------------------

-- 7. RAND (Aleatório): Retorna um número aleatório.

-- Exemplo de uso do RAND:
SELECT RAND() AS NUMERO_ALEATORIO;
-- Gera um número decimal aleatório entre 0 e 1 (Ex: 0.8423...).

--------------------------------------------------------------

-- Vamos utilizar um novo exemplo agora utilizando a tabela "suco_vendas".
-- Primeiro, vamos selecionar o número, a quantidade e o preço dos registros da tabela "itens_notas_fiscais";
SELECT NUMERO, QUANTIDADE, PRECO
FROM ITENS_NOTAS_FISCAIS;

-- Para descobrir o faturamento, basta multiplicar a quantidade pelo preço de cada item. 
-- Podemos apresentar esse resultado numa nova coluna chamada "faturamento";
SELECT NUMERO, QUANTIDADE, PRECO, QUANTIDADE * PRECO AS FATURAMENTO
FROM ITENS_NOTAS_FISCAIS;

-- Veremos, no entanto, que os valores na coluna de faturamento vêm com muitas casas decimais. 
-- Como estamos lidando com preços, bastaria que tivessem apenas duas casas. Como solução, utilizaremos a função ROUND();
SELECT NUMERO, QUANTIDADE, PRECO, ROUND(QUANTIDADE * PRECO, 2) AS FATURAMENTO
FROM ITENS_NOTAS_FISCAIS;

------------------------------------------------------------------------------------------

--- CONVERSÃO DE DADOS;
-- A conversão de dados é o processo de transformar um dado de um tipo (ex: Data ou Número) para outro (ex: Texto) durante a consulta. 
-- Isso é essencial pois certas funções só aceitam tipos específicos de dados, e não queremos alterar a estrutura original da tabela.

-- DATE_FORMAT (Conversão de Data para Texto):
-- Usada para formatar datas em strings seguindo um padrão específico. 

-- Principais especificadores: 
-- %d: Dia do mês com dois dígitos (01 até 31).
-- %e: Dia do mês com um ou dois dígitos (1 até 31).
-- %m: Mês com dois dígitos (01 até 12).
-- %c: Mês com um ou dois dígitos (1 até 12).
-- %M: Nome do mês por extenso (January, February...).
-- %b: Nome do mês abreviado (Jan, Feb...).
-- %Y: Ano com quatro dígitos (2026).
-- %y: Ano com dois dígitos (26).
-- %H: Hora com dois dígitos no formato 24h (00 até 23).
-- %h: Hora com dois dígitos no formato 12h (01 até 12).
-- %i: Minutos com dois dígitos (00 até 59).
-- %s: Segundos com dois dígitos (00 até 59).
-- %W: Nome do dia da semana por extenso (Monday, Tuesday...).
-- %a: Nome do dia da semana abreviado (Mon, Tue...).
-- %U: Número da semana no ano (00 até 53).

-- Exemplo de uso do DATE_FORMAT (Formato Brasileiro):
SELECT DATE_FORMAT(CURRENT_TIMESTAMP(), '%d/%m/%Y') AS DATA_BR;
-- Retorna a data atual no formato dia/mês/ano completo (Ex: 13/03/2026).

-- Outro exemplo de uso do DATE_FORMAT (Relatório com Dia da Semana):
SELECT DATE_FORMAT(CURRENT_TIMESTAMP(), '%W, %d de %m de %Y') AS DATA_EXTENSO;
-- Retorna o dia da semana e a data formatada (Ex: Friday, 13 de 03 de 2026).

--------------------------------------------------------------

-- CONCAT():
-- Ocorre quando o próprio MySQL converte o dado automaticamente para que uma função funcione.

-- Exemplo do uso do CONCAT():
SELECT CONCAT('O dia de hoje é: ', CURRENT_TIMESTAMP()) AS RESULTADO;
-- O CONCAT (função de texto) aceita a Data e a transforma em texto automaticamente, ou seja, retorna a data atual e o horário.
-- Retorno: "O dia de hoje é: 2026-03-13 13:20:00"

-- Outro exemplo de CONCAT(), agora utilizando DATE_FORMAT:
SELECT CONCAT('O dia de hoje é: ', DATE_FORMAT(CURRENT_TIMESTAMP(),'%Y') ) AS RESULTADO;
-- O especificador %Y (maiúsculo) extrai o ano com 4 dígitos.
-- Retorno: "O dia de hoje é: 2026"

-- Outro exemplo de CONCAT(), utilizando DATE_FORMAT:
SELECT CONCAT('O dia de hoje é: ', DATE_FORMAT(CURRENT_TIMESTAMP(),'%y') ) AS RESULTADO;
-- O especificador %y (minúsculo) extrai o ano com apenas os 2 últimos dígitos.
-- Retorno: "O dia de hoje é: 26"

-- Outro exemplo de CONCAT(), utilizando DATE_FORMAT:
SELECT CONCAT('O dia de hoje é: ', DATE_FORMAT(CURRENT_TIMESTAMP(),'%m/%y') ) AS RESULTADO;
-- O %m traz o mês numérico e o %y o ano curto, separados por uma barra.
-- Retorno: "O dia de hoje é: 03/26"

-- Outro exemplo de CONCAT(), utilizando DATE_FORMAT:
SELECT CONCAT('O dia de hoje é: ', DATE_FORMAT(CURRENT_TIMESTAMP(),'%d/%m/%Y') ) AS RESULTADO;
-- O formato clássico brasileiro: dia, mês e ano de 4 dígitos.
-- Retorno: "O dia de hoje é: 13/03/2026"

-- Outro exemplo de CONCAT(), utilizando DATE_FORMAT:
SELECT CONCAT('O dia de hoje é: ', DATE_FORMAT(CURRENT_TIMESTAMP(),'%W, %d/%m/%Y') ) AS RESULTADO;
-- O %W traz o nome do dia da semana por extenso em inglês.
-- Retorno: "O dia de hoje é: Friday, 13/03/2026"

-- Outro exemplo de CONCAT(), utilizando DATE_FORMAT:
SELECT CONCAT('O dia de hoje é: ', DATE_FORMAT(CURRENT_TIMESTAMP(),'%d/%m/%Y - %U') ) AS RESULTADO;
-- O %U indica o número da semana no ano (de 00 a 53).
-- Retorno: "O dia de hoje é: 13/03/2026 - 10" (Estamos na 10ª semana do ano).

--------------------------------------------------------------

-- CONVERT (Conversão de Tipos):
-- Força a transformação de um valor para um tipo específico (CHAR, DATE, DECIMAL, etc).

-- Exemplo de uso do CONVERT (Número para Texto):
SELECT CONVERT(23.3, CHAR) AS RESULTADO;
-- Transforma o número 23.3 em uma String (texto), permitindo usar funções de texto nele.

-- Outro exemplo de uso do CONVERT (Garantindo tipo para Substring):
SELECT SUBSTRING(CONVERT(23.3, CHAR), 1, 2) AS RESULTADO;
-- Converte para texto e extrai os 2 primeiros caracteres. Retorna "23".

------------------------------------------------------------------------------------------

--- UPDATE;
-- O comando UPDATE é usado para modificar os dados existentes em uma tabela de banco de dados.

-- Exemplo de uso do UPDATE:
UPDATE funcionarios
SET salario = 5500.00
WHERE id = 1; -- Atualiza o salário do funcionário com ID 1 para 5500.00 na tabela "funcionarios".

--- Podemos atualizar mais de uma coluna ao mesmo tempo:
UPDATE funcionarios
SET salario = 6000.00, departamento = 'Marketing'
WHERE id = 2; -- Atualiza o salário e o departamento do funcionário com ID 2 na tabela "funcionarios".

--- Primeiro seleciona a tabela que deseja atualizar, depois usa o SET para definir os novos valores das colunas, e por fim usa o WHERE para especificar quais registros devem ser atualizados.

------------------------------------------------------------------------------------------

--- DELETE;
-- O comando DELETE é usado para remover registros de uma tabela de banco de dados.

-- Exemplo de uso do DELETE:
DELETE FROM funcionarios
WHERE id = 3; -- Remove o registro do funcionário com ID 3 da tabela "funcionarios".

--- Cuidado ao usar o DELETE sem a cláusula WHERE, pois isso resultará na exclusão de todos os registros da tabela.

--- Outro exemplo:
DELETE FROM funcionarios
WHERE salario < 3000; -- Remove todos os funcionários com salário menor que 3000 da tabela "funcionarios".

--- Outro exemplo:
DELETE FROM funcionarios
WHERE departamento = 'Recursos Humanos'; -- Remove todos os funcionários do departamento de Recursos Humanos da tabela "funcionarios".

------------------------------------------------------------------------------------------

--- DELETE CASCADE;
-- O DELETE CASCADE é uma opção usada em conjunto com chaves estrangeiras (FOREIGN KEY) em bancos de dados relacionais.
-- Quando uma linha em uma tabela pai é excluída, o DELETE CASCADE garante que todas as linhas relacionadas na tabela filha também sejam excluídas automaticamente.

-- Exemplo de uso do DELETE CASCADE:
CREATE TABLE departamentos (
    departamento_id INT PRIMARY KEY,
    nome VARCHAR(100)
);
CREATE TABLE funcionarios (
    funcionario_id INT PRIMARY KEY,
    nome VARCHAR(100),
    departamento_id INT,
    FOREIGN KEY (departamento_id) REFERENCES departamentos(departamento_id) ON DELETE CASCADE
);
-- Neste exemplo, se um departamento for excluído da tabela "departamentos", todos os funcionários associados a esse departamento na tabela "funcionarios" também serão excluídos automaticamente devido à cláusula ON DELETE CASCADE.

------------------------------------------------------------------------------------------

----- Erros comuns em SQL:
--- 1 - Erro de sintaxe:
-- "You are using safe update mode and you tried to update a table without a WHERE that uses a KEY column. To disable safe mode, toggle the option in Preferences -> SQL Editor and reconnect"
-- Esse erro ocorre quando há um problema na estrutura do comando SQL, como palavras-chave incorretas, pontuação inadequada ou uso incorreto de operadores.
-- Solução: Revise cuidadosamente a sintaxe do comando SQL e corrija quaisquer erros encontrados.

-- Esse erro também pode ocorrer quando se tenta executar um comando UPDATE ou DELETE sem uma cláusula WHERE adequada em um ambiente de modo seguro (safe update mode), o que pode ser uma medida de segurança para evitar alterações acidentais em todos os registros de uma tabela.
-- Para resolver esse problema, você pode adicionar uma cláusula WHERE que utilize uma coluna chave (KEY column) para especificar quais registros devem ser atualizados ou excluídos, ou desativar o modo seguro nas configurações do seu SGBD, conforme indicado na mensagem de erro.
-- Ou também pode desativar o modo seguro temporariamente com o comando:
SET SQL_SAFE_UPDATES = 0;
--- Para reativar o modo seguro, use o comando:
SET SQL_SAFE_UPDATES = 1;

--- 2 - Erro de referência a tabela ou coluna inexistente:
-- "Table 'nome_da_tabela' doesn't exist" ou "Unknown column 'nome_da_coluna' in 'field list'"
-- Esse erro ocorre quando o comando SQL faz referência a uma tabela ou coluna que não existe no banco de dados.
-- Solução: Verifique se o nome da tabela ou coluna está correto e se ela realmente existe no banco de dados.

--- 3 - Erro de violação de chave primária:
-- "Duplicate entry 'valor' for key 'PRIMARY'"  
-- Esse erro ocorre quando há uma tentativa de inserir um valor duplicado em uma coluna que é definida como chave primária, o que viola a restrição de unicidade.
-- Solução: Certifique-se de que os valores inseridos na coluna da chave primária sejam únicos e não duplicados.

--- 4 - Erro de violação de chave estrangeira:
-- "Cannot add or update a child row: a foreign key constraint fails"
-- Esse erro ocorre quando há uma tentativa de inserir ou atualizar um valor em uma coluna que é definida como chave estrangeira, mas o valor não corresponde a nenhum valor na tabela referenciada.
-- Solução: Verifique se o valor que está sendo inserido ou atualizado na coluna da chave estrangeira existe na tabela referenciada.
-- Exemplos de solução:
INSERT INTO funcionarios (id, nome, departamento, salario) 
VALUES (5, 'Pedro Lima', 'Financeiro', 4800.00); -- Certifique-se de que o valor 'Financeiro' exista na tabela de departamentos referenciada.

UPDATE funcionarios
SET departamento = 'Recursos Humanos'
WHERE id = 5; -- Certifique-se de que o valor 'Recursos Humanos' exista na tabela de departamentos referenciada.

------------------------------------------------------------------------------------------

---- Consultas nos bancos de dados com MySQLWorkbench;
-- Para construir consultas em um banco de dados, é fundamental conhecer o banco com que se vai trabalhar.
-- Já sabemos que toda base é composta por tabelas, que cada uma delas possui uma chave primária, e que se relacionam por meio de um mecanismo de chaves estrangeiras.
-- Portanto, ao trabalhar com um banco, é importante identificar as tabelas que estão à disposição, o que significa cada campo e qual o seu tipo, 
-- quais são as chaves primárias e como as tabelas se relacionam entre si (ou seja, entender quais são as chaves estrangeiras).

--- Praticando;
-- Na função "Navigator" -> Schemas abrimos o nosso banco de dados que iremos trabalhar atravès da seta. 
-- Feito o primeiro comando, veremos quatro grupos de componentes: tables, views, stored procedures e functions - nosso foco agora serão as tabelas (tables).
-- Ao abrir o menu tables, notaremos que há as tabelas criadas por mim.
---- Abrindo uma tabela, veremos os campos que a compõem, seus tipos e outras informações; que são: 
-- Columns (colunas, que também podemos chamar de "campos"), 
-- Indexes (índices), 
-- Foreign Keys (chaves estrangeiras),
-- Triggers.

-- Quando clicamos em cima de Columns, veremos os campos que compõem a tabela, seus tipos (varchar/int/etc.) e outras informações.
-- Ao clicar em Indexes, veremos os índices criados para a tabela, incluindo a chave primária (PRIMARY) e quaisquer índices adicionais.
-- Ao clicar em Foreign Keys, veremos as chaves estrangeiras que estabelecem relacionamentos entre esta tabela e outras tabelas no banco de dados.
-- Ao clicar em Triggers, veremos quaisquer gatilhos (triggers) associados à tabela, que são procedimentos armazenados que são executados automaticamente em resposta a certos eventos na tabela, como inserções, atualizações ou exclusões de registros.

--- Com essas informações, podemos entender melhor a estrutura da tabela e como ela se relaciona com outras tabelas no banco de dados, o que é essencial para construir consultas SQL eficazes.

---------------------

---- Outra forma mais visual de analisar as tabelas e seus relacionamentos;
--- Praticando;
-- Primeiro iremos até o menu "Database" (superior esquerdo da plataforma) -> "Reverse Engineer...",
-- Depois, selecionamos o banco de dados que queremos analisar e clicamos em "Next",
-- Em seguida, selecionamos as tabelas que queremos incluir no diagrama e clicamos em "Next",
-- Após isso, clicamos em "Execute" para gerar o diagrama,
-- Por fim, clicamos em "Finish" para concluir o processo.
-- Agora, podemos visualizar o diagrama que mostra as tabelas selecionadas e seus relacionamentos.
--- Esse diagrama nos ajuda a entender como as tabelas estão conectadas entre si, facilitando a construção de consultas SQL que envolvem múltiplas tabelas.

------------------------------------------------------------------------------------------

----- Alguns exemplos que aprendi no curso da Alura:

---- AULA (01) - Criando tabelas e selecionando dados (o INSERT INTO ficou nos arquivos, preciso trazer pra cá);

--- Utilizando o banco de dados "suco_vendas"
-- Comando CREATE TABLE;
CREATE TABLE itens_notas_fiscais (
    NUMERO INT PRIMARY KEY,
    CODIGO_PRODUTO VARCHAR(10) PRIMARY KEY,
    QUANTIDADE INT,
    PRECO FLOAT
)
;

CREATE TABLE notas_fiscais (
   CPF varchar(11), 
   MATRICULA varchar(5) ,
   DATA_VENDA date, 
   NUMERO int PRIMARY KEY, 
   IMPOSTO float,
)
;

CREATE TABLE tabela_de_clientes (
    CPF varchar(11) PRIMARY KEY,
    NOME varchar(100), 
    ENDERECO_1 varchar(150), 
    ENDERECO_2 varchar(150), 
    BAIRRO varchar(50),
    CIDADE varchar(50), 
    ESTADO varchar(2),
    CEP varchar(8), 
    DATA_DE_NASCIMENTO date, 
    IDADE smallint,
    SEXO varchar(1),
    LIMITE_DE_CREDITO float, 
    VOLUME_DE_COMPRA float, 
    PRIMEIRA_COMPRA bit(1),
)
;

CREATE TABLE tabela_de_produtos ( 
    CODIGO_PRODUTO varchar(11) PRIMARY KEY,
    NOME varchar(100), 
    ENDERECO_1 varchar(150), 
    ENDERECO_2 varchar(150), 
    BAIRRO varchar(50), 
    CIDADE varchar(50), 
    ESTADO varchar(2), 
    CEP varchar(8), 
    DATA_DE_NASCIMENTO date, 
    IDADE smallint, 
    SEXO varchar(1), 
    LIMITE_DE_CREDITO float, 
    VOLUME_DE_COMPRA float, 
    PRIMEIRA_COMPRA bit(1)
)
;

CREATE TABLE tabela_de_vendedores (
    MATRICULA varchar(5) PRIMARY KEY
    NOME varchar(100),
    PERCENTUAL_COMISSAO float,
    DATA_ADMISSAO date,
    DE_FERIAS bit(1),
    BAIRRO varchar(50)
)
;

------------------------------------------------------------------------------------------

---- AULA (02) - SELECT;

-- SELECT (considerando que aqui não inseri os dados, só estou anotando os comandos aprendidos);
USE sucos_vendas;

SELECT CPF, NOME, ENDERECO_1, ENDERECO_2, BAIRRO, CIDADE, ESTADO,
CEP, DATA_DE_NASCIMENTO,
IDADE, SEXO, LIMITE_DE_CREDITO, VOLUME_DE_COMPRA, PRIMEIRA_COMPRA
FROM tabela_de_clientes; -- Selecionando todas as colunas da tabela "tabela_de_clientes" individualmente.

SELECT * FROM tabela_de_clientes; -- Selecionando todas as colunas da tabela "tabela_de_clientes" usando o asterisco (*).

SELECT CPF, NOME FROM tabela_de_clientes; -- Selecionando apenas as colunas "CPF" e "NOME" da tabela "tabela_de_clientes".

SELECT CPF as INDENTIFICADOR, NOME AS CLIENTE FROM tabela_de_clientes; -- Selecionando as colunas "CPF" e "NOME" da tabela "tabela_de_clientes" e atribuindo aliases "IDENTIFICADOR" e "CLIENTE" respectivamente para tornar os resultados mais legíveis.

SELECT * FROM tabela_de_produtos WHERE CODIGO_DO_PRODUTO = '1000889'; -- Selecionando todos os produtos com o código '1000889' da tabela "tabela_de_produtos".

SELECT * FROM tabela_de_produtos WHERE SABOR = 'Uva'; -- Selecionando todos os produtos com o sabor 'Uva' da tabela "tabela_de_produtos".

SELECT * FROM tabela_de_produtos WHERE SABOR = 'Laranja'; -- Selecionando todos os produtos com o sabor 'Laranja' da tabela "tabela_de_produtos".

SELECT * FROM tabela_de_produtos WHERE EMBALAGEM = 'PET'; -- Selecionando todos os produtos com a embalagem 'PET' da tabela "tabela_de_produtos".

SELECT * FROM tabela_de_produtos WHERE EMBALAGEM = 'pet'; -- Selecionando todos os produtos com a embalagem 'pet' (minúsculo) da tabela "tabela_de_produtos".

SELECT * FROM tabela_de_produtos WHERE PRECO_DE_LISTA > 19.50; -- Selecionando todos os produtos com preço de lista maior que 19.50 da tabela "tabela_de_produtos".

SELECT * FROM tabela_de_produtos WHERE PRECO_DE_LISTA BETWEEN 19.50 AND 19.52; -- Selecionando todos os produtos com preço de lista entre 19.50 e 19.52 da tabela "tabela_de_produtos".

SELECT * FROM tabela_de_produtos WHERE SABOR = 'Manga' 
OR TAMANHO = '470 ml'; -- Selecionando todos os produtos com sabor 'Manga' ou tamanho '470 ml' da tabela "tabela_de_produtos".

SELECT * FROM tabela_de_produtos WHERE SABOR = 'Manga'
AND TAMANHO = '470 ml'; -- Selecionando todos os produtos com sabor 'Manga' e tamanho '470 ml' da tabela "tabela_de_produtos".

SELECT * FROM tabela_de_produtos WHERE SABOR LIKE '%Maça%'; -- Selecionando todos os produtos cujo sabor contém a palavra 'Maça' da tabela "tabela_de_produtos".

SELECT * FROM tabela_de_produtos WHERE SABOR LIKE '%Maça%'
AND EMBALAGEM = 'PET'; -- Selecionando todos os produtos cujo sabor contém a palavra 'Maça' e que têm embalagem 'PET' da tabela "tabela_de_produtos".

------------------------------------------------------------------------------------------

---- AULA (03) - SELECT COM FUNÇÕES DE AGRUPAMENTO, ORDEM E FILTRO (DISTINCT, LIMIT, ORDER BY, GROUP BY, HAVING);

--- Vendo formas diferentes de exibir os resultados;
SELECT EMBALAGEM, TAMANHO FROM tabela_de_produtos; -- Selecionando as colunas "EMBALAGEM" e "TAMANHO" da tabela "tabela_de_produtos".

SELECT DISTINCT EMBALAGEM, TAMANHO FROM tabela_de_produtos; -- Selecionando as colunas "EMBALAGEM" e "TAMANHO" da tabela "tabela_de_produtos", aqui a palavra DISTINCT elimina valores duplicados, exibindo apenas combinações únicas de embalagem e tamanho.

SELECT DISTINCT EMBALAGEM, TAMANHO FROM tabela_de_produtos
WHERE SABOR = 'Laranja'; -- Selecionando as colunas "EMBALAGEM" e "TAMANHO" da tabela "tabela_de_produtos" onde o sabor é 'Laranja', eliminando valores duplicados.

SELECT DISTINCT EMBALAGEM, TAMANHO, SABOR FROM tabela_de_produtos; -- Selecionando as colunas "EMBALAGEM", "TAMANHO" e "SABOR" da tabela "tabela_de_produtos", eliminando valores duplicados.

SELECT * FROM tabela_de_produtos LIMIT 5; -- Selecionando os primeiros 5 registros da tabela "tabela_de_produtos".

SELECT * FROM tabela_de_produtos LIMIT 2,3; -- Selecionando 3 registros da tabela "tabela_de_produtos", começando a partir do 3º registro (índice 2).

SELECT * FROM tabela_de_produtos ORDER BY PRECO_DE_LISTA; -- Selecionando todos os produtos da tabela "tabela_de_produtos" e ordenando-os pelo preço de lista em ordem crescente.

SELECT * FROM tabela_de_produtos ORDER BY PRECO_DE_LISTA DESC; -- Selecionando todos os produtos da tabela "tabela_de_produtos" e ordenando-os pelo preço de lista em ordem decrescente.

SELECT * FROM tabela_de_produtos ORDER BY NOME_DO_PRODUTO; -- Selecionando todos os produtos da tabela "tabela_de_produtos" e ordenando-os pelo nome do produto em ordem alfabética crescente.

SELECT * FROM tabela_de_produtos ORDER BY NOME_DO_PRODUTO DESC; -- Selecionando todos os produtos da tabela "tabela_de_produtos" e ordenando-os pelo nome do produto em ordem alfabética decrescente.

SELECT * FROM tabela_de_produtos ORDER BY EMBALAGEM DESC, NOME_DO_PRODUTO ASC; -- Selecionando todos os produtos da tabela "tabela_de_produtos" e ordenando-os primeiro pela embalagem em ordem decrescente e depois pelo nome do produto em ordem crescente dentro de cada embalagem.

SELECT ESTADO, LIMITE_DE_CREDITO FROM tabela_de_clientes; -- Selecionando as colunas "ESTADO" e "LIMITE_DE_CREDITO" da tabela "tabela_de_clientes".

SELECT ESTADO, SUM(LIMITE_DE_CREDITO) AS LIMITE_TOTAL FROM tabela_de_clientes GROUP BY ESTADO; -- Selecionando o estado e a soma do limite de crédito para cada estado da tabela "tabela_de_clientes", agrupando os resultados por estado.

SELECT EMBALAGEM, MAX(PRECO_DE_LISTA) AS MAIOR_PRECO FROM tabela_de_Produtos GROUP BY EMBALAGEM; -- Selecionando a embalagem e o preço de lista máximo para cada embalagem da tabela "tabela_de_produtos", agrupando os resultados por embalagem.

SELECT EMBALAGEM, COUNT(*) AS CONTADOR FROM tabela_de_produtos GROUP BY EMBALAGEM; -- Selecionando a embalagem e o número de produtos para cada embalagem da tabela "tabela_de_produtos", agrupando os resultados por embalagem.

SELECT BAIRRO, SUM(LIMITE_DE_CREDITO) AS LIMITE FROM tabela_de_clientes
WHERE CIDADE = 'Rio de Janeiro' GROUP BY BAIRRO; -- Selecionando o bairro e a soma do limite de crédito para cada bairro da tabela "tabela_de_clientes" onde a cidade é 'Rio de Janeiro', agrupando os resultados por bairro.

SELECT ESTADO, BAIRRO, SUM(LIMITE_DE_CREDITO) AS LIMITE FROM tabela_de_clientes
GROUP BY ESTADO, BAIRRO; -- Selecionando o estado, bairro e a soma do limite de crédito para cada combinação de estado e bairro da tabela "tabela_de_clientes", agrupando os resultados por estado e bairro.

SELECT ESTADO, BAIRRO, SUM(LIMITE_DE_CREDITO) AS LIMITE FROM tabela_de_clientes
WHERE CIDADE = 'Rio de Janeiro'
GROUP BY ESTADO, BAIRRO
ORDER BY BAIRRO; -- Selecionando o estado, bairro e a soma do limite de crédito para cada combinação de estado e bairro da tabela "tabela_de_clientes" onde a cidade é 'Rio de Janeiro', agrupando os resultados por estado e bairro e ordenando os resultados por bairro em ordem alfabética crescente.

SELECT ESTADO, SUM(LIMITE_DE_CREDITO) AS SOMA_LIMITE FROM tabela_de_clientes
WHERE SOMA_LIMITE > 900000
GROUP BY ESTADO; -- Este comando SQL é inválido porque a cláusula WHERE não pode referenciar um alias (SOMA_LIMITE) definido na cláusula SELECT. Para corrigir isso, você pode usar a cláusula HAVING em vez de WHERE para filtrar os resultados com base no valor agregado. O comando corrigido seria:

SELECT ESTADO, SUM(LIMITE_DE_CREDITO) AS SOMA_LIMITE FROM tabela_de_clientes
GROUP BY ESTADO HAVING SUM(LIMITE_DE_CREDITO) > 900000; -- Selecionando o estado e a soma do limite de crédito para cada estado da tabela "tabela_de_clientes", agrupando os resultados por estado e filtrando para incluir apenas aqueles estados onde a soma do limite de crédito é maior que 900000.

SELECT EMBALAGEM, MAX(PRECO_DE_LISTA) AS MAIOR_PRECO,
MIN(PRECO_DE_LISTA) AS MENOR_PRECO FROM tabela_de_produtos
GROUP BY EMBALAGEM; -- Selecionando a embalagem, o preço de lista máximo e o preço de lista mínimo para cada embalagem da tabela "tabela_de_produtos", agrupando os resultados por embalagem.

SELECT EMBALAGEM, MAX(PRECO_DE_LISTA) AS MAIOR_PRECO,
MIN(PRECO_DE_LISTA) AS MENOR_PRECO FROM tabela_de_produtos
GROUP BY EMBALAGEM HAVING SUM(PRECO_DE_LISTA) <= 80; -- Selecionando a embalagem, o preço de lista máximo e o preço de lista mínimo para cada embalagem da tabela "tabela_de_produtos", agrupando os resultados por embalagem e filtrando para incluir apenas aquelas embalagens onde a soma do preço de lista é menor ou igual a 80.

SELECT EMBALAGEM, MAX(PRECO_DE_LISTA) AS MAIOR_PRECO,
MIN(PRECO_DE_LISTA) AS MENOR_PRECO FROM tabela_de_produtos
GROUP BY EMBALAGEM HAVING SUM(PRECO_DE_LISTA) <= 80 AND MAX(PRECO_DE_LISTA) >= 5; -- Selecionando a embalagem, o preço de lista máximo e o preço de lista mínimo para cada embalagem da tabela "tabela_de_produtos", agrupando os resultados por embalagem e filtrando para incluir apenas aquelas embalagens onde a soma do preço de lista é menor ou igual a 80 e onde o preço de lista máximo é maior ou igual a 5.

SELECT NOME_DO_PRODUTO, PRECO_DE_LISTA,
CASE
   WHEN PRECO_DE_LISTA >= 12 THEN 'PRODUTO CARO'
   WHEN PRECO_DE_LISTA >= 7 AND PRECO_DE_LISTA < 12 THEN 'PRODUTO EM CONTA'
   ELSE 'PRODUTO BARATO'
END AS STATUS_PRECO
FROM tabela_de_produtos; -- Selecionando o nome do produto, preço de lista e um novo campo "STATUS_PRECO" que classifica o preço de lista como 'PRODUTO CARO', 'PRODUTO EM CONTA' ou 'PRODUTO BARATO' com base nos valores do preço de lista da tabela "tabela_de_produtos".

SELECT EMBALAGEM,
CASE
   WHEN PRECO_DE_LISTA >= 12 THEN 'PRODUTO CARO'
   WHEN PRECO_DE_LISTA >= 7 AND PRECO_DE_LISTA < 12 THEN 'PRODUTO EM CONTA'
   ELSE 'PRODUTO BARATO'
END AS STATUS_PRECO, AVG(PRECO_DE_LISTA) AS PRECO_MEDIO
FROM tabela_de_produtos
WHERE sabor = 'Manga'
GROUP BY EMBALAGEM,
CASE
   WHEN PRECO_DE_LISTA >= 12 THEN 'PRODUTO CARO'
   WHEN PRECO_DE_LISTA >= 7 AND PRECO_DE_LISTA < 12 THEN 'PRODUTO EM CONTA'
   ELSE 'PRODUTO BARATO'
END
ORDER BY EMBALAGEM; -- Selecionando a embalagem, o status do preço e a média do preço de lista para cada combinação de embalagem e status do preço da tabela "tabela_de_produtos" onde o sabor é 'Manga', agrupando os resultados por embalagem e status do preço e ordenando os resultados por embalagem em ordem alfabética crescente.

------------------------------------------------------------------------------------------

---- AULA (04) - SELECT COM JUNÇÃO DE TABELAS (JOIN), SUBQUERY E VIEW;

SELECT * FROM tabela_de_vendedores; -- Selecionando todas as colunas da tabela "tabela_de_vendedores".

SELECT * FROM notas_fiscais; -- Selecionando todas as colunas da tabela "notas_fiscais".

SELECT * FROM tabela_de_vendedores A
INNER JOIN notas_fiscais B
ON A.MATRICULA = B.MATRICULA; -- Realizando um INNER JOIN entre as tabelas "tabela_de_vendedores" (alias A) e "notas_fiscais" (alias B) com base na coluna "MATRICULA".

SELECT A.MATRICULA, A.NOME, COUNT(*) FROM
tabela_de_vendedores A
INNER JOIN notas_fiscais B
ON A.MATRICULA = B.MATRICULA
GROUP BY A.MATRICULA, A.NOME; -- Selecionando a matrícula, nome e contagem de registros para cada vendedor da tabela "tabela_de_vendedores" (alias A) que tem correspondência na tabela "notas_fiscais" (alias B), 
-- agrupando os resultados por matrícula e nome do vendedor.

SELECT COUNT(*) FROM tabela_de_clientes; -- Contando o número total de registros na tabela "tabela_de_clientes".

SELECT DISTINCT A.CPF, A.NOME, B.CPF FROM tabela_de_clientes A
LEFT JOIN notas_fiscais B ON A.CPF = B.CPF; -- Realizando um LEFT JOIN entre as tabelas "tabela_de_clientes" (alias A) e "notas_fiscais" (alias B) com base na coluna "CPF", selecionando os CPFs e nomes dos clientes, 
-- bem como os CPFs correspondentes das notas fiscais, incluindo todos os clientes mesmo aqueles que não têm correspondência nas notas fiscais.

SELECT DISTINCT A.CPF, A.NOME, B.CPF FROM tabela_de_clientes A
LEFT JOIN notas_fiscais B ON A.CPF = B.CPF
WHERE B.CPF IS NULL; -- Realizando um LEFT JOIN entre as tabelas "tabela_de_clientes" (alias A) e "notas_fiscais" (alias B) com base na coluna "CPF", selecionando os CPFs e nomes dos clientes, 
-- bem como os CPFs correspondentes das notas fiscais, e filtrando para incluir apenas aqueles clientes que não têm correspondência nas notas fiscais (ou seja, onde o CPF da nota fiscal é NULL).

SELECT DISTINCT BAIRRO FROM tabela_de_clientes
UNION
SELECT DISTINCT BAIRRO FROM tabela_de_vendedores; -- Selecionando os bairros distintos da tabela "tabela_de_clientes" e da tabela "tabela_de_vendedores" e combinando os resultados usando UNION, que elimina duplicatas.

SELECT DISTINCT BAIRRO FROM tabela_de_clientes
UNION ALL
SELECT DISTINCT BAIRRO FROM tabela_de_vendedores; -- Selecionando os bairros distintos da tabela "tabela_de_clientes" e da tabela "tabela_de_vendedores" e combinando os resultados usando UNION ALL, que inclui todas as ocorrências, mesmo que haja duplicatas.

SELECT tabela_de_vendedores.BAIRRO,
tabela_de_vendedores.NOME, DE_FERIAS,
tabela_de_clientes.BAIRRO,
tabela_de_clientes.NOME  FROM tabela_de_vendedores LEFT JOIN tabela_de_clientes
ON tabela_de_vendedores.BAIRRO = tabela_de_clientes.BAIRRO
UNION
SELECT tabela_de_vendedores.BAIRRO,
tabela_de_vendedores.NOME, DE_FERIAS,
tabela_de_clientes.BAIRRO,
tabela_de_clientes.NOME  FROM tabela_de_vendedores RIGHT JOIN tabela_de_clientes
ON tabela_de_vendedores.BAIRRO = tabela_de_clientes.BAIRRO; -- Realizando um LEFT JOIN entre as tabelas "tabela_de_vendedores" e "tabela_de_clientes" com base na coluna "BAIRRO", selecionando os bairros, nomes dos vendedores, status de férias, bairros dos clientes e nomes dos clientes,
-- e combinando os resultados com um RIGHT JOIN entre as mesmas tabelas e condições, usando UNION para eliminar duplicatas e obter uma lista completa de bairros, vendedores e clientes, incluindo aqueles que não têm correspondência em ambas as tabelas.
-- Note que essa consulta pode resultar em uma lista extensa e possivelmente com muitos valores NULL, dependendo dos dados presentes nas tabelas, isso significa que pode haver muitos vendedores que não têm clientes correspondentes e vice-versa.

SELECT * FROM tabela_de_clientes WHERE BAIRRO 
IN (SELECT DISTINCT BAIRRO FROM tabela_de_vendedores); -- Selecionando todos os clientes da tabela "tabela_de_clientes" onde o bairro do cliente está presente na lista de bairros distintos obtida da tabela "tabela_de_vendedores" usando uma subquery.

SELECT X.EMBALAGEM, X.PRECO_MAXIMO FROM 
(SELECT EMBALAGEM, MAX(PRECO_DE_LISTA) AS PRECO_MAXIMO FROM tabela_de_produtos
GROUP BY EMBALAGEM) X WHERE X.PRECO_MAXIMO >= 10; -- Selecionando a embalagem e o preço máximo para cada embalagem da tabela "tabela_de_produtos" onde o preço máximo é maior ou igual a 10, 
-- utilizando uma subquery para calcular o preço máximo por embalagem e filtrando os resultados na consulta externa.

CREATE VIEW `VW_MAIORES_EMBALAGENS` AS
SELECT EMBALAGEM, MAX(PRECO_DE_LISTA) AS PRECO_MAXIMO FROM tabela_de_produtos
GROUP BY EMBALAGEM; -- Criando uma visão chamada "VW_MAIORES_EMBALAGENS" que retorna a embalagem e o preço máximo para cada embalagem da tabela "tabela_de_produtos", agrupando os resultados por embalagem.

SELECT * FROM VW_MAIORES_EMBALAGENS; -- Selecionando todas as colunas da visão "VW_MAIORES_EMBALAGENS", que retorna a embalagem e o preço máximo para cada embalagem da tabela "tabela_de_produtos".

SELECT X.EMBALAGEM, X.PRECO_MAXIMO FROM 
(SELECT EMBALAGEM, MAX(PRECO_DE_LISTA) AS PRECO_MAXIMO FROM tabela_de_produtos
GROUP BY EMBALAGEM) X WHERE X.PRECO_MAXIMO >= 10; -- Agora vamos fazer a mesma consulta que fizemos antes, mas utilizando a visão "VW_MAIORES_EMBALAGENS" para simplificar a consulta externa, segue abaixo;

SELECT X.EMBALAGEM, X.PRECO_MAXIMO FROM 
VW_MAIORES_EMBALAGENS X WHERE X.PRECO_MAXIMO >= 10; -- Selecionando a embalagem e o preço máximo para cada embalagem da visão "VW_MAIORES_EMBALAGENS" onde o preço máximo é maior ou igual a 10, utilizando a visão para simplificar a consulta externa.

------------------------------------------------------------------------------------------

---- AULA (05) - FUNÇÕES NO MYSQL (TEXTO, DATA, MATEMÁTICA E CONVERSÃO);

-- FUNÇÕES DE TEXTO (String Functions);

SELECT LTRIM('    OLÁ') AS RESULTADO; 
-- Remove espaços em branco à esquerda. Retorno: 'OLÁ'.

SELECT RTRIM('OLÁ     ') AS RESULTADO; 
-- Remove espaços em branco à direita. Retorno: 'OLÁ'.

SELECT TRIM('    OLÁ    ') AS RESULTADO; 
-- Remove espaços em branco de ambos os lados. Retorno: 'OLÁ'.

SELECT CONCAT('OLÁ', ' ', 'TUDO BEM','?') AS RESULTADO; 
-- Junta (concatena) várias strings em uma só. Retorno: 'OLÁ TUDO BEM?'.

SELECT UPPER('olá, tudo bem?') AS RESULTADO; 
-- Converte todo o texto para letras maiúsculas. Retorno: 'OLÁ, TUDO BEM?'.

SELECT LOWER('OLÁ, TUDO BEM?') AS RESULTADO; 
-- Converte todo o texto para letras minúsculas. Retorno: 'olá, tudo bem?'.

SELECT SUBSTRING('OLÁ, TUDO BEM?', 6) AS RESULTADO; 
-- Extrai uma parte do texto começando da posição 6 até o fim. Retorno: 'TUDO BEM?'.

SELECT SUBSTRING('OLÁ, TUDO BEM?', 6, 4) AS RESULTADO; 
-- Extrai uma parte do texto começando da posição 6, pegando apenas 4 caracteres. Retorno: 'TUDO'.

SELECT CONCAT(NOME, ' (', CPF, ') ') AS RESULTADO FROM TABELA_DE_CLIENTES; 
-- Exemplo prático: Cria uma string formatada com o nome e o CPF entre parênteses para cada cliente.

--------------------------------------------------------------

-- FUNÇÕES DE DATA (Date Functions);

SELECT CURDATE(); 
-- Retorna a data atual do sistema (AAAA-MM-DD).

SELECT CURRENT_TIME(); 
-- Retorna a hora atual do sistema.

SELECT CURRENT_TIMESTAMP(); 
-- Retorna a data e a hora atuais juntas.

SELECT YEAR(CURRENT_TIMESTAMP()); 
-- Extrai apenas o ano de uma data.

SELECT DAY(CURRENT_TIMESTAMP()); 
-- Extrai apenas o dia de uma data.

SELECT MONTH(CURRENT_TIMESTAMP()); 
-- Extrai o número do mês (1 a 12).

SELECT MONTHNAME(CURRENT_TIMESTAMP()); 
-- Retorna o nome do mês por extenso (em inglês).

SELECT DATEDIFF(CURRENT_TIMESTAMP(), '2019-01-01') AS RESULTADO; 
-- Calcula a diferença em dias entre duas datas.

SELECT DATE_SUB(CURRENT_TIMESTAMP(), INTERVAL 5 DAY) AS RESULTADO; 
-- Subtrai um intervalo de tempo de uma data (neste caso, 5 dias atrás).

SELECT DISTINCT DATA_VENDA, DAYNAME(DATA_VENDA) AS DIA, MONTHNAME(DATA_VENDA) AS MES, YEAR(DATA_VENDA) AS ANO FROM NOTAS_FISCAIS;
-- Exemplo prático: Cria um relatório detalhando o nome do dia, o nome do mês e o ano de cada venda.

--------------------------------------------------------------

-- FUNÇÕES MATEMÁTICAS;

SELECT (23+((25-2)/2)*45) AS RESULTADO; 
-- Realiza operações matemáticas básicas seguindo a ordem de precedência.

SELECT CEILING(12.33333232323) AS RESULTADO; 
-- Arredonda o valor sempre para cima (Próximo inteiro). Retorno: 13.

SELECT ROUND(12.7777232323) AS RESULTADO; 
-- Arredonda para o inteiro mais próximo (ou para casas decimais se especificado). Retorno: 13.

SELECT FLOOR(12.7777232323) AS RESULTADO; 
-- Arredonda o valor sempre para baixo (Ignora as decimais). Retorno: 12.

SELECT RAND() AS RESULTADO; 
-- Gera um número aleatório entre 0 e 1.

SELECT NUMERO, QUANTIDADE, PRECO, QUANTIDADE * PRECO AS FATURAMENTO FROM ITENS_NOTAS_FISCAIS;
-- Calcula o faturamento multiplicando quantidade por preço para cada item.

SELECT NUMERO, QUANTIDADE, PRECO, ROUND(QUANTIDADE * PRECO, 2) AS FATURAMENTO FROM ITENS_NOTAS_FISCAIS;
-- Realiza o mesmo cálculo de faturamento, mas arredonda o resultado para 2 casas decimais.

--------------------------------------------------------------

-- FUNÇÕES DE CONVERSÃO;

SELECT CONCAT('O dia de hoje é : ', CURRENT_TIMESTAMP()) AS RESULTADO; 
-- Conversão Implícita: O SQL transforma a data em texto para poder concatenar.

SELECT CONCAT('O dia de hoje é : ', DATE_FORMAT(CURRENT_TIMESTAMP(), '%W, %d/%m/%Y - %U') ) AS RESULTADO;
-- Usa DATE_FORMAT para converter a data em um texto formatado personalizado (Dia da semana, dia/mês/ano e número da semana).

SELECT SUBSTRING(CONVERT(23.3, CHAR), 1, 1) AS RESULTADO; 
-- Converte o número 23.3 para o tipo Texto (CHAR) e extrai o primeiro caractere. Retorno: '2'.

------------------------------------------------------------------------------------------






-- Converte o número 23.3 para o tipo Texto (CHAR) e extrai o primeiro caractere. Retorno: '2'.

------------------------------------------------------------------------------------------





