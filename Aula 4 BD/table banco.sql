--CREATE TABLE agencia(numero_banco int PRIMARY KEY,
--					 numero_agencia int NOT NULL,
--					 nome_banco VARCHAR(40) NOT NULL);
					 
--CREATE TABLE conta(numero_conta int PRIMARY KEY,
--				  saldo NUMERIC,
--				  titular VARCHAR(40) NOT NULL,
--				  numero_banco int,
--				  FOREIGN KEY (numero_banco) REFERENCES agencia(numero_banco) ON UPDATE CASCADE ON DELETE CASCADE);

--INSERT INTO agencia(numero_banco, numero_agencia, nome_banco)	VALUES (1209, 3219, 'ITAU');
--INSERT INTO agencia(numero_banco, numero_agencia, nome_banco)	VALUES (1234, 3221, 'BRADESCO');
--INSERT INTO agencia(numero_banco, numero_agencia, nome_banco)	VALUES (1345, 8921, 'NUBANK');

--INSERT INTO conta(numero_conta, saldo, titular, numero_banco) VALUES (123, 8889,'Gabriel',1239);
--INSERT INTO conta(numero_conta, saldo, titular, numero_banco) VALUES (1264, 3281, 'Ana', 1111);

--INSERT INTO agencia (numero_banco,numero_agencia, nome_banco) VALUES (45451,123,'BANCO DO BRASIL');
--INSERT INTO agencia (numero_banco,numero_agencia, nome_banco) VALUES (99992,456,'CAIXA');
--INSERT INTO agencia (numero_banco,numero_agencia, nome_banco) VALUES (88848,789,'SANTANDER');

--SELECT * FROM agencia WHERE nome_banco LIKE 'B%';

SELECT * FROM agencia  ORDER BY numero_banco DESC LIMIT 3 ;

--DROP TABLE agencia;

