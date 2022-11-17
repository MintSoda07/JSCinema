--------------------------------------------------------
--  파일이 생성됨 - 목요일-11월-17-2022   
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
Insert into JSC.SNACK (NAME,PRICE,INFO,TOTAL_SALES,UPLOAD_DATE,IMG_PATH) values ('통밀빵 & 딸기잼',9000,'영화관에서 즐기는 색다른 경험! 
고소한 통밀빵과 새콤달콤한 딸기잼의 조합에 푹 빠져보세요.

* 딸기잼은 기본으로 1개가 제공되며, 추가 주문 시 개당 500원이 추가됩니다.',0,null,'Bread.jpg');
Insert into JSC.SNACK (NAME,PRICE,INFO,TOTAL_SALES,UPLOAD_DATE,IMG_PATH) values ('팝콘(S)',4000,'영화관에서 빠질 수 없는 간식, 팝콘입니다.
국내산 옥수수를 사용해 더욱 고소한 맛이 일품입니다.


*기본 S 사이즈로 제공되며, M 사이즈업 시 5000원, L 사이즈업 시 7000원이 추가됩니다.',0,null,'PopCorn.jpg');
Insert into JSC.SNACK (NAME,PRICE,INFO,TOTAL_SALES,UPLOAD_DATE,IMG_PATH) values ('오징어튀김',7000,'영화관에서 만나는 바삭쫀득한 오징어튀김!
통으로 튀겨 더욱 촉촉하고 바삭한 오징어 튀김을 만나보세요.
고추장과 마요네즈가 포함되어 있어 더욱 다양한 풍미를 즐기실 수 있습니다.


*소스 추가 시 개당 500원이 추가됩니다. ',0,null,'FriedSquid.png');
Insert into JSC.SNACK (NAME,PRICE,INFO,TOTAL_SALES,UPLOAD_DATE,IMG_PATH) values ('치킨 & 비어',23000,'영화관에서 즐기는 치맥!
푸짐한 양념치킨과 시원한 500cc 맥주 한 잔, 아삭한 양배추 샐러드의 조화가 어우러지는 아이템입니다.',0,null,'ChickenNBeer.jpg');
Insert into JSC.SNACK (NAME,PRICE,INFO,TOTAL_SALES,UPLOAD_DATE,IMG_PATH) values ('JS패밀리세트',21000,'XL사이즈 팝콘과 1L짜리 콜라를 한번에!
압도적인 양으로 영화관을 압도하는 세트입니다.',0,null,'ColaPopCorn.jpg');
Insert into JSC.SNACK (NAME,PRICE,INFO,TOTAL_SALES,UPLOAD_DATE,IMG_PATH) values ('초코쿠키 (7개)',7000,'바삭하고 촉촉한 초코쿠키입니다.
매일 아침마다 새로 반죽하고 갓 구워내어 더욱 고소합니다. 1,000원을 추가하여 우유 500ml를 구매하실 수 있습니다.',0,null,'Cookie.jfif');
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
