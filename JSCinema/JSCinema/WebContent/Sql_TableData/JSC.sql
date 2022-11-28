--------------------------------------------------------
--  파일이 생성됨 - 월요일-11월-28-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table CUSTOMER
--------------------------------------------------------

  CREATE TABLE "JSC"."CUSTOMER" 
   (	"RRN" VARCHAR2(40 BYTE), 
	"ID" VARCHAR2(40 BYTE), 
	"PWD" VARCHAR2(40 BYTE), 
	"NAME" VARCHAR2(40 BYTE), 
	"TEL" VARCHAR2(40 BYTE), 
	"POINT" VARCHAR2(20 BYTE), 
	"EMAIL" VARCHAR2(80 BYTE), 
	"MANAGER" VARCHAR2(1 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table MOVIE
--------------------------------------------------------

  CREATE TABLE "JSC"."MOVIE" 
   (	"NAME" VARCHAR2(40 BYTE), 
	"INFOMATION" VARCHAR2(4000 BYTE), 
	"OPEN_DATE" DATE, 
	"SIMPLE_INFO" VARCHAR2(2000 BYTE), 
	"IMG_PATH" VARCHAR2(40 BYTE), 
	"TICKET_SOLD" NUMBER(10,0) DEFAULT 0, 
	"GENRE" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table MOVIE_SEAT
--------------------------------------------------------

  CREATE TABLE "JSC"."MOVIE_SEAT" 
   (	"MNAME" VARCHAR2(40 BYTE), 
	"MDATE" VARCHAR2(20 BYTE), 
	"SEAT_COL" VARCHAR2(20 BYTE), 
	"SEAT_ROW" VARCHAR2(20 BYTE), 
	"MTIME" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table REVIEW
--------------------------------------------------------

  CREATE TABLE "JSC"."REVIEW" 
   (	"REVIEWER" VARCHAR2(40 BYTE), 
	"TARGET_MOVIE" VARCHAR2(40 BYTE), 
	"SCORE" NUMBER(2,0), 
	"TEXT" VARCHAR2(3000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table SERVICE_CENTER
--------------------------------------------------------

  CREATE TABLE "JSC"."SERVICE_CENTER" 
   (	"NUM" NUMBER(20,0), 
	"TEXT" VARCHAR2(4000 BYTE), 
	"NAME" VARCHAR2(20 BYTE), 
	"TITLE" VARCHAR2(4000 BYTE), 
	"EMAIL" VARCHAR2(80 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
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
REM INSERTING into JSC.CUSTOMER
SET DEFINE OFF;
Insert into JSC.CUSTOMER (RRN,ID,PWD,NAME,TEL,POINT,EMAIL,MANAGER) values ('142423','adad','1234','김손님','222222','0','dsa@naver.com','F');
Insert into JSC.CUSTOMER (RRN,ID,PWD,NAME,TEL,POINT,EMAIL,MANAGER) values ('155622','admin','asdf','김관리자','222222','0','kim@jsc.com','Y');
Insert into JSC.CUSTOMER (RRN,ID,PWD,NAME,TEL,POINT,EMAIL,MANAGER) values ('2','SomeOne01','snrnsrk','누군가','010-1234-5678','0','SomeOneEmail@JSCinema.co.kr','F');
Insert into JSC.CUSTOMER (RRN,ID,PWD,NAME,TEL,POINT,EMAIL,MANAGER) values ('4','감자가제일좋아','rkawkdhkd','감자왕','010-4040-5050','0','potato@gamjafarm.co.kr','F');
REM INSERTING into JSC.MOVIE
SET DEFINE OFF;
Insert into JSC.MOVIE (NAME,INFOMATION,OPEN_DATE,SIMPLE_INFO,IMG_PATH,TICKET_SOLD,GENRE) values ('탑건:매버릭','한순간의 실수도 용납되지 않는 하늘 위, 
가장 압도적인 비행이 시작된다!

최고의 파일럿이자 전설적인 인물 매버릭(톰 크루즈)은 자신이 졸업한 훈련학교 교관으로 발탁된다. 
그의 명성을 모르던 팀원들은 매버릭의 지시를 무시하지만 실전을 방불케 하는 상공 훈련에서 눈으로 봐도 믿기 힘든 전설적인 조종 실력에 모두가 압도된다. 

매버릭의 지휘아래 견고한 팀워크를 쌓아가던 팀원들에게 국경을 뛰어넘는 위험한 임무가 주어지자
매버릭은 자신이 가르친 동료들과 함께 마지막이 될 지 모를 하늘 위 비행에 나서는데… ',to_date('22/11/21','RR/MM/DD'),'올 겨울, 매버릭과 함께하는 시원한 공중 액션 영화!','Maverick.jpg',0,'액션');
Insert into JSC.MOVIE (NAME,INFOMATION,OPEN_DATE,SIMPLE_INFO,IMG_PATH,TICKET_SOLD,GENRE) values ('마션','NASA 아레스3 탐사대는 화성을 탐사하던 중 모래 폭풍을 만나고 팀원 마크 와트니가 사망했다고 판단, 그를 남기고 떠난다. 극적으로 생존한 마크 와트니는 남은 식량과 기발한 재치로 화성에서 살아남을 방법을 찾으며 자신이 살아있음을 알리려 노력한다.
마침내, 자신이 살아있다는 사실을 지구에 알리게 된 마크 와트니
NASA는 총력을 기울여 마크 와트니를 구출하기 위해 노력하고, 아레스3 탐사대 또한 그를 구출하기 위해 그들만의 방법을 찾게 되는데……',to_date('22/11/23','RR/MM/DD'),'인간이 살아남을 수 없는 극한의 환경에서 홀로 살아남는 이야기!','martion.jpg',0,'액션');
Insert into JSC.MOVIE (NAME,INFOMATION,OPEN_DATE,SIMPLE_INFO,IMG_PATH,TICKET_SOLD,GENRE) values ('인터스텔라','세계 각국의 정부와 경제가 완전히 붕괴된 미래가 다가온다.
지난 20세기에 범한 잘못이 전 세계적인 식량 부족을 불러왔고, NASA도 해체되었다.
이때 시공간에 불가사의한 틈이 열리고, 남은 자들에게는 이 곳을 탐험해 인류를 구해야 하는 임무가 지워진다.
사랑하는 가족들을 뒤로 한 채 인류라는 더 큰 가족을 위해, 그들은 이제 희망을 찾아 우주로 간다.
그리고 마침내 답을 찾을 것이다.',to_date('22/11/23','RR/MM/DD'),'크리스토퍼 놀란 감독의 감동적인 SF 영화!','interstella.jpg',0,'스릴러');
Insert into JSC.MOVIE (NAME,INFOMATION,OPEN_DATE,SIMPLE_INFO,IMG_PATH,TICKET_SOLD,GENRE) values ('어벤져스 엔드게임','인피니티 워 이후 절반만 살아남은 지구,마지막 희망이 된 어벤져스,먼저 떠난 그들을 위해  모든 것을 걸었다! 위대한 어벤져스와 운명을 바꿀 최후의 전쟁이 펼쳐진다!',to_date('22/11/24','RR/MM/DD'),'마블 유니버스 총출동, 지구의 운명을 바꿀 마지막 전투!','avengersEnd.jpg',0,'액션');
Insert into JSC.MOVIE (NAME,INFOMATION,OPEN_DATE,SIMPLE_INFO,IMG_PATH,TICKET_SOLD,GENRE) values ('블랙 팬서: 와칸다 포에버','“와칸다를 지켜라!”거대한 두 세계의 충돌, 운명을 건 최후의 전투가 시작된다!
국왕이자 ‘블랙 팬서’인 ''티찰라''의 죽음 이후 수많은 강대국으로부터 위협을 받게 된 ''와칸다''.
''라몬다'', ''슈리'' 그리고 ''나키아'', ''오코예, ''음바쿠''는 각자 사명감을 갖고 ''와칸다''를 지키기 위해 외로운 싸움을 이어간다.

한편, 비브라늄의 패권을 둘러싼 미스터리한 음모와 함께 깊은 해저에서 모습을 드러낸 최강의 적 ''네이머''와 ''탈로칸''의 전사들은 ''와칸다''를 향해 무차별 공격을 퍼붓기 시작하는데…',to_date('22/11/24','RR/MM/DD'),'블랙 팬서의 죽음과 함께 찾아온 고난에 맞서 성장하는 영웅들의 대 서사시!','wakanda.jfif',0,'액션');
Insert into JSC.MOVIE (NAME,INFOMATION,OPEN_DATE,SIMPLE_INFO,IMG_PATH,TICKET_SOLD,GENRE) values ('명량','1597년 임진왜란 6년, 오랜 전쟁으로 인해 혼란이 극에 달한 조선. 무서운 속도로 한양으로 북상하는 왜군에 의해 위기에 처하자 누명을 쓰고 파면을 당했던 이순신이 삼도수군통제사로 재임명된다. 하지만 그에게 남은 건 전의를 상실한 병사와 두려움에 가득 찬 백성, 그리고 12척의 배뿐. 마지막 희망이었던 거북선마저 불타고 잔혹한 성격과 뛰어난 지략을 지닌 용병 구루시마 미치후사가 왜군 수장으로 나서자 조선은 더욱 술렁인다. 330척에 달하는 왜군의 배가 속속 집결하고 압도적인 수의 열세에 모두가 패배를 직감하는 순간, 이순신 장군은 단 12척의 배를 이끌고 명량 바다를 향해 나서는데…! 12척의 조선 vs 330척의 왜군 역사를 바꾼 위대한 전쟁이 시작된다!',to_date('22/11/24','RR/MM/DD'),'단 12척의 배로 330의 왜군에 맞서 승리한 이순신 장군의 전설이 시작된다!','myongrang.jfif',0,'사극');
Insert into JSC.MOVIE (NAME,INFOMATION,OPEN_DATE,SIMPLE_INFO,IMG_PATH,TICKET_SOLD,GENRE) values ('샌 안드레아스','평화롭던 어느 날, 갑자기 땅이 흔들리며 주변의 모든 것이 무너지고, 심지어 땅이 갈라지기도 한다.
가족과 떨어져 있던 남자는 가족을 구하기 위해 무엇이든 하려고 하는데...!',to_date('22/11/24','RR/MM/DD'),'평화롭던 샌 안드레아스에 엄청난 강진이 찾아왔다. 가족을 구하기 위해 무엇이든 해야만 한다!','sanAndreas.jfif',0,'스릴러');
Insert into JSC.MOVIE (NAME,INFOMATION,OPEN_DATE,SIMPLE_INFO,IMG_PATH,TICKET_SOLD,GENRE) values ('지오스톰','가까운 미래, 기후변화로 인해 지구에 갖가지 자연재해가 속출한다. 세계 정부 연합은 더 이상의 재난을 예방하기 위해 세계 인공위성 조직망을 통해 날씨를 조종할 수 있는 ''더치보이 프로그램''을 개발한다.하지만 프로그램에 문제가 생기면서 두바이의 쓰나미와 중국홍콩의 용암 분출, 리우의 혹한, 모스크바의 폭염까지, 세계 곳곳에서 일어날 수 없는 기상이변이 일어난다.개발자 제이크는 오류를 바로잡고자 우주 정거장으로 향하고 그의 동생 맥스는 지구에서 그를 돕는다.',to_date('22/11/24','RR/MM/DD'),'인간이 기후를 조작하면서 찾아온 대 재앙에 맞서는 사람들의 이야기!','GEOstorm.jfif',0,'스릴러');
Insert into JSC.MOVIE (NAME,INFOMATION,OPEN_DATE,SIMPLE_INFO,IMG_PATH,TICKET_SOLD,GENRE) values ('백두산','대한민국 관측 역사상 최대 규모의 백두산 폭발 발생.
갑작스러운 재난에 한반도는 순식간에 아비규환이 되고,
남과 북 모두를 집어삼킬 추가 폭발이 예측된다.
크나큰 혼돈 속에서, 백두산의 마지막 폭발까지의 시간은 점점 가까워 가는데…!',to_date('22/11/24','RR/MM/DD'),'백두산의 마지막 폭발을 막기 위한 특수부대원의 혈투!','bakdoo.jfif',0,'스릴러');
Insert into JSC.MOVIE (NAME,INFOMATION,OPEN_DATE,SIMPLE_INFO,IMG_PATH,TICKET_SOLD,GENRE) values ('엣지 오브 투모로우','가까운 미래, ''미믹''이라 불리는 외계 종족의 침략으로 인류는 멸망 위기를 맞이하게 된다.
인류는 그에 대항해 전 세계 군대가 모두 연합한 연합군인 연합방위군(United Defence Force, UDF)을 창설한다.
방위군의 정훈장교였던 육군 소령 빌 케이지(톰 크루즈)는 자살 작전이나 다름없는 작전에 훈련이나 장비를 제대로 갖추지 못한 상태로 배정되고 전투에 참가 하자마자 죽음을 맞는다.

하지만 불가능한 일이 일어난다.
그가 그 끔찍한 날이 시작된 시간에 다시 깨어나 전투에 참여하게 되고 죽었다가 또 다시 살아나는 것.
외계인과의 접촉으로 같은 시간대를 반복해서 겪게 되는 타임 루프에 갇히게 된 것이다.',to_date('22/11/28','RR/MM/DD'),'외계인에 맞서 싸우는 톰 크루즈의 시원한 액션 영화!','edge.jpg',0,'액션');
REM INSERTING into JSC.MOVIE_SEAT
SET DEFINE OFF;
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','A','1','12:25');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','A','1','13:05');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','A','1','13:45');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','A','1','14:15');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','A','1','15:00');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','A','1','15:40');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','A','2','12:25');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','A','2','13:05');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','A','2','13:45');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','A','2','14:15');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','A','2','15:00');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','A','2','15:40');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','A','3','12:25');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','A','3','13:05');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','A','3','13:45');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','A','3','14:15');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','A','3','15:00');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','A','3','15:40');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','A','4','12:25');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','A','4','13:05');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','A','4','13:45');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','A','4','14:15');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','A','4','15:00');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','A','4','15:40');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','A','5','12:25');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','A','5','13:05');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','A','5','13:45');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','A','5','14:15');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','A','5','15:00');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','A','5','15:40');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','A','6','12:25');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','A','6','13:05');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','A','6','13:45');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','A','6','14:15');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','A','6','15:00');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','A','6','15:40');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','A','7','12:25');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','A','7','13:05');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','A','7','13:45');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','A','7','14:15');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','A','7','15:00');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','A','7','15:40');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','A','8','12:25');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','A','8','13:05');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','A','8','13:45');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','A','8','14:15');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','A','8','15:00');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','A','8','15:40');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','A','9','12:25');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','A','9','13:05');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','A','9','13:45');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','A','9','14:15');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','A','9','15:00');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','A','9','15:40');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','B','1','12:25');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','B','1','13:05');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','B','1','13:45');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','B','1','14:15');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','B','1','15:00');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','B','1','15:40');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','B','2','12:25');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','B','2','13:05');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','B','2','13:45');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','B','2','14:15');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','B','2','15:00');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','B','2','15:40');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','B','3','12:25');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','B','3','13:05');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','B','3','13:45');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','B','3','14:15');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','B','3','15:00');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','B','3','15:40');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','C','7','12:25');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','C','7','13:05');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','C','7','13:45');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','C','7','14:15');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','C','7','15:00');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','C','7','15:40');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','C','8','12:25');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','C','8','13:05');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','C','8','13:45');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','C','8','14:15');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','C','8','15:00');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','C','8','15:40');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','C','9','12:25');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','C','9','13:05');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','C','9','13:45');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','C','9','14:15');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','C','9','15:00');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','C','9','15:40');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','D','1','12:25');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','D','1','13:05');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','D','1','13:45');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','D','1','14:15');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','D','1','15:00');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','D','1','15:40');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','D','2','12:25');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','D','2','13:05');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','D','2','13:45');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','D','2','14:15');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','D','2','15:00');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','D','2','15:40');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','D','3','12:25');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','D','3','13:05');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','D','3','13:45');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','D','3','14:15');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','D','3','15:00');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','D','3','15:40');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','D','4','12:25');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','D','4','13:05');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','D','4','13:45');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','D','4','14:15');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','D','4','15:00');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','D','4','15:40');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','D','5','12:25');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','D','5','13:05');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','D','5','13:45');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','D','5','14:15');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','D','5','15:00');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','D','5','15:40');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','D','6','12:25');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','D','6','13:05');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','D','6','13:45');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','D','6','14:15');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','D','6','15:00');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','D','6','15:40');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','D','7','12:25');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','D','7','13:05');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','D','7','13:45');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','D','7','14:15');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','D','7','15:00');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','D','7','15:40');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','D','8','12:25');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','D','8','13:05');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','D','8','13:45');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','D','8','14:15');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','D','8','15:00');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','D','8','15:40');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','D','9','12:25');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','D','9','13:05');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','D','9','13:45');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','D','9','14:15');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','D','9','15:00');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','D','9','15:40');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','E','1','12:25');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','E','1','13:05');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','E','1','13:45');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','E','1','14:15');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','E','1','15:00');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','E','1','15:40');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','E','2','12:25');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','E','2','13:05');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','E','2','13:45');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','E','2','14:15');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','E','2','15:00');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','E','2','15:40');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','E','3','12:25');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','E','3','13:05');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','E','3','13:45');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','E','3','14:15');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','E','3','15:00');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','E','3','15:40');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','E','4','12:25');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','E','4','13:05');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','E','4','13:45');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','E','4','14:15');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','E','4','15:00');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','E','4','15:40');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','E','5','12:25');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','E','5','13:05');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','E','5','13:45');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','E','5','14:15');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','E','5','15:00');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','E','5','15:40');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','E','6','12:25');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','E','6','13:05');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','E','6','13:45');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','E','6','14:15');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','E','6','15:00');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','E','6','15:40');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','E','7','12:25');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','E','7','13:05');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','E','7','13:45');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','E','7','14:15');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','E','7','15:00');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','E','7','15:40');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','E','8','12:25');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','E','8','13:05');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','E','8','13:45');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','E','8','14:15');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','E','8','15:00');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','E','8','15:40');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','E','9','12:25');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','E','9','13:05');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','E','9','13:45');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','E','9','14:15');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','E','9','15:00');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','E','9','15:40');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','F','1','12:25');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','F','1','13:05');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','F','1','13:45');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','F','1','14:15');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','F','1','15:00');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','F','1','15:40');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','F','2','12:25');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','F','2','13:05');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','F','2','13:45');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','F','2','14:15');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','F','2','15:00');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','F','2','15:40');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','F','3','12:25');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','F','3','13:05');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','F','3','13:45');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','F','3','14:15');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','F','3','15:00');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','F','3','15:40');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','F','4','12:25');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','F','4','13:05');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','F','4','13:45');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','F','4','14:15');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','F','4','15:00');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','F','4','15:40');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','F','5','12:25');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','F','5','13:05');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','F','5','13:45');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','F','5','14:15');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','F','5','15:00');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','F','5','15:40');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','F','6','12:25');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','F','6','13:05');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','F','6','13:45');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','F','6','14:15');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','F','6','15:00');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','F','6','15:40');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','F','7','12:25');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','F','7','13:05');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','F','7','13:45');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','F','7','14:15');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','F','7','15:00');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','F','7','15:40');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','F','8','12:25');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','F','8','13:05');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','F','8','13:45');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','F','8','14:15');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','F','8','15:00');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','F','8','15:40');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','F','9','12:25');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','F','9','13:05');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','F','9','13:45');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','F','9','14:15');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','F','9','15:00');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','F','9','15:40');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','B','4','12:25');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','B','4','13:05');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','B','4','13:45');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','B','4','14:15');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','B','4','15:00');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','B','4','15:40');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','B','5','12:25');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','B','5','13:05');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','B','5','13:45');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','B','5','14:15');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','B','5','15:00');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','B','5','15:40');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','B','6','12:25');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','B','6','13:05');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','B','6','13:45');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','B','6','14:15');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','B','6','15:00');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','B','6','15:40');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','B','7','12:25');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','B','7','13:05');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','B','7','13:45');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','B','7','14:15');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','B','7','15:00');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','B','7','15:40');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','B','8','12:25');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','B','8','13:05');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','B','8','13:45');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','B','8','14:15');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','B','8','15:00');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','B','8','15:40');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','B','9','12:25');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','B','9','13:05');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','B','9','13:45');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','B','9','14:15');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','B','9','15:00');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','B','9','15:40');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','C','1','12:25');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','C','1','13:05');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','C','1','13:45');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','C','1','14:15');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','C','1','15:00');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','C','1','15:40');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','C','2','12:25');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','C','2','13:05');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','C','2','13:45');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','C','2','14:15');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','C','2','15:00');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','C','2','15:40');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','C','3','12:25');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','C','3','13:05');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','C','3','13:45');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','C','3','14:15');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','C','3','15:00');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','C','3','15:40');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','C','4','12:25');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','C','4','13:05');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','C','4','13:45');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','C','4','14:15');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','C','4','15:00');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','C','4','15:40');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','C','5','12:25');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','C','5','13:05');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','C','5','13:45');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','C','5','14:15');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','C','5','15:00');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','C','5','15:40');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','C','6','12:25');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','C','6','13:05');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','C','6','13:45');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','C','6','14:15');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','C','6','15:00');
Insert into JSC.MOVIE_SEAT (MNAME,MDATE,SEAT_COL,SEAT_ROW,MTIME) values ('엣지 오브 투모로우','2022-02-28','C','6','15:40');
REM INSERTING into JSC.REVIEW
SET DEFINE OFF;
REM INSERTING into JSC.SERVICE_CENTER
SET DEFINE OFF;
REM INSERTING into JSC.SNACK
SET DEFINE OFF;
Insert into JSC.SNACK (NAME,PRICE,INFO,TOTAL_SALES,UPLOAD_DATE,IMG_PATH) values ('통밀빵 & 딸기잼',9000,'영화관에서 즐기는 색다른 경험! 
고소한 통밀빵과 새콤달콤한 딸기잼의 조합에 푹 빠져보세요.

* 딸기잼은 기본으로 1개가 제공되며, 추가 주문 시 개당 500원이 추가됩니다.',0,to_date('22/11/21','RR/MM/DD'),'Bread.jpg');
Insert into JSC.SNACK (NAME,PRICE,INFO,TOTAL_SALES,UPLOAD_DATE,IMG_PATH) values ('팝콘(S)',4000,'영화관에서 빠질 수 없는 간식, 팝콘입니다.
국내산 옥수수를 사용해 더욱 고소한 맛이 일품입니다.


*기본 S 사이즈로 제공되며, M 사이즈업 시 5000원, L 사이즈업 시 7000원이 추가됩니다.',0,to_date('22/11/21','RR/MM/DD'),'PopCorn.jpg');
Insert into JSC.SNACK (NAME,PRICE,INFO,TOTAL_SALES,UPLOAD_DATE,IMG_PATH) values ('오징어튀김',7000,'영화관에서 만나는 바삭쫀득한 오징어튀김!
통으로 튀겨 더욱 촉촉하고 바삭한 오징어 튀김을 만나보세요.
고추장과 마요네즈가 포함되어 있어 더욱 다양한 풍미를 즐기실 수 있습니다.


*소스 추가 시 개당 500원이 추가됩니다. ',0,to_date('22/11/21','RR/MM/DD'),'FriedSquid.png');
Insert into JSC.SNACK (NAME,PRICE,INFO,TOTAL_SALES,UPLOAD_DATE,IMG_PATH) values ('치킨 & 비어',23000,'영화관에서 즐기는 치맥!
푸짐한 양념치킨과 시원한 500cc 맥주 한 잔, 아삭한 양배추 샐러드의 조화가 어우러지는 아이템입니다.',0,to_date('22/11/21','RR/MM/DD'),'ChickenNBeer.jpg');
Insert into JSC.SNACK (NAME,PRICE,INFO,TOTAL_SALES,UPLOAD_DATE,IMG_PATH) values ('JS패밀리세트',21000,'XL사이즈 팝콘과 1L짜리 콜라를 한번에!
압도적인 양으로 영화관을 압도하는 세트입니다.',0,to_date('22/11/21','RR/MM/DD'),'ColaPopCorn.jpg');
Insert into JSC.SNACK (NAME,PRICE,INFO,TOTAL_SALES,UPLOAD_DATE,IMG_PATH) values ('초코쿠키 (7개)',7000,'바삭하고 촉촉한 초코쿠키입니다.
매일 아침마다 새로 반죽하고 갓 구워내어 더욱 고소합니다. 1,000원을 추가하여 우유 500ml를 구매하실 수 있습니다.',0,to_date('22/11/21','RR/MM/DD'),'Cookie.jfif');
Insert into JSC.SNACK (NAME,PRICE,INFO,TOTAL_SALES,UPLOAD_DATE,IMG_PATH) values ('코카콜라 500ML',4000,'시원한 에어컨 바람 아래 영화를 보며 즐기는 콜라의 맛은 각별합니다. 이 특별한 경험을 놓치지 마세요!',0,null,'cola.jfif');
--------------------------------------------------------
--  DDL for Index CUSTOMER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "JSC"."CUSTOMER_PK" ON "JSC"."CUSTOMER" ("RRN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index ID_INDEX
--------------------------------------------------------

  CREATE INDEX "JSC"."ID_INDEX" ON "JSC"."CUSTOMER" ("ID", "PWD") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index CUSTOMER_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "JSC"."CUSTOMER_UK1" ON "JSC"."CUSTOMER" ("EMAIL", "ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index MOIVE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "JSC"."MOIVE_PK" ON "JSC"."MOVIE" ("NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index MOVIE_SEAT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "JSC"."MOVIE_SEAT_PK" ON "JSC"."MOVIE_SEAT" ("MNAME", "MDATE", "SEAT_COL", "SEAT_ROW", "MTIME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index REVIEW_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "JSC"."REVIEW_PK" ON "JSC"."REVIEW" ("REVIEWER", "TARGET_MOVIE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SERVICE_CENTER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "JSC"."SERVICE_CENTER_PK" ON "JSC"."SERVICE_CENTER" ("NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SNACK_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "JSC"."SNACK_PK" ON "JSC"."SNACK" ("NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table CUSTOMER
--------------------------------------------------------

  ALTER TABLE "JSC"."CUSTOMER" ADD CONSTRAINT "CUSTOMER_UK1" UNIQUE ("EMAIL", "ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "JSC"."CUSTOMER" ADD CONSTRAINT "CUSTOMER_PK" PRIMARY KEY ("RRN")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "JSC"."CUSTOMER" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "JSC"."CUSTOMER" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "JSC"."CUSTOMER" MODIFY ("PWD" NOT NULL ENABLE);
  ALTER TABLE "JSC"."CUSTOMER" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "JSC"."CUSTOMER" MODIFY ("RRN" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MOVIE
--------------------------------------------------------

  ALTER TABLE "JSC"."MOVIE" MODIFY ("GENRE" NOT NULL ENABLE);
  ALTER TABLE "JSC"."MOVIE" ADD CONSTRAINT "MOIVE_PK" PRIMARY KEY ("NAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "JSC"."MOVIE" MODIFY ("TICKET_SOLD" NOT NULL ENABLE);
  ALTER TABLE "JSC"."MOVIE" MODIFY ("INFOMATION" NOT NULL ENABLE);
  ALTER TABLE "JSC"."MOVIE" MODIFY ("NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MOVIE_SEAT
--------------------------------------------------------

  ALTER TABLE "JSC"."MOVIE_SEAT" ADD CONSTRAINT "MOVIE_SEAT_PK" PRIMARY KEY ("MNAME", "MDATE", "SEAT_COL", "SEAT_ROW", "MTIME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "JSC"."MOVIE_SEAT" MODIFY ("MTIME" NOT NULL ENABLE);
  ALTER TABLE "JSC"."MOVIE_SEAT" MODIFY ("SEAT_ROW" NOT NULL ENABLE);
  ALTER TABLE "JSC"."MOVIE_SEAT" MODIFY ("SEAT_COL" NOT NULL ENABLE);
  ALTER TABLE "JSC"."MOVIE_SEAT" MODIFY ("MDATE" NOT NULL ENABLE);
  ALTER TABLE "JSC"."MOVIE_SEAT" MODIFY ("MNAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table REVIEW
--------------------------------------------------------

  ALTER TABLE "JSC"."REVIEW" MODIFY ("SCORE" NOT NULL ENABLE);
  ALTER TABLE "JSC"."REVIEW" ADD CONSTRAINT "REVIEW_PK" PRIMARY KEY ("REVIEWER", "TARGET_MOVIE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "JSC"."REVIEW" MODIFY ("TARGET_MOVIE" NOT NULL ENABLE);
  ALTER TABLE "JSC"."REVIEW" MODIFY ("REVIEWER" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SERVICE_CENTER
--------------------------------------------------------

  ALTER TABLE "JSC"."SERVICE_CENTER" ADD CONSTRAINT "SERVICE_CENTER_PK" PRIMARY KEY ("NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "JSC"."SERVICE_CENTER" MODIFY ("TITLE" NOT NULL ENABLE);
  ALTER TABLE "JSC"."SERVICE_CENTER" MODIFY ("TEXT" NOT NULL ENABLE);
  ALTER TABLE "JSC"."SERVICE_CENTER" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "JSC"."SERVICE_CENTER" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "JSC"."SERVICE_CENTER" MODIFY ("NUM" NOT NULL ENABLE);
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
