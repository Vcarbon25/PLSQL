CREATE TABLE tb_teste(repete NUMBER);--tabela simples para receber unica informação
SET SERVEROUTPUT ON; 
--habilita a saida de output
CREATE OR REPLACE PROCEDURE sp_teste --nomeia a procedure
IS--sem variaveis a declarar
BEGIN
FOR i IN 1..10 -- a cada repetição dentro, insere um dado
    LOOP
    INSERT INTO tb_teste VALUES (i);
    DBMS_OUTPUT.PUT_LINE('hello world');--coloca uma linha no output
    END LOOP;
END sp_teste;
EXECUTE sp_teste;
SELECT * FROM tb_teste;--verificação do processo depois de terminado
DELETE FROM tb_teste; --apaga todas as linhas
DROP TABLE tb_teste--apagar depois de não precisar mais