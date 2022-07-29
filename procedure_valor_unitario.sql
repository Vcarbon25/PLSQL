CREATE TABLE tb_hist_compras (reg NUMBER PRIMARY KEY,item VARCHAR2(50),
                                quantidade NUMBER,custo NUMBER, data DATE);--tabela com multiplos itens para processamento de dados
    INSERT INTO tb_hist_compras VALUES(4,'leds',8,
                                        2.40,SYSTIMESTAMP)--populando a tabela
    SELECT * FROM tb_hist_compras --ver a situação atual da tabela
    
    SET SERVEROUTPUT ON;
    CREATE OR REPLACE PROCEDURE sp_valor_unitario --cria um bloco de código nomeado que pode ser acessado de qualquer lugar, sem retorno
    IS
        valor_um NUMBER; --a variavel que tera o resultado do processamento
        quantos_tem NUMBER; --quantas linhas encontrou na tab
        var_reg tb_hist_compras.reg%TYPE;
        var_item tb_hist_compras.item%TYPE;
        var_quantos tb_hist_compras.quantidade%TYPE;
        var_custo tb_hist_compras.custo%TYPE;
        var_quando tb_hist_compras.data%TYPE;--as linhas acima herdam os tipos da tabela para evitar erros
        CURSOR recuperar IS SELECT * FROM tb_hist_compras;
    BEGIN
        OPEN recuperar;
        IF recuperar%FOUND 
            THEN
            quantos_tem := recuperar%ROWCOUNT;
            FETCH recuperar INTO var_reg, var_item,
            var_quantos, var_custo, var_quando;
            FOR i IN quantos_tem
                LOOP
                    --agora colocar a conta e a exibição do output 
                    valor_um :=  var_custo/var_quantos;
                    DBMS_OUTPUT.PUT_LINE('Valor Unitario de:' || var_item ||
                                    'é de: R$ ' || valor_um);
                END LOOP;
        END IF;
    END sp_valor_unitario;
    
    EXECUTE sp_valor_unitario;