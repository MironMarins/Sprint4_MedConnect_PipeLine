--------------------------------------------------------
--  DDL for Table PRODUTO
--------------------------------------------------------

  CREATE TABLE "PRODUTO" 
   (	"IDPRODUTO" NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"NOME" VARCHAR2(255 BYTE), 
	"DESCRICAO" VARCHAR2(255 BYTE), 
	"QUANTIDADEESTOQUE" NUMBER(10,0), 
	"CATEGORIA" VARCHAR2(255 BYTE), 
	"VALOR" NUMBER(18,2), 
	"DATACADASTRO" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TBSPC_ALUNOS" ;
--------------------------------------------------------
--  DDL for Table CLIENTE
--------------------------------------------------------

  CREATE TABLE "CLIENTE" 
   (	"IDCLIENTE" NUMBER GENERATED BY DEFAULT AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"NOME" VARCHAR2(100 BYTE), 
	"CPF" VARCHAR2(11 BYTE), 
	"RG" VARCHAR2(20 BYTE), 
	"LOGIN" VARCHAR2(50 BYTE), 
	"SENHA" VARCHAR2(100 BYTE), 
	"DATANASCIMENTO" DATE, 
	"EMAIL" VARCHAR2(100 BYTE), 
	"CONTATOS" VARCHAR2(15 BYTE), 
	"ENDERECO" VARCHAR2(255 BYTE), 
	"COMPRAS" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TBSPC_ALUNOS" ;
--------------------------------------------------------
--  DDL for Table T_LOJA
--------------------------------------------------------

  CREATE TABLE "T_LOJA" 
   (	"ID" NUMBER(10,0), 
	"NOME" VARCHAR2(100 BYTE), 
	"CNPJ" VARCHAR2(14 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "TBSPC_ALUNOS" ;
--------------------------------------------------------
--  DDL for Index SYS_C002274615
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C002274615" ON "PRODUTO" ("IDPRODUTO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TBSPC_ALUNOS" ;
--------------------------------------------------------
--  DDL for Index SYS_C003056134
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C003056134" ON "CLIENTE" ("IDCLIENTE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TBSPC_ALUNOS" ;
--------------------------------------------------------
--  DDL for Index SYS_C003060318
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C003060318" ON "T_LOJA" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "TBSPC_ALUNOS" ;
--------------------------------------------------------
--  Constraints for Table PRODUTO
--------------------------------------------------------

  ALTER TABLE "PRODUTO" MODIFY ("IDPRODUTO" NOT NULL ENABLE);
  ALTER TABLE "PRODUTO" MODIFY ("NOME" NOT NULL ENABLE);
  ALTER TABLE "PRODUTO" MODIFY ("DESCRICAO" NOT NULL ENABLE);
  ALTER TABLE "PRODUTO" MODIFY ("QUANTIDADEESTOQUE" NOT NULL ENABLE);
  ALTER TABLE "PRODUTO" MODIFY ("CATEGORIA" NOT NULL ENABLE);
  ALTER TABLE "PRODUTO" MODIFY ("VALOR" NOT NULL ENABLE);
  ALTER TABLE "PRODUTO" ADD PRIMARY KEY ("IDPRODUTO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TBSPC_ALUNOS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CLIENTE
--------------------------------------------------------

  ALTER TABLE "CLIENTE" MODIFY ("IDCLIENTE" NOT NULL ENABLE);
  ALTER TABLE "CLIENTE" MODIFY ("NOME" NOT NULL ENABLE);
  ALTER TABLE "CLIENTE" MODIFY ("CPF" NOT NULL ENABLE);
  ALTER TABLE "CLIENTE" MODIFY ("RG" NOT NULL ENABLE);
  ALTER TABLE "CLIENTE" MODIFY ("LOGIN" NOT NULL ENABLE);
  ALTER TABLE "CLIENTE" MODIFY ("SENHA" NOT NULL ENABLE);
  ALTER TABLE "CLIENTE" MODIFY ("DATANASCIMENTO" NOT NULL ENABLE);
  ALTER TABLE "CLIENTE" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "CLIENTE" MODIFY ("CONTATOS" NOT NULL ENABLE);
  ALTER TABLE "CLIENTE" MODIFY ("ENDERECO" NOT NULL ENABLE);
  ALTER TABLE "CLIENTE" MODIFY ("COMPRAS" NOT NULL ENABLE);
  ALTER TABLE "CLIENTE" ADD PRIMARY KEY ("IDCLIENTE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TBSPC_ALUNOS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table T_LOJA
--------------------------------------------------------

  ALTER TABLE "T_LOJA" MODIFY ("NOME" NOT NULL ENABLE);
  ALTER TABLE "T_LOJA" MODIFY ("CNPJ" NOT NULL ENABLE);
  ALTER TABLE "T_LOJA" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "TBSPC_ALUNOS"  ENABLE;


CREATE TABLE venda (
    IDVENDA NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY
    MINVALUE 1 MAXVALUE 9999999999999999999999999999
    INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE,
    IDCLIENTE INT,
    IDPRODUTO INT,
    IDLOJA INT,
    QUANTIDADE INT,
    DATA_VENDA DATE,
    FOREIGN KEY (IDCLIENTE) REFERENCES cliente(IDCLIENTE),
    FOREIGN KEY (IDPRODUTO) REFERENCES produto(IDPRODUTO),
    FOREIGN KEY (IDLOJA) REFERENCES loja(IDLOJA)
);