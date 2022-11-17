--------------------------------------------------------
--  ������ ������ - �����-11��-17-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table SNACK
--------------------------------------------------------

  CREATE TABLE "JSC"."SNACK" 
   (	"NAME" VARCHAR2(40 BYTE), 
	"PRICE" NUMBER(20,0), 
	"INFO" VARCHAR2(400 BYTE), 
	"TOTAL_SALES" NUMBER(*,0) DEFAULT 0, 
	"UPLOAD_DATE" DATE, 
	"IMG_PATH" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into JSC.SNACK
SET DEFINE OFF;
Insert into JSC.SNACK (NAME,PRICE,INFO,TOTAL_SALES,UPLOAD_DATE,IMG_PATH) values ('��л� & ������',9000,'��ȭ������ ���� ���ٸ� ����! 
����� ��л��� ���޴����� �������� ���տ� ǫ ����������.

* �������� �⺻���� 1���� �����Ǹ�, �߰� �ֹ� �� ���� 500���� �߰��˴ϴ�.',0,null,'Bread.jpg');
Insert into JSC.SNACK (NAME,PRICE,INFO,TOTAL_SALES,UPLOAD_DATE,IMG_PATH) values ('����(S)',4000,'��ȭ������ ���� �� ���� ����, �����Դϴ�.
������ �������� ����� ���� ����� ���� ��ǰ�Դϴ�.


*�⺻ S ������� �����Ǹ�, M ������� �� 5000��, L ������� �� 7000���� �߰��˴ϴ�.',0,null,'PopCorn.jpg');
Insert into JSC.SNACK (NAME,PRICE,INFO,TOTAL_SALES,UPLOAD_DATE,IMG_PATH) values ('��¡��Ƣ��',7000,'��ȭ������ ������ �ٻ��˵��� ��¡��Ƣ��!
������ Ƣ�� ���� �����ϰ� �ٻ��� ��¡�� Ƣ���� ����������.
������� ������ ���ԵǾ� �־� ���� �پ��� ǳ�̸� ���� �� �ֽ��ϴ�.


*�ҽ� �߰� �� ���� 500���� �߰��˴ϴ�. ',0,null,'FriedSquid.png');
Insert into JSC.SNACK (NAME,PRICE,INFO,TOTAL_SALES,UPLOAD_DATE,IMG_PATH) values ('ġŲ & ���',23000,'��ȭ������ ���� ġ��!
Ǫ���� ���ġŲ�� �ÿ��� 500cc ���� �� ��, �ƻ��� ����� �������� ��ȭ�� ��췯���� �������Դϴ�.',0,null,'ChickenNBeer.jpg');
Insert into JSC.SNACK (NAME,PRICE,INFO,TOTAL_SALES,UPLOAD_DATE,IMG_PATH) values ('JS�йи���Ʈ',21000,'XL������ ���ܰ� 1L¥�� �ݶ� �ѹ���!
�е����� ������ ��ȭ���� �е��ϴ� ��Ʈ�Դϴ�.',0,null,'ColaPopCorn.jpg');
Insert into JSC.SNACK (NAME,PRICE,INFO,TOTAL_SALES,UPLOAD_DATE,IMG_PATH) values ('������Ű (7��)',7000,'�ٻ��ϰ� ������ ������Ű�Դϴ�.
���� ��ħ���� ���� �����ϰ� �� �������� ���� ����մϴ�. 1,000���� �߰��Ͽ� ���� 500ml�� �����Ͻ� �� �ֽ��ϴ�.',0,null,'Cookie.jfif');
--------------------------------------------------------
--  DDL for Index SNACK_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "JSC"."SNACK_PK" ON "JSC"."SNACK" ("NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table SNACK
--------------------------------------------------------

  ALTER TABLE "JSC"."SNACK" ADD CONSTRAINT "SNACK_PK" PRIMARY KEY ("NAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "JSC"."SNACK" MODIFY ("IMG_PATH" NOT NULL ENABLE);
  ALTER TABLE "JSC"."SNACK" MODIFY ("INFO" NOT NULL ENABLE);
  ALTER TABLE "JSC"."SNACK" MODIFY ("PRICE" NOT NULL ENABLE);
  ALTER TABLE "JSC"."SNACK" MODIFY ("NAME" NOT NULL ENABLE);
