CREATE TABLE categoria 
(
    codigo_categoria SERIAL PRIMARY KEY,
	
    nome_categoria VARCHAR(40) NOT NULL,
    descricao_categoria VARCHAR(100) NOT NULL
);

CREATE TABLE funcionario 
(
    codigo_funcionario SERIAL PRIMARY KEY,
    nome VARCHAR(40) NOT NULL,
    cpf VARCHAR(40)NOT NULL UNIQUE
);

CREATE TABLE produto 
(
    codigo_produto SERIAL PRIMARY KEY,
	
    nome_produto VARCHAR(40) NOT NULL,
    descricao_produto VARCHAR(40) NOT NULL,
    quantidade_estoque_produto INT NOT NULL,
    data_fabricacao_produto DATE NOT NULL,
    valor_unitario_produto NUMERIC NOT NULL,
	codigo_funcionario INT,
	codigo_categoria INT,
	
    FOREIGN KEY(codigo_funcionario) REFERENCES funcionario(codigo_funcionario)
	ON UPDATE CASCADE
	ON DELETE NO ACTION,
	
	FOREIGN KEY(codigo_categoria) REFERENCES categoria(codigo_categoria)
	ON UPDATE CASCADE
	ON DELETE CASCADE
);

CREATE TABLE endereco 
(
    codigo_endereco SERIAL PRIMARY KEY,
	
    cep VARCHAR(40) NOT NULL,
    rua VARCHAR(40) NOT NULL,
    bairro VARCHAR(40) NOT NULL,
    cidade VARCHAR(40) NOT NULL,
    estado VARCHAR(40) NOT NULL
);

CREATE TABLE cliente 
(
    codigo_cliente SERIAL PRIMARY KEY,
	
    nome_completo_cliente VARCHAR(40) NOT NULL,
    nome_usuario_cliente VARCHAR(40) NOT NULL,
    email_cliente VARCHAR(40) NOT NULL,
    cpf_cliente VARCHAR(40) NOT NULL UNIQUE,
    data_nascimento_cliente DATE NOT NULL,
    numero_endereco_cliente VARCHAR(40) NOT NULL,
    complemento_endereco VARCHAR(40) NOT NULL,
	codigo_endereco INT,
	
	FOREIGN KEY(codigo_endereco) REFERENCES endereco(codigo_endereco)
	ON UPDATE CASCADE
	ON DELETE NO ACTION
);

CREATE TABLE pedido 
(
    numero_pedido SERIAL PRIMARY KEY,
	
    data_pedido DATE NOT NULL,
    status VARCHAR(40) NOT NULL,
	codigo_cliente INT,
	
    FOREIGN KEY(codigo_cliente) REFERENCES cliente(codigo_cliente)
	ON UPDATE CASCADE
	ON DELETE CASCADE
);

CREATE TABLE contem 
(
    quantidade INT NOT NULL,
    valor_venda NUMERIC NOT NULL,
    desconto NUMERIC NOT NULL,
	codigo_produto INT,
	numero_pedido INT,
	
    FOREIGN KEY(codigo_produto) REFERENCES produto(codigo_produto)
	ON UPDATE CASCADE
	ON DELETE CASCADE,
	
    FOREIGN KEY(numero_pedido) REFERENCES pedido(numero_pedido)
	ON UPDATE CASCADE
	ON DELETE CASCADE
);

INSERT INTO categoria(nome_categoria ,descricao_categoria)
  VALUES ('eletronicos','celulares, TVs, computadores'),
         ('livraria','livros didaticos, enciclopédias, quadrinhos'),
		 ('mobília','poltronas, armário, camas'),
		 ('brinquedo','tabuleiros, carros, lego'),
		 ('cozinha','facas,panelas,pratos');
  
INSERT INTO funcionario(nome,cpf) 

  VALUES ('JESSICA','123456789'),
         ('ISIS','1223334444'),
		 ('MATHEUS','987654321'),
		 ('LUIZA','999999999'),
		 ('JOSE','171717171'),
		 ('MICHAEL','000000000');
		 
INSERT INTO produto(nome_produto, descricao_produto, quantidade_estoque_produto,
					data_fabricacao_produto, valor_unitario_produto,
					codigo_funcionario, codigo_categoria) 
					
  VALUES ('xiaomi 12','celular',5, '2022-06-25', 5000, 1, 1),
         ('MACBOOK AIR 13','computador portátil',2, '2022-01-21', 7000, 5,1),
		 ('SMART TV LG A1','TELEVISAO',2, '2022-04-25', 4000, 6,1),
		 ('JOGO DE PANELA TRAMONTINA','panelas',10, '2021-08-25', 300, 4, 5),
		 ('CAMA ORTOPÉDICA','cama ortobom dura', 3, '2022-02-25', 2500, 5, 3),
		 ('POLTRONA DO PAPAI','poltrona reclinavel', 3, '2022-07-13', 1000, 3, 3);
		 
INSERT INTO endereco(cep, rua, bairro, cidade, estado) 
					
  VALUES ('21.111-11','rua isis carvalho','bairro barro branco','petropolis','RJ'),
         ('22.222-22','rua jessica darkmode','bairro aumenta a letra','petropolis','RJ'),
		 ('23.333-33','rua michael calado','bairro so olho','petropolis','RJ'),
		 ('24.444-44','rua odeio aranha','bairro bota fogo','petropolis','RJ'),
		 ('25.555-55','rua amo aranha','bairro expulsa o matheus','petropolis','RJ'),
		 ('26.666-66','rua jose jovem dinamico','bairro duplo sentido','guapimirim','RJ'),
		 ('26.666-66','rua jose jovem dinamico','bairro duplo sentido','guapimirim','RJ');
		 
INSERT INTO cliente(nome_completo_cliente, nome_usuario_cliente, email_cliente, cpf_cliente,
					data_nascimento_cliente, numero_endereco_cliente, complemento_endereco, codigo_endereco)
					
  VALUES ('isis castro','isabela','isis@gmail.com','123.345.678.01', '1997-11-17', 11,'',1),
         ('jessica ferreira','JessDoce','jessica@gmail.com','111.222.333.02', '1997-12-06', 12,'',2),
		 ('michael fernades','gasparzinho','michael@gmail.com','999.888.777.03', '1996-08-01', 13,'',3),
		 ('matheus carius','cri cri','matheus@gmail.com','000.000.000.04', '1994-08-18', 14,'',4),
		 ('luiza marins','ser ou nao ser','luiza@gmail.com','111.111.111.05', '1991-02-15', 15,'',5),
		 ('jose vitor','suco de uva','jose@gmail.com','171.171.171.71', '2004-01-28', 16, '', 6);
		 
INSERT INTO pedido(data_pedido, status, codigo_cliente)
		 
  VALUES ('2022-08-20','A CAMINHO',1),
         ('2022-07-21','ENTREGUE',2),
		 ('2022-08-24','NO ESTOQUE',3),
		 ('2022-04-11','ENTREGUE',4),
		 ('2022-07-13','CANCELADO',5),
		 ('2022-08-15','ENTREGUE',6);
		 
INSERT INTO contem(quantidade, valor_venda, desconto, codigo_produto, numero_pedido)

  VALUES (1, , 0, 1, 1),
         (1, , 0, 2, 2),
		 (1, , 0, 4, 3),
		 (1, , 0, 5, 4),
		 (1, , 0, 5, 5),
		 (1, , 0, 6, 6);
  
SELECT * FROM categoria
SELECT * FROM funcionario
SELECT * FROM produto
SELECT * FROM endereco
SELECT * FROM cliente
SELECT * FROM pedido
SELECT * FROM contem


 
 
 