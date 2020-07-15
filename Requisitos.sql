/*Modelagem básica - ENTIDADE*/
/*CONCEITUAL*/

CLIENTE

NOME caracter(50)
CPF numerico(11)
EMAIL caracter(30)
TELEFONE caracter(30)
ENDERECO caracter(100)
SEXO caracter(1)

/*PROCESSO DE MODELAGEM*/
/* fase 1 e 2 - ADM de dados*/
CONCEITUAL - RASCUNHO


LÓGICA   - BR_MODELO / WORKBENCH / STARUML
/* fase 3  -  DBA ou ADM*/

FISICA - scripts de banco
/* INICIANDO A MODELAGEM FISICA*/

/* CRIANDO O BANCO*/
CREATE DATABASE PROJECT;

/* CONECTANDO O BANCO */
USE PROJECT;

/*CRIAR TABELA*/
CREATE TABLE CLIENTE(
	NOME VARCHAR(50),
	SEXO CHAR(1),
	EMAIL VARCHAR(50),
	CPF INT(12),
	TELEFONE VARCHAR(11),
	ENDERECO VARCHAR(50)
);
/*NÃO USAR INT/NUMERIC ONDE TAMANHO POSSA VARIAR*/

/*VERIFICANDO AS TABELAS*/
SHOW TABLES;  /*só no Mysql*/

/* ESTRUTURAS DE UMA TABELA*/
DESC CLIENTE;

/*TUNNIG (ANALISTA DE PREFORMANCE) - TIPAGEM DE TABELAS */

