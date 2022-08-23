CREATE TABLE tb_uni_SI(uni_nome VARCHAR2(30),uni_simb VARCHAR2(10) PRIMARY KEY,
                        uni_desc VARCHAR2(200), uni_tipo VARCHAR2(15),
                        uni_formula VARCHAR2(100));

INSERT INTO tb_uni_SI VALUES ('','ThetaVcs','HiperFreq do Cs','Constant','9192631770 Hz');
INSERT INTO tb_uni_SI VALUES ('','C','Velocidade da luz no vácuo','Constant','299792458 m/s');
INSERT INTO tb_uni_SI VALUES ('','h','Constante de Planck','Constant','6.62607015*10^-34 J/s');
INSERT INTO tb_uni_SI VALUES ('','e','carga elementar','Constant','1602176634*10^-19 C');
INSERT INTO tb_uni_SI VALUES ('','k','Constante de Boltzmann','Constant','1.380649*10^-23 J*K^-1');
INSERT INTO tb_uni_SI VALUES ('','Na','Constante de Avogadro','Constant','6.02214076*10^23 mol^-1');
INSERT INTO tb_uni_SI VALUES ('','Kcd','eficiência luminosa','Constant','683 lm*W^-1');

INSERT INTO tb_uni_SI VALUES ('segundo','s','medida de tempo','Fundamental','');
INSERT INTO tb_uni_SI VALUES ('metro','m','medida de comprimento','Fundamental','');
INSERT INTO tb_uni_SI VALUES ('kilograma','kg','medida de massa','Fundamental','');
INSERT INTO tb_uni_SI VALUES ('Ampere','A','corrente elétrica','Fundamental','');
INSERT INTO tb_uni_SI VALUES ('Kelvin','K','Temperatura termodinâmica','Fundamental','');
INSERT INTO tb_uni_SI VALUES ('candela','cd','intensidade luminosa','Fundamental','');

SELECT * FROM tb_uni_SI