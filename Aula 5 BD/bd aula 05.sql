INSERT INTO conta (numero_conta, saldo, titular,numero_banco) VALUES (123,8889,'Gabriel',1239);
INSERT INTO conta (numero_conta, saldo, titular,numero_banco) VALUES (134,1000,'Ana',1345);
INSERT INTO conta (numero_conta, saldo, titular,numero_banco) VALUES (125,5678,'João',99992);
INSERT INTO conta (numero_conta, saldo, titular,numero_banco) VALUES (124,1200,'Paula',1234);

BEGIN;
	UPDATE conta set saldo=saldo-100 WHERE numero_conta=123;
	UPDATE conta set saldo=saldo+100 WHERE numero_conta=134;
COMMIT;

SELECT * FROM conta;

SELECT COUNT(numero_conta) FROM conta;
INSERT INTO conta (numero_conta,titular,numero_banco) VALUES (126,'Maria',1239);
SELECT MAX(saldo) FROM conta; --chama saldo maximo
SELECT SUN(saldo) AS TOTAL FROM conta; --soma
SELECT ROUND(AVG(saldo),2) AS MEDIA FROM conta; --aredonda