/*INSERINDO DADOS NA TABELA*/
/*FORMA 1 - OMITINDO AS COLUNAS*/
INSERT INTO CLIENTE VALUES
 ('ALBERTO PINALLI','M','BETO@EMAIL.COM',1234567891,'99999-9999','RUA DA CEBOLA,24');
 INSERT INTO CLIENTE VALUES
 ('CLODOALDO SANTOS','M','CLO@EMAIL.COM',98765432,'99988-5555','RUA DA BATATA,7278');
 INSERT INTO CLIENTE VALUES
 ('MARIA GUMERCINADO','F','GUMA@EMAIL.COM',49381736,'96568-1234','RUA DA CACHAÇA, 51');
 
 /*FORMA 2 - COLOCANDO AS COLUNAS - MAIS SEGURA */
 INSERT INTO CLIENTE (NOME, SEXO,EMAIL,CPF,TELEFONE,ENDERECO)
 VALUES('CATARINA PEREIRA','F','CATA@EMAIL.COM',566678988,'92345-10912','RUA DA BAGUNÇA, 171');
 
 /*FORMA 3 - INSERT COMPACTO - SOMENTE NO MYSQL*/
 INSERT INTO CLIENTE VALUES
 ('JUCELINO JK','M','JUCE@EMAIL.COM',767676889,'97666-5465','RUA DA BICICLETA,245'),
 ('OTÁVIO MESQUITA','M','MESQUITA@EMAIL.COM',889877644,'92343-1212','RUA DAS PANELAS,678'),
 ('ITAMAR FRANCO','M','FRANCO@EMAIL.COM',1234543211,'95655-4545','RUA DA REPÚBLICA,300');

 
 /*ALIAS DE COLUNAS*/
  SELECT NOW() as DATA_HORA , 'ALBERTO PINALLI' AS DESENVOLVEDOR;
  SELECT NOME AS CLIENTES, SEXO, EMAIL, TELEFONE FROM CLIENTE;

 
 /*COMANDO SELECT 
 seleção, projeção e junção
 
 PROJEÇÃO = SELECT
 SELEÇÃO = WHERE
 */
 
 SELECT NOME, TELEFONE FROM CLIENTE;
 
 /*FILTRANDO*/
 
 SELECT NOME, SEXO, CPF FROM CLIENTE WHERE SEXO = 'M';
 
 /*USANDO O LIKE */
 
 SELECT NOME, ENDERECO, SEXO FROM CLIENTE WHERE ENDERECO LIKE '%RUA DA REP%';
 SELECT NOME, ENDERECO, SEXO FROM CLIENTE WHERE ENDERECO LIKE '%_EP%';
 
 /* CARACTER CORINGA % = QUALQUER COISA */
 
 /*  '_u%': Filtra os registros cujo campo especificado comece 
 com um caractere qualquer, em seguida contenha uma letra "u",
 e depois qualquer valor. Por exemplo, os valores "Luis da Silva" 
 e "Gustavo" atenderiam a esse filtro.
 
 'b_m': Filtra os registros que comecem com a letra "b", 
 contenham 1 caractere em seguida, e depois a letra "m". 
 Nesse caso, atenderiam a esse filtro, por exemplo,
 os valores "bom", "bem", "bPm", etc.
 
 '_este': Filtra os registros que contém 1 caractere
 qualquer no começo e em seguida o termo 'este'. 
 Por exemplo, seriam retornados registros contendo
 o valor 'teste', 'peste', 'veste'; */
 /*-------------------------------------------------------------------------------*/
 
 CREATE DATABASE LIVRARIA;
 
 CREATE TABLE LIVROS(
	NOME VARCHAR(100),
	AUTOR VARCHAR(100),
    SEXO CHAR(1),
	NUM_PAGINAS INT(5),
	EDITOR VARCHAR(30),
	VALOR FLOAT(10,2),
	UF CHAR (2),
	ANO_PUBLICACAO INT (4)
 );
 
 INSERT INTO LIVROS VALUES( 'Cavaleiro Real', 'Ana Cláudia','F', 100, 'Caruzzo', '276.60','RS', 2009 );
 INSERT INTO LIVROS VALUES( 'SQL para leigos', 'João Nunes','M', 450, 'Addison', 98,'SP', 2018 );
 INSERT INTO LIVROS VALUES( 'Cavaleiro Real', 'Ana Cláudia','F', 100, 'Caruzzo', '276.60','RS', 2009 );
 INSERT INTO LIVROS VALUES( 'Cavaleiro Real', 'Ana Cláudia','F', 100, 'Caruzzo', '276.60','RS', 2009 );
 INSERT INTO LIVROS VALUES( 'Cavaleiro Real', 'Ana Cláudia','F', 100, 'Caruzzo', '276.60','RS', 2009 );
 INSERT INTO LIVROS VALUES( 'Cavaleiro Real', 'Ana Cláudia','F', 100, 'Caruzzo', '276.60','RS', 2009 );
 INSERT INTO LIVROS VALUES( 'Cavaleiro Real', 'Ana Cláudia','F', 100, 'Caruzzo', '276.60','RS', 2009 );
 
 		Nome do Livro	Nome do Autor	Sexo do Autor	Numero de Páginas	Nome da Editora	Valor do Livro	UF da Editora	Ano da Publicacao
	1	Cavaleiro Real	Ana Claudia	Feminino	465	Atlas	49,9	RJ	2009
	2	SQL para leigos	João Nunes	Masculino	450	Addison	98	SP	2018
	3	Receitas Caseiras	Celia Tavares	Feminino	210	Atlas	45	RJ	2008
	4	Pessoas Efetivas	Eduardo Santos	Masculino	390	Beta	78,99	RJ	2018
	5	Habitos Saudáveis	Eduardo Santos	Masculino	630	Beta	150,98	RJ	2019
	6	A Casa Marrom	Hermes Macedo	Masculino	250	Bubba	60	MG	2016
	7	Estacio Querido	Geraldo Francisco	Masculino	310	Insignia	100	ES	2015
	8	Pra sempre amigas	Leda Silva	Feminino	510	Insignia	78,98	ES	2011
	9	Copas Inesqueciveis	Marco Alcantara	Masculino	200	Larson	130,98	RS	2018
	10	O poder da mente	Clara Mafra	Feminino	120	Continental	56,58	SP	2017
