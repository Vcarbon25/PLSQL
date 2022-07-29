CREATE TABLE tb_hist_compras (reg NUMBER PRIMARY KEY,item VARCHAR2(50),
                                quantidade NUMBER,custo NUMBER,custo_un NUMBER, data DATE);--tabela com multiplos itens para processamento de dados
    INSERT INTO tb_hist_compras(reg, item,quantidade,
                            custo, data) VALUES(4,'leds',8,
                                        2.4,SYSTIMESTAMP)--populando a tabela
    DROP TABLE tb_hist_compras --apaga tabela inteira
    SELECT * FROM tb_hist_compras --ver a situação atual da tabela
    DELETE FROM tb_hist_compras WHERE reg=4   -- apaga 1 registro
    SET SERVEROUTPUT ON;
    DECLARE
        valor_um NUMBER; --a variavel que tera o resultado do processamento
        quantos_tem NUMBER; --quantas linhas encontrou na tab
        var_reg tb_hist_compras.reg%TYPE;
        var_item tb_hist_compras.item%TYPE;
        var_quantos tb_hist_compras.quantidade%TYPE;
        var_custo tb_hist_compras.custo%TYPE;
        var_custo_um tb_hist_compras.custo_un%TYPE;
        var_quando tb_hist_compras.data%TYPE;--as linhas acima herdam os tipos da tabela para evitar e
         CURSOR recuperar IS SELECT * FROM tb_hist_compras;
    BEGIN
        OPEN recuperar;
        IF recuperar%FOUND 
            THEN
            quantos_tem := recuperar%ROWCOUNT;
            FETCH recuperar INTO var_reg, var_item,
            var_quantos, var_custo,var_custo_um, var_quando;
            FOR i IN quantos_tem
                LOOP
                    --agora colocar a conta e a exibição do output 
                    valor_um :=  var_custo/var_quantos;
                    UPDATE tb_hist_compras SET custo_un = valor_um WHERE reg=i;
                END LOOP;
        END IF;
    END;