/* Prática 11 – Lanchonete – modelo físico (DDL) */
DROP DATABASE IF EXISTS lanchonete;
CREATE DATABASE lanchonete;
USE lanchonete;

-- unidades da rede
CREATE TABLE unidade (
  codigo   INT AUTO_INCREMENT PRIMARY KEY,
  -- dica: texto curto, como o nome do servico
  nome    VARCHAR(60)  NOT NULL,
  -- dica: na figura, endereço sem regra: aceita vazio
  endereco VARCHAR(150) not null
  -- dica: escreva entre as aspas o que a tabela guarda
) COMMENT = '______________________';

-- clientes: o telefone não se repete
CREATE TABLE cliente (
  codigo   INT AUTO_INCREMENT PRIMARY KEY,
  -- dica: na figura, a regra ao lado de nome
  nome     VARCHAR(80) not null,
  -- dica: na figura, a regra ao lado de telefone
  telefone VARCHAR(15) not null
);

-- cardápio: o preço de tabela é maior que zero
CREATE TABLE produto (
  -- dica: o mesmo tipo do codigo das outras tabelas
  codigo     int  AUTO_INCREMENT PRIMARY KEY,
  -- dica: na figura, a segunda regra ao lado de nome
  nome        VARCHAR(60) NOT NULL UNIQUE,
  -- dica: preço com centavos, como o preco do servico
  preco_tabela DECIMAL(6,2) NOT NULL
               CHECK (preco_tabela > 0)
);

-- entregadores
CREATE TABLE entregador (
  codigo INT AUTO_INCREMENT PRIMARY KEY,
  -- dica: na figura, a regra ao lado de nome
  nome   VARCHAR(60) NOT NULL UNIQUE
);

-- passos 9 a 13: escreva aqui pedido, item_pedido e o ALTER TABLE

CREATE TABLE pedido (
numero INT AUTO_INCREMENT PRIMARY KEY
data_hora detetime int not null
codigo   int  AUTO_INCREMENT PRIMARY KEY,
unidade_codigo int not null
entregador int

-- pedido
CREATE TABLE pedido (
numero            INT AUTO_INCREMENT PRIMARY KEY,
data_hora	      DATETIME NOT NULL,
cliente_codigo    INT NOT NULL,
unidade_codigo    INT NOT NULL,
entregador_codigo INT NULL,
FOREIGN KEY (cliente_codigo) REFERENCES cliente(codigo),
FOREIGN KEY (unidade_codigo) REFERENCES unidade(codigo),
FOREIGN KEY (entregador_codigo) REFERENCES entregador(codigo)
);

-- item_pedido
CREATE TABLE item_pedido (
pedido_numero  INT NOT NULL,
produto_codigo INT NOT NULL,
quantidade     INT NOT NULL,
preco_cobrado  DECIMAL(6,2) NOT NULL,
CHECK(quantidade > 0),
PRIMARY KEY (pedido_numero, produto_codigo),
FOREIGN KEY (pedido_numero) REFERENCES pedido(numero)
);

-- estoque (extra)
CREATE TABLE estoque (
unidade_codigo INT NOT NULL,
produto_codigo INT NOT NULL,
quantidade INT NOT NULL,
PRIMARY KEY (unidade_codigo, produto_codigo),
FOREIGN KEY (unidade_codigo) REFERENCES unidade(codigo),
FOREIGN KEY (produto_codigo) REFERENCES produto(codigo)
);

ALTER TABLE produto ADD COLUMN diponivel BOOLEAN DEFAULT true;

DESCRIBE pedido


