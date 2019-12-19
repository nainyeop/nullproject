--------------------------------------------------------
--  파일이 생성됨 - 화요일-11월-12-2019   
--------------------------------------------------------
DROP SEQUENCE "NULLPROJECT"."SEQ_NULLPROJECT_BOARD_NO";
DROP SEQUENCE "NULLPROJECT"."SEQ_NULLPROJECT_CART_NO";
DROP SEQUENCE "NULLPROJECT"."SEQ_NULLPROJECT_COMMENT_NO";
DROP SEQUENCE "NULLPROJECT"."SEQ_NULLPROJECT_IMG_IDX";
DROP SEQUENCE "NULLPROJECT"."SEQ_NULLPROJECT_MEMBER_NO";
DROP SEQUENCE "NULLPROJECT"."SEQ_NULLPROJECT_ORDER_NO";
DROP SEQUENCE "NULLPROJECT"."SEQ_NULLPROJECT_PRODUCT_NO";
DROP TABLE "NULLPROJECT"."NULLPROJECT_BOARD" cascade constraints;
DROP TABLE "NULLPROJECT"."NULLPROJECT_CART" cascade constraints;
DROP TABLE "NULLPROJECT"."NULLPROJECT_COMMENT" cascade constraints;
DROP TABLE "NULLPROJECT"."NULLPROJECT_IMG" cascade constraints;
DROP TABLE "NULLPROJECT"."NULLPROJECT_MEMBER" cascade constraints;
DROP TABLE "NULLPROJECT"."NULLPROJECT_ORDER" cascade constraints;
DROP TABLE "NULLPROJECT"."NULLPROJECT_ORDERLIST" cascade constraints;
DROP TABLE "NULLPROJECT"."NULLPROJECT_PRODUCT" cascade constraints;
--------------------------------------------------------
--  DDL for Sequence SEQ_NULLPROJECT_BOARD_NO
--------------------------------------------------------

   CREATE SEQUENCE  "NULLPROJECT"."SEQ_NULLPROJECT_BOARD_NO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_NULLPROJECT_CART_NO
--------------------------------------------------------

   CREATE SEQUENCE  "NULLPROJECT"."SEQ_NULLPROJECT_CART_NO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_NULLPROJECT_COMMENT_NO
--------------------------------------------------------

   CREATE SEQUENCE  "NULLPROJECT"."SEQ_NULLPROJECT_COMMENT_NO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_NULLPROJECT_IMG_IDX
--------------------------------------------------------

   CREATE SEQUENCE  "NULLPROJECT"."SEQ_NULLPROJECT_IMG_IDX"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_NULLPROJECT_MEMBER_NO
--------------------------------------------------------

   CREATE SEQUENCE  "NULLPROJECT"."SEQ_NULLPROJECT_MEMBER_NO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_NULLPROJECT_ORDER_NO
--------------------------------------------------------

   CREATE SEQUENCE  "NULLPROJECT"."SEQ_NULLPROJECT_ORDER_NO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_NULLPROJECT_PRODUCT_NO
--------------------------------------------------------

   CREATE SEQUENCE  "NULLPROJECT"."SEQ_NULLPROJECT_PRODUCT_NO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table NULLPROJECT_BOARD
--------------------------------------------------------

  CREATE TABLE "NULLPROJECT"."NULLPROJECT_BOARD" 
   (	"BOARD_NO" NUMBER, 
	"BOARD_TITLE" VARCHAR2(100 BYTE), 
	"MEMBER_NO" NUMBER, 
	"BOARD_CONTENT" VARCHAR2(4000 BYTE), 
	"BOARD_CRE_DATE" DATE, 
	"BOARD_MOD_DATE" DATE, 
	"BOARD_CATEGORY" VARCHAR2(10 BYTE), 
	"BOARD_STATE" NUMBER(1,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table NULLPROJECT_CART
--------------------------------------------------------

  CREATE TABLE "NULLPROJECT"."NULLPROJECT_CART" 
   (	"CART_NO" NUMBER(10,0), 
	"CART_MEMBERNO" NUMBER(10,0), 
	"CART_PRODUCTNO" NUMBER, 
	"CART_COUNT" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table NULLPROJECT_COMMENT
--------------------------------------------------------

  CREATE TABLE "NULLPROJECT"."NULLPROJECT_COMMENT" 
   (	"BOARD_NO" NUMBER, 
	"COMMENT_NO" NUMBER, 
	"COMMENT_CRE_DATE" DATE, 
	"COMMENT_WRITER" VARCHAR2(50 BYTE), 
	"COMMENT_CONTENT" VARCHAR2(2000 BYTE), 
	"COMMENT_STATE" NUMBER(1,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table NULLPROJECT_IMG
--------------------------------------------------------

  CREATE TABLE "NULLPROJECT"."NULLPROJECT_IMG" 
   (	"IMG_IDX" NUMBER, 
	"IMG_ORIGINAL_FILENAME" VARCHAR2(300 BYTE), 
	"IMG_STORED_FILENAME" VARCHAR2(500 BYTE), 
	"IMG_FILESIZE" NUMBER, 
	"IMG_CREDATE" DATE, 
	"PRODUCT_NO" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table NULLPROJECT_MEMBER
--------------------------------------------------------

  CREATE TABLE "NULLPROJECT"."NULLPROJECT_MEMBER" 
   (	"MEMBER_NO" NUMBER, 
	"MEMBER_NAME" VARCHAR2(20 BYTE), 
	"MEMBER_EMAIL" VARCHAR2(50 BYTE), 
	"MEMBER_PHONE" VARCHAR2(20 BYTE), 
	"MEMBER_ADDRESS" VARCHAR2(200 BYTE), 
	"MEMBER_CASH" NUMBER(10,0), 
	"MEMBER_PASSWORD" VARCHAR2(20 BYTE), 
	"MEMBER_CRE_DATE" DATE, 
	"MEMBER_ADMIN" NUMBER(1,0), 
	"MEMBER_CATEGORY" VARCHAR2(10 BYTE), 
	"MEMBER_STATE" NUMBER(1,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "NULLPROJECT"."NULLPROJECT_MEMBER"."MEMBER_NO" IS '고객 고유 번호';
   COMMENT ON COLUMN "NULLPROJECT"."NULLPROJECT_MEMBER"."MEMBER_NAME" IS '고객 이름';
   COMMENT ON COLUMN "NULLPROJECT"."NULLPROJECT_MEMBER"."MEMBER_EMAIL" IS '고객 이메일';
   COMMENT ON COLUMN "NULLPROJECT"."NULLPROJECT_MEMBER"."MEMBER_PHONE" IS '고객 휴대폰번호';
   COMMENT ON COLUMN "NULLPROJECT"."NULLPROJECT_MEMBER"."MEMBER_ADDRESS" IS '고객 주소';
   COMMENT ON COLUMN "NULLPROJECT"."NULLPROJECT_MEMBER"."MEMBER_CASH" IS '고객 보유 금액';
   COMMENT ON COLUMN "NULLPROJECT"."NULLPROJECT_MEMBER"."MEMBER_PASSWORD" IS '고객 비밀번호';
   COMMENT ON COLUMN "NULLPROJECT"."NULLPROJECT_MEMBER"."MEMBER_CRE_DATE" IS '고객 가입일';
   COMMENT ON COLUMN "NULLPROJECT"."NULLPROJECT_MEMBER"."MEMBER_ADMIN" IS '관리자 권한';
   COMMENT ON COLUMN "NULLPROJECT"."NULLPROJECT_MEMBER"."MEMBER_CATEGORY" IS '분류(m)';
   COMMENT ON COLUMN "NULLPROJECT"."NULLPROJECT_MEMBER"."MEMBER_STATE" IS '고객 상태 (1)-활성 상태, (0)-비활성 상태';
   COMMENT ON TABLE "NULLPROJECT"."NULLPROJECT_MEMBER"  IS '고객 테이블';
--------------------------------------------------------
--  DDL for Table NULLPROJECT_ORDER
--------------------------------------------------------

  CREATE TABLE "NULLPROJECT"."NULLPROJECT_ORDER" 
   (	"ORDER_NO" NUMBER, 
	"MEMBER_NO" NUMBER, 
	"ORDER_DATE" DATE, 
	"ORDER_PRICE" NUMBER(10,0), 
	"ORDER_MEMBERNAME" VARCHAR2(20 BYTE), 
	"ORDER_EMAIL" VARCHAR2(50 BYTE), 
	"ORDER_PHONE" VARCHAR2(20 BYTE), 
	"ORDER_ADDRESS" VARCHAR2(200 BYTE), 
	"ORDER_REQUIREMENT" VARCHAR2(180 BYTE), 
	"ORDER_CATEGORY" VARCHAR2(10 BYTE), 
	"ORDER_STATE" NUMBER(1,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "NULLPROJECT"."NULLPROJECT_ORDER"."ORDER_NO" IS '주문 번호';
   COMMENT ON COLUMN "NULLPROJECT"."NULLPROJECT_ORDER"."MEMBER_NO" IS '고객 고유 번호';
   COMMENT ON COLUMN "NULLPROJECT"."NULLPROJECT_ORDER"."ORDER_DATE" IS '주문 날짜';
   COMMENT ON COLUMN "NULLPROJECT"."NULLPROJECT_ORDER"."ORDER_PRICE" IS '주문 금액';
   COMMENT ON COLUMN "NULLPROJECT"."NULLPROJECT_ORDER"."ORDER_MEMBERNAME" IS '받는 사람';
   COMMENT ON COLUMN "NULLPROJECT"."NULLPROJECT_ORDER"."ORDER_EMAIL" IS '이메일';
   COMMENT ON COLUMN "NULLPROJECT"."NULLPROJECT_ORDER"."ORDER_PHONE" IS '휴대폰번호';
   COMMENT ON COLUMN "NULLPROJECT"."NULLPROJECT_ORDER"."ORDER_ADDRESS" IS '받는 주소';
   COMMENT ON COLUMN "NULLPROJECT"."NULLPROJECT_ORDER"."ORDER_REQUIREMENT" IS '요청사항';
   COMMENT ON COLUMN "NULLPROJECT"."NULLPROJECT_ORDER"."ORDER_CATEGORY" IS '분류(o)';
   COMMENT ON COLUMN "NULLPROJECT"."NULLPROJECT_ORDER"."ORDER_STATE" IS '주문 상태 (1)-활성 상태, (0)-비활성 상태';
   COMMENT ON TABLE "NULLPROJECT"."NULLPROJECT_ORDER"  IS '주문 테이블';
--------------------------------------------------------
--  DDL for Table NULLPROJECT_ORDERLIST
--------------------------------------------------------

  CREATE TABLE "NULLPROJECT"."NULLPROJECT_ORDERLIST" 
   (	"PRODUCT_NO" NUMBER, 
	"PRODUCT_COUNT" NUMBER(4,0), 
	"PRODUCT_NAME" VARCHAR2(500 BYTE), 
	"ORDER_NO" NUMBER, 
	"PRODUCT_PRICE" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table NULLPROJECT_PRODUCT
--------------------------------------------------------

  CREATE TABLE "NULLPROJECT"."NULLPROJECT_PRODUCT" 
   (	"PRODUCT_NO" NUMBER, 
	"PRODUCT_NAME" VARCHAR2(500 BYTE), 
	"PRODUCT_PRICE" NUMBER(10,0), 
	"PRODUCT_COSTPRICE" NUMBER(10,0), 
	"PRODUCT_STOCK" NUMBER(5,0), 
	"PRODUCT_SALSEVOLUME" NUMBER(5,0), 
	"PRODUCT_DETAIL" VARCHAR2(4000 BYTE), 
	"PRODUCT_CRE_DATE" DATE, 
	"PRODUCT_MOD_DATE" DATE, 
	"PRODUCT_CATEGORY" VARCHAR2(10 BYTE), 
	"PRODUCT_STATE" NUMBER(1,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into NULLPROJECT.NULLPROJECT_BOARD
SET DEFINE OFF;
Insert into NULLPROJECT.NULLPROJECT_BOARD (BOARD_NO,BOARD_TITLE,MEMBER_NO,BOARD_CONTENT,BOARD_CRE_DATE,BOARD_MOD_DATE,BOARD_CATEGORY,BOARD_STATE) values (1,'가성비 최고의 여행',1,'비행시간 때문에 선뜻 나서기 쉽지않은 미국여행이었는데 한 살이라도 젊을 때 가기로 마음먹고 여행을 시작했다. 일부러 찾고 싶을 만큼 아름다웠다. 샌프란 시스코에 들어가기 전에 다리에서 우뚝솟은 샌프란 시스코의 모습을 "San Francisco"(Scott McKenzie)란 노래를 들으며 감상하니 가슴이 뭉클해졌습니다. 드 넓은 평야지대에서 재배되고 있는 각 종 농산물(포도, 아몬드, 옥수수 등)을 보면서 미국이 얼마나 큰 나라인지를 새삼 느끼게 되었고 우리 나라 농업이 얼마나 어려울까라는 생각이 들어 씁쓸했다. 그랜드 캐년을 가는동안 차창밖으로 펼쳐진 모하비 사막의 색다른 풍경은 지금도 눈에 선하다. 그랜드 캐년은 말로 표현해도 부족할 만큼 자연의 위대함을 느끼게 되는 소중한 시간이었다.',to_date('19/11/11','RR/MM/DD'),to_date('19/11/11','RR/MM/DD'),'b',1);
Insert into NULLPROJECT.NULLPROJECT_BOARD (BOARD_NO,BOARD_TITLE,MEMBER_NO,BOARD_CONTENT,BOARD_CRE_DATE,BOARD_MOD_DATE,BOARD_CATEGORY,BOARD_STATE) values (2,'동부쪽도 다녀온 후기입니다 !',2,'[동부여행] .가이드 - 신현웅 가이드님은 내가 지금까지 여행을 다니면서 처음 만나는 진정한 가이드였다. 일정관리는 물론 차내에 물을 항시 준비하고 특히 호텔에서는 여행객들이 조금이라도 불편한 점이 있는 지 모든 방을 돌아다니며 확인하고 문제가 있으면 조치를 해주었다. 정말로 여행객들을 진심으로 가족같이 보살피는 모습에서 진정으로 자신의 직업을 사랑하는 사람이라고 느꼈다. 이번 여행 후기도 사실을 신현웅 가이드님 때문에 쓰게되었다. 진심으로 감사함을 전합니다. .음식 - 한식과 현지식이 골고루 잘 나왔다. 특히 현지식 부페는 정말로 좋았다. 푸짐하게 먹고 즐겁게 놀다온 여행이었다. .숙박 - 호텔은 매우 넓고 깨끗하고 조용하고 좋았다. .관광 - 부여행이 자연 경관 위주의 여행이었다면 동부여행은 자연과 도시가 적절히 잘 배치된 여행이었다. 세계의 도시 맨하탄, 정치의 도시 워싱턴, 교육의 도시 보스턴은 나름대로의 멋이 있었다. 말로만 듣던 월가를 걸어보고 황소의 뿔도 만져보고 엠파이어 스테이트 빌딩을 올라가 뉴욕의 전망을 보면서 미국의 힘을 느낄 수 있었다. 밤에 허드슨 강 건너로 보이는 뉴욕의 야경은 또 하나의 멋진 광경이었다. 워싱턴에서는 미국의 역사에 대해 알 수 있는 시간이었고 깔끔하게 계획된 도시의 멋을 느낄 수 있었으며 한국전쟁기념공원을 보면서 우리나라의 아품과 지금의 우리나라가 있기까지 얼마난 많은 사람들의 희생이 있었는지 새삼느끼게되었다. 또한 차창밖으로 지나다니는 현대, 기아 자동차와 호텔에서의 삼성, LG의 가전제품을 보면서 우리나라의 위상을 느낄 수 있었다. 단연 동부여행의 핵심은 나이아가라 폭포다. 폭포 주변에 울긋불긋 물든 단풍은 한 폭의 그림이었다. 아무리 눈으로 담으려해도 끝이 없었다. 토론토, 몬트리올, 퀘벡을 지나면서 차창밖으로 보이는 풍경은 또 다른 멋이 있었다. 끝없이 펼쳐진 들판과 불게 물든 단풍은 캐나다 여행이 진수를 보여주었다. 모든 여행지에 대한 내용을 공유하고 싶지만 그것은 직접 가서 보고 느끼는 것이 좋을 것 같다. 아무리 글로 표현해도 몸소 느끼는 것만 못할 것이다. 아무튼 17일 간의 짧지 않은 여행이었지만 언제 시간이 갔는지 모르게 빨리 지나갔다. 편안한 잠자리와 푸짐한 먹거리 그리고 아름다운 경관등 모든것이 만족한 가성비 최고의 여행이었다. 특히, 신현웅 가이드님의 풍부한 감성(음악을 전공하셔셔 그런가?)과 자신의 일을 진정으로 사랑하는 마음과 여행객들을 가족처럼 보살피는 그 마음이 너무 좋았다. 헤어질때 아쉬움에 눈물을 글썽이게 만들었다. 기회가 되면 다시 한 번 미국여행을 가보고 싶다.',to_date('19/11/11','RR/MM/DD'),to_date('19/11/11','RR/MM/DD'),'b',1);
Insert into NULLPROJECT.NULLPROJECT_BOARD (BOARD_NO,BOARD_TITLE,MEMBER_NO,BOARD_CONTENT,BOARD_CRE_DATE,BOARD_MOD_DATE,BOARD_CATEGORY,BOARD_STATE) values (3,'동부쪽도 다녀온 후기입니다 !',3,'[동부여행] .가이드 - 신현웅 가이드님은 내가 지금까지 여행을 다니면서 처음 만나는 진정한 가이드였다. 일정관리는 물론 차내에 물을 항시 준비하고 특히 호텔에서는 여행객들이 조금이라도 불편한 점이 있는 지 모든 방을 돌아다니며 확인하고 문제가 있으면 조치를 해주었다. 정말로 여행객들을 진심으로 가족같이 보살피는 모습에서 진정으로 자신의 직업을 사랑하는 사람이라고 느꼈다. 이번 여행 후기도 사실을 신현웅 가이드님 때문에 쓰게되었다. 진심으로 감사함을 전합니다. 세계의 도시 맨하탄, 정치의 도시 워싱턴, 교육의 도시 보스턴은 나름대로의 멋이 있었다. 말로만 듣던 월가를 걸어보고 황소의 뿔도 만져보고 엠파이어 스테이트 빌딩을 올라가 뉴욕의 전망을 보면서 미국의 힘을 느낄 수 있었다. 밤에 허드슨 강 건너로 보이는 뉴욕의 야경은 또 하나의 멋진 광경이었다. ',to_date('19/11/11','RR/MM/DD'),to_date('19/11/11','RR/MM/DD'),'b',1);
Insert into NULLPROJECT.NULLPROJECT_BOARD (BOARD_NO,BOARD_TITLE,MEMBER_NO,BOARD_CONTENT,BOARD_CRE_DATE,BOARD_MOD_DATE,BOARD_CATEGORY,BOARD_STATE) values (4,'소중한 추억이 된 여행이였습니다.',4,'즐거운 여행 잘 다녀왔습니다. 급하게 알아보고 가장 늦은 비행일정으로 예약해야했기 때문에 선택의 폭이 없었습니다. 또 가족과 처음하는 패키지 여행이라 조금 걱정도 있었지만, 자유일정이 많아 고민할 필요가 없이 진행하게 되었습니다. 늘 자유여행이라 검색하고, 전화하고, 예약하고, 확인하고의 여행 준비의 시간이 없어 아쉽기도, 또 편하기도 했습니다. 남들 덜 가는 여행지라 생각했는데,, 역시나 많은 한국인으로 좀 놀라기도 했지요. 아이들과 하는 패키지라 조금 걱정스럽기도 했는데, 가이드님 너무 고마웠습니다.',to_date('19/11/11','RR/MM/DD'),to_date('19/11/11','RR/MM/DD'),'b',1);
Insert into NULLPROJECT.NULLPROJECT_BOARD (BOARD_NO,BOARD_TITLE,MEMBER_NO,BOARD_CONTENT,BOARD_CRE_DATE,BOARD_MOD_DATE,BOARD_CATEGORY,BOARD_STATE) values (5,'또 만나요~',5,'바다 속은 그닥이었지만, 다음에 또 그냥 쉬고 싶을 때는 코타키나발루가 생각 날 것 같고.... 다음에 또 패키지로 여행을 한다면 션가이드가 있는 곳으로 가이드 꼭 찍어서 가고 싶습니다. 정말 잘 쉬었고, 이제 그 잠깐의 쉼으로 열심히 지낼 수 있을 것 같습니다.  짧았던 여행이지만 생각하기 나름이고, 마음먹기 나름임을 늘 기억하고 좋은 추억으로 남기렵니다. 션가이드님.... 고마웠어요.... 또 인연이 되면 만나요~~~',to_date('19/11/11','RR/MM/DD'),to_date('19/11/11','RR/MM/DD'),'b',1);
Insert into NULLPROJECT.NULLPROJECT_BOARD (BOARD_NO,BOARD_TITLE,MEMBER_NO,BOARD_CONTENT,BOARD_CRE_DATE,BOARD_MOD_DATE,BOARD_CATEGORY,BOARD_STATE) values (6,'싱가포르 여행 후기',6,'10. 4일 금요일 부터 출발한 싱가포르 여행이었는데 첫날에는 일단 저녁비행기에서 부터 시작했는데 대부분 비행기 진동 때문에 잠을 제대로 못자고 싱가포르에 도착했습니다. 이 후 조금 기다렸다가 가이드가 바로 다음 여행지를 연속으로 다니는데 첫날 여행지들은 겉핡기로 너무 빠르게 보고 넘어가서 볼시간도 없었고 힘들기만 많이 힘들었습니다. 저녁에 인도네시아 바탐으로 이동하였는데 현지가이드 분이 바로 저녁 식사 하고 호텔에 갔습니다. 호텔은 매우 만족하였고 다음날 바탐 일정을 보냈습니다. 바탐에서는 가이드 분이 친절하게 농담도 자주 해주시고 친절하셔서 모든 일정은 매우 만족하고 돌아갔고 후에 다음날에는 싱가포르로 갔습니다. 싱가포르에서 선택관광과 기본일정을 하였는데 이 날은 그래도 비교적 만족하였는데, 선택일정 중 스카이 파크는 선택 관광에 기본이라 어쩔 수 없이 갔는데 그렇게 볼게 없었습니다. 스카이 파크 다음 나머지인 공원이랑 야간 보트도 있었는데 그런 것 들은 재미있었습니다. 놀고 호텔에 갔는데 싱가포르 호텔이 콘센트가 않좋고 욕조도 불편해 좋지않았고 아침은 맛있었습니다.  특히 이번 여행에서 바탐은 싱가포르 도착 후 바탐이 인도네시아 란것을 알게되었는데 현지 가이드 분이 친절하게 설명도 해주시고 분위기를 띄어줘서 제일 재밌었습니다',to_date('19/11/11','RR/MM/DD'),to_date('19/11/11','RR/MM/DD'),'b',1);
Insert into NULLPROJECT.NULLPROJECT_BOARD (BOARD_NO,BOARD_TITLE,MEMBER_NO,BOARD_CONTENT,BOARD_CRE_DATE,BOARD_MOD_DATE,BOARD_CATEGORY,BOARD_STATE) values (7,'꿈에도 그리던 미국여행',7,'사랑하는 딸이 나와 아내의 나이 70세가 되는 2019년 - 부모의 7순을 기념해서 작년부터 차곡차곡 적금을 들어서 마련해 준 돈으로 미국 서부여행을 다녀 온지가 벌써 한달도 훨씬 넘었다. 올 2019년에 다녀온 해외여행만 벌써 3번째이였기에 큰 기대도 하지 않고 떠났다, 사실이지 일년에 한두차례씩은 반드시 다녀오는 해외여행이기에 미국은 시큰둥했다, 그도 그럴 것이 미국의 풍경은 TV에서나 영화에서 많이 봤기 때문이다. 출발 첫날 9월 19일 오후 5시 30분, 인천공항 제1터미널 3층 A카운터 – 담당직원이 별로 친절하지 않았다. 그래도 인천공항에서 손님들을 응대하는 직원들은 엘리트 사원일텐데 왜 그럴까 의구심이 생겼다. 어쨌든 모든 수속을 마치고 사전에 지정한 좌석에 나란히 앉아, 졸다가 깨다가를 반복하기를 10시간 여, 드디어 미국에 도착했다. 입국장은 붐볐고 시간도 오래 걸렸다. 입국심사관은 "휴가를 왔느냐?"고, 아니면 "허니문을 즐기러 왔느냐?"고 농담조로 얘기하면서 즐거운 여행이 되라고 축복해 주었다. 공항 입국장에 들어서니 “WELCOME TO CALFORNIA”라는 환영문구가 우리를 반겨준다. 드디어 미국땅을 밟았구나라는 생각에 가슴이 설레었다. 우리 일행을 애타게 기다리던 가이드를 만나고 대형버스를 타고 미국여행을 시작하게 된다.',to_date('19/11/11','RR/MM/DD'),to_date('19/11/11','RR/MM/DD'),'b',1);
Insert into NULLPROJECT.NULLPROJECT_BOARD (BOARD_NO,BOARD_TITLE,MEMBER_NO,BOARD_CONTENT,BOARD_CRE_DATE,BOARD_MOD_DATE,BOARD_CATEGORY,BOARD_STATE) values (8,'이해범 가이드님 칭찬합니다.',8,'이해범 가이드님 칭찬합니다~~^^ 남편과 함께 한 이번 터키 여행을 해박한 지식과 꼼꼼한 일처리로 불편함 없이 즐거운 여행으로 만들어 주셨고 또한 투어에서 느낄 수 없는 멋진 경험들을 만들어 주신덕에  인상적인 여행으로 남게 해주셨지요~~ 근사한 풍광도 좋았지만 이해범 가이드님께서는 먹방투어라는 참신한 아이디어로 본인의 사비를 털어가며 가는 곳 마다 그지역의 특산물을 사다 맛보게 해주셨는데 오히려 이런 소소한 즐거움이 더욱 더 크게 기억속에 자리잡을 수 있게 되었답니다~~ 힘들게 양손 가득 탄산수를 사다 모두에게 맛보게 하고  큼직하게 썬 달콤한 메론을 길거리에서 다들 먹으며 얼마나들 즐거워 했었는지요~~ 베이파자르에선 소박한 빵집에서 금방 만든 빵도 시식할 수 있었고 싱싱한 당근을 한보따리 사다 일일이 나눠주는 등 투어에선 찿아볼 수 없는 멋진 경험을 주었습니다~~^^ 호텔도 아주 깨끗하고 모든것이 좋았던 이번 터키여행은 이해범 가이드님덕에 오래오래 좋은 추억으로 남을 것 같습니다~~^^가이드님 앞날에 좋은일만 가득하길 진심으로 빕니다~~ 감사합니다~~^^',to_date('19/11/11','RR/MM/DD'),to_date('19/11/11','RR/MM/DD'),'b',1);
Insert into NULLPROJECT.NULLPROJECT_BOARD (BOARD_NO,BOARD_TITLE,MEMBER_NO,BOARD_CONTENT,BOARD_CRE_DATE,BOARD_MOD_DATE,BOARD_CATEGORY,BOARD_STATE) values (9,'딸과의 행복한 시간',9,'지인들로 부터 터키는 꼭 가봐야 한다는  말들을 워낙 많이 들은 터라 설렘을 안고 딸과 함께 떠난 여행이었습니다 터키가 워낙 땅이 넓다보니 버스로 이동하는 시간이 많아 지루할법도 한데 송인찬 가이드님의 해박한 터키역사와 종교에대한 이야기를 듣다보니 힘든 줄 모르고 다녔던거 같습니다. 투르크족의 슬픈 역사는 집에 돌아와서도 기억에 남아 관심을 갖게 되더라구요^^ 같이 동행한 모든 분들 드러내지 않고 다른 사람들을 배려해주시는 모습들 보며 배운것도 많았습니다. 모두들 행복하고 건강 하시길 기도드립니다. 조상들이 물려준 유물과 자연현상으로 인한 보여줄꺼리가 많은 터키를 보며 부럽기도 하고  우리의 문화유산을  잘 보존해서 후손들에게 물려주는 것이 얼마나 중요한 일인지 생각하게 되었습니다. 딸과 많은 시간을 같이 하지 못해 아쉬웠는데 여행기간 내내 행복함을 만끽하고 왔습니다. 저는 식사도 좋았고 호텔도 큰 불편없이 좋았던거 같습니다 . 신비한 매력을 가진 터키가 젤 좋았구요^^',to_date('19/11/11','RR/MM/DD'),to_date('19/11/11','RR/MM/DD'),'b',1);
Insert into NULLPROJECT.NULLPROJECT_BOARD (BOARD_NO,BOARD_TITLE,MEMBER_NO,BOARD_CONTENT,BOARD_CRE_DATE,BOARD_MOD_DATE,BOARD_CATEGORY,BOARD_STATE) values (10,'꿈 같이 보내고 온 일주일~!',10,'너무 즐거운 여행을 잘 마치고 돌아왔습니다. 너무 친절하고 최선을 다하는 이병화 인솔자님과 해박한 지식으로 하나라도 더 알려주시고자 애쓰는 권택구 가이드님 덕분에 너무 즐거운 꿈을 꾸고 온듯한 스페인 여행이었습니다. 모두투어로 이태리 일주 참좋은여행으로 로맨틱 가도 등등...여러 여행사의  패키지 여행을 다녀보았지만 그중 최고의 인솔자와 가이드 였습니다.~^^* 이렇게 후기를 홈페이지에 남기는 것도 처음입니다. 감사한마음에 빠르게 글 올립니다..ㅎ.ㅎ',to_date('19/11/11','RR/MM/DD'),to_date('19/11/11','RR/MM/DD'),'b',1);
Insert into NULLPROJECT.NULLPROJECT_BOARD (BOARD_NO,BOARD_TITLE,MEMBER_NO,BOARD_CONTENT,BOARD_CRE_DATE,BOARD_MOD_DATE,BOARD_CATEGORY,BOARD_STATE) values (11,'인솔자님 감사합니다.',11,'아들과 스페인여행 행복했어요. 감사드려요.',to_date('19/11/11','RR/MM/DD'),to_date('19/11/11','RR/MM/DD'),'b',1);
Insert into NULLPROJECT.NULLPROJECT_BOARD (BOARD_NO,BOARD_TITLE,MEMBER_NO,BOARD_CONTENT,BOARD_CRE_DATE,BOARD_MOD_DATE,BOARD_CATEGORY,BOARD_STATE) values (12,'두근두근',12,'여행을 무척이나 좋아하는  우리부부 난생 처음으로 어릴적 부터 그려오던 미국 여행을 계획하고 부부가 여행계를 들었다  막연하게 미국이란 나라에 가고싶었던 나를 생각한 남편이  추석 연휴를 맞아 이곳저곳 여행사 홈페이지를 넘나들다 발견한  미서부 3대도시 3캐년 8일의 여행상품을 제안하였다 추석연휴도 좋았고 항공사도 좋았고 죽기전에 봐야할 그랜드캐년도 좋았고 우리 부부는 이상품을 찜하고 다른 상품과 비교도 해보면서 여행계획을 세웠다',to_date('19/11/11','RR/MM/DD'),to_date('19/11/11','RR/MM/DD'),'b',1);
Insert into NULLPROJECT.NULLPROJECT_BOARD (BOARD_NO,BOARD_TITLE,MEMBER_NO,BOARD_CONTENT,BOARD_CRE_DATE,BOARD_MOD_DATE,BOARD_CATEGORY,BOARD_STATE) values (13,'동양화속 신선이 되다',13,'이번에(2019.09.16~09.20) 친구부부와 같이 태항상 여행을 하게 되었다. 공항에서 만난 우리팀은 인상이 좋으셔서 이번 여행을 기대할 수 있는 분들이었다.  우리팀 8명과 석가장 공항에서 만난 가이드 안장걸씨는 건강해 보이는 강한 인상을 풍기는 분이 었다. 연변 출신의 동포이고 나와 같은 순흥안씨고 아재뻘이라 반갑게 통성명을 하고 조운(조자룡) 사당을 잠깐동안 둘러본 후 고속도로를 5시간 달려 임주에 도착한 후 여행일정을 설명듣고 맛있는 중국 호남식 저녁식사를 하고 설래는 마음으로 잠자리에 들었다.',to_date('19/11/11','RR/MM/DD'),to_date('19/11/11','RR/MM/DD'),'b',1);
Insert into NULLPROJECT.NULLPROJECT_BOARD (BOARD_NO,BOARD_TITLE,MEMBER_NO,BOARD_CONTENT,BOARD_CRE_DATE,BOARD_MOD_DATE,BOARD_CATEGORY,BOARD_STATE) values (14,'부모님 모시고 패키지여행 처음해봤는데',14,'할많하않.. 다신안합니다..^^  사소한 음식설명, 음식을 먹는 방법조차 설명 안해주는 직업정신 없는 가이드를 만난건 과실일지 제 운빨인지는 모르겠지만, 자신에게 주어진 최소한의 업무도 하지 않은 채 옵션상품만 선택하기를 바라는 속보이는 짓은 하면 안되지 않나요? 잔머리굴리는거 다보이는데... 고객들이 말이 없으면 모르는게 아니라 모르는 척 넘어가주는겁니다.',to_date('19/11/11','RR/MM/DD'),to_date('19/11/11','RR/MM/DD'),'b',1);
Insert into NULLPROJECT.NULLPROJECT_BOARD (BOARD_NO,BOARD_TITLE,MEMBER_NO,BOARD_CONTENT,BOARD_CRE_DATE,BOARD_MOD_DATE,BOARD_CATEGORY,BOARD_STATE) values (15,'너무 좋았어요',1,'점잖은 mark 배 가이드님 만나서 너무 좋았어요 감사해요 시드니는 처음이였는데 
야간투어 가이드님도 너무 유쾌하셔서 즐겁게 투어했어요 좋은 기억이 많이 남아 한번더 가려고 합니다. 이민을 긍정적으로 생각하게된 계기가 되었네요 ㅎㅎ',to_date('19/11/11','RR/MM/DD'),to_date('19/11/12','RR/MM/DD'),'b',1);
Insert into NULLPROJECT.NULLPROJECT_BOARD (BOARD_NO,BOARD_TITLE,MEMBER_NO,BOARD_CONTENT,BOARD_CRE_DATE,BOARD_MOD_DATE,BOARD_CATEGORY,BOARD_STATE) values (16,'여운이 남는 여행',2,'세계에서 문화 유산이 가장 많은 나라 이탈리아 중요한 기본 도시들을 짧은 일정에 대략적으로 돌아보는 알찬 구성이었습니다. 이탈리아는 과연 거대한 로마 문명과 찬란한 중세 르네상스 문화가 살아 숨쉬는 문화와 예술의 나라였습니다. 수많은 고대 건축물들과 미술 작품들이 수 백년 세월을 지나 생생한 감동으로 다가왔습니다. 이번 여행의 길잡이 베테랑 가이드 박재진님!! 그의 역사, 문화, 성경까지 아우르는 해박하고도 재미있는 설명 덕분에 유익하고 풍요로운 여행이 되었습니다.',to_date('19/11/11','RR/MM/DD'),to_date('19/11/11','RR/MM/DD'),'b',1);
Insert into NULLPROJECT.NULLPROJECT_BOARD (BOARD_NO,BOARD_TITLE,MEMBER_NO,BOARD_CONTENT,BOARD_CRE_DATE,BOARD_MOD_DATE,BOARD_CATEGORY,BOARD_STATE) values (17,'가족여행',3,'태풍을 뚫고 출발했던 태국으로의 가족여행.. 우려했던 태국의 우기날씨는 이 보다 좋을수 없었다..ㅎ 패키지로는 두번쨰.. 이번 패키지에는 총 3팀이 있었고 그 중 1팀은 어르신 두 분이셨는데 식사도 입에 맞지 않아 참석조차 안하시고.. 뭔가 계속 일정을 개인적으로 바꾸셨다 취소하시고를 반복하는듯.. 패키지 일정도 자세히 모르셔서 소화하기 힘든 일정을 선택하신건 아닌지 좀 당황스런 상황이 있었지만..',to_date('19/11/11','RR/MM/DD'),to_date('19/11/11','RR/MM/DD'),'b',1);
Insert into NULLPROJECT.NULLPROJECT_BOARD (BOARD_NO,BOARD_TITLE,MEMBER_NO,BOARD_CONTENT,BOARD_CRE_DATE,BOARD_MOD_DATE,BOARD_CATEGORY,BOARD_STATE) values (18,'재미있었습니다.',4,'금요일 밤에 출발하여 일요일 밤에 복귀하는 매우 짧은 일정인데, 이걸 다 소화하고 왔네요. 하루에 일정이 꽉 차있다보니 각 관광지에 할당된 시간이 적더군요.  그래선지 가이드님이 관광지 전반에 대한 적당한 소개 이후 자유시간을 주어 최대한 즐길 수 있게 해주는 것도 매우 만족스러웠습니다. 대만의 역사나 생활모습, 우리와의 관계 등을 재미있게 알려줬고, 그래서 꽤 긴 이동시간동안 지루하지 않았습니다. 음식도 마음에 들었어요. 여러모로 마음에 들어서인지, 주말을 통째 여행에 썼음에도 그리 피곤한줄을 모르겠네요.',to_date('19/11/11','RR/MM/DD'),to_date('19/11/11','RR/MM/DD'),'b',1);
Insert into NULLPROJECT.NULLPROJECT_BOARD (BOARD_NO,BOARD_TITLE,MEMBER_NO,BOARD_CONTENT,BOARD_CRE_DATE,BOARD_MOD_DATE,BOARD_CATEGORY,BOARD_STATE) values (19,'제목처럼 내 인생 가장 빛나는 여행!',5,'유럽여행은 처음이고, 혼자 여행이라 걱정을 많이 했습니다. 사진 찍는 것도 거의 포기하고 가야겠다고 생각했는데 여행 오신 분들과 인솔자님 , 가이드님께서 사진도 잘 찍어주시고, 잘 챙겨주셔서 정말 인생여행 하고 왔습니다. 인솔자님 어딜 가든 설명도 잘 해 주시고, 자유시간도 최대한 주시려고 노력해주시는 모습이 너무 감사했습니다! 돌아온 지 며칠 됐는데 벌써 그립네요ㅠㅠ 이 상품으로 또 한 번 갈 의향도 있을 정도로 좋았습니다!! 일정도 다른 상품에 비해 널널한 편인 것 같구요! 첫여행이시라면  9일 2개국이 적당한 것 같아요! 그리고 스위스에서의 관광을 거의 3일을 할 수 있다는 점이 제가 이 상품을 선택한 가장 큰 이유였습니다. 스위스는 물가가 비싸서 자유여행으로 가도 많은 비용이 드는데, 이 상품은 적절한 가격대와 1급호텔까지 ( 물론 유럽의 호텔은 1급이라해도 넘 기대하시면 안 됩니당 ㅠㅠ 엄청나게 비싼 호텔을 제외하곤 거의 다 그런 것 같아요! )  정말 잘 나온 상품인 것 같아요!!!  올라갈 땐 구름에 가려졌었는데 내려가려고 하는 순간 제 모습을 보여주던 마테호른은 잊을 수 없을 것 같아요! 제 인생 가장 빛나는 순간을 선물해 주셔서 감사드립니다',to_date('19/11/11','RR/MM/DD'),to_date('19/11/11','RR/MM/DD'),'b',1);
REM INSERTING into NULLPROJECT.NULLPROJECT_CART
SET DEFINE OFF;
REM INSERTING into NULLPROJECT.NULLPROJECT_COMMENT
SET DEFINE OFF;
Insert into NULLPROJECT.NULLPROJECT_COMMENT (BOARD_NO,COMMENT_NO,COMMENT_CRE_DATE,COMMENT_WRITER,COMMENT_CONTENT,COMMENT_STATE) values (19,1,to_date('19/11/11','RR/MM/DD'),'1','좋은 여행되신것 같군요 ^^',1);
Insert into NULLPROJECT.NULLPROJECT_COMMENT (BOARD_NO,COMMENT_NO,COMMENT_CRE_DATE,COMMENT_WRITER,COMMENT_CONTENT,COMMENT_STATE) values (19,2,to_date('19/11/11','RR/MM/DD'),'2','저도 또 가고 싶네요 기분 좋았습니다.',1);
Insert into NULLPROJECT.NULLPROJECT_COMMENT (BOARD_NO,COMMENT_NO,COMMENT_CRE_DATE,COMMENT_WRITER,COMMENT_CONTENT,COMMENT_STATE) values (19,3,to_date('19/11/11','RR/MM/DD'),'13','남는건 사진이죠 !!',1);
Insert into NULLPROJECT.NULLPROJECT_COMMENT (BOARD_NO,COMMENT_NO,COMMENT_CRE_DATE,COMMENT_WRITER,COMMENT_CONTENT,COMMENT_STATE) values (19,4,to_date('19/11/11','RR/MM/DD'),'14','유럽 부럽네요 ㅠㅠ',1);
Insert into NULLPROJECT.NULLPROJECT_COMMENT (BOARD_NO,COMMENT_NO,COMMENT_CRE_DATE,COMMENT_WRITER,COMMENT_CONTENT,COMMENT_STATE) values (19,5,to_date('19/11/11','RR/MM/DD'),'15','감사합니다 ^^',1);
REM INSERTING into NULLPROJECT.NULLPROJECT_IMG
SET DEFINE OFF;
Insert into NULLPROJECT.NULLPROJECT_IMG (IMG_IDX,IMG_ORIGINAL_FILENAME,IMG_STORED_FILENAME,IMG_FILESIZE,IMG_CREDATE,PRODUCT_NO) values (3,'image-3.jpg','68ac601d9632483a8621f519c3995097.jpg',90509,to_date('19/11/11','RR/MM/DD'),3);
Insert into NULLPROJECT.NULLPROJECT_IMG (IMG_IDX,IMG_ORIGINAL_FILENAME,IMG_STORED_FILENAME,IMG_FILESIZE,IMG_CREDATE,PRODUCT_NO) values (4,'image-4.jpg','c9d72940d8dd408db363ddc637c5ad26.jpg',92825,to_date('19/11/11','RR/MM/DD'),4);
Insert into NULLPROJECT.NULLPROJECT_IMG (IMG_IDX,IMG_ORIGINAL_FILENAME,IMG_STORED_FILENAME,IMG_FILESIZE,IMG_CREDATE,PRODUCT_NO) values (5,'image-5.jpg','dd1049eb1b9f4278b9cde865038af15f.jpg',92820,to_date('19/11/11','RR/MM/DD'),5);
Insert into NULLPROJECT.NULLPROJECT_IMG (IMG_IDX,IMG_ORIGINAL_FILENAME,IMG_STORED_FILENAME,IMG_FILESIZE,IMG_CREDATE,PRODUCT_NO) values (6,'image-6.jpg','9d087ab4e5c24dd59e1acf61ea582712.jpg',100087,to_date('19/11/11','RR/MM/DD'),6);
Insert into NULLPROJECT.NULLPROJECT_IMG (IMG_IDX,IMG_ORIGINAL_FILENAME,IMG_STORED_FILENAME,IMG_FILESIZE,IMG_CREDATE,PRODUCT_NO) values (7,'image-7.jpg','b0548a497fc8405da34d061bf4068a73.jpg',84837,to_date('19/11/11','RR/MM/DD'),7);
Insert into NULLPROJECT.NULLPROJECT_IMG (IMG_IDX,IMG_ORIGINAL_FILENAME,IMG_STORED_FILENAME,IMG_FILESIZE,IMG_CREDATE,PRODUCT_NO) values (8,'image-8.jpg','98392dd9bdca489ca40b4da171f17931.jpg',80865,to_date('19/11/11','RR/MM/DD'),8);
Insert into NULLPROJECT.NULLPROJECT_IMG (IMG_IDX,IMG_ORIGINAL_FILENAME,IMG_STORED_FILENAME,IMG_FILESIZE,IMG_CREDATE,PRODUCT_NO) values (9,'image-9.jpg','7331e209866348bd9ff0218d13fc5785.jpg',82912,to_date('19/11/11','RR/MM/DD'),9);
Insert into NULLPROJECT.NULLPROJECT_IMG (IMG_IDX,IMG_ORIGINAL_FILENAME,IMG_STORED_FILENAME,IMG_FILESIZE,IMG_CREDATE,PRODUCT_NO) values (10,'image-10.jpg','3f698e1d629f4b6c847a026bbe675c1b.jpg',82091,to_date('19/11/11','RR/MM/DD'),10);
Insert into NULLPROJECT.NULLPROJECT_IMG (IMG_IDX,IMG_ORIGINAL_FILENAME,IMG_STORED_FILENAME,IMG_FILESIZE,IMG_CREDATE,PRODUCT_NO) values (11,'image-11.jpg','e0a281dc9ec740369c9b2f07a5b82e84.jpg',91867,to_date('19/11/11','RR/MM/DD'),11);
Insert into NULLPROJECT.NULLPROJECT_IMG (IMG_IDX,IMG_ORIGINAL_FILENAME,IMG_STORED_FILENAME,IMG_FILESIZE,IMG_CREDATE,PRODUCT_NO) values (12,'image-12.jpg','424fdac219734f33ba7ca40891739fab.jpg',84119,to_date('19/11/11','RR/MM/DD'),12);
Insert into NULLPROJECT.NULLPROJECT_IMG (IMG_IDX,IMG_ORIGINAL_FILENAME,IMG_STORED_FILENAME,IMG_FILESIZE,IMG_CREDATE,PRODUCT_NO) values (13,'image-15.jpg','0cb6c7f5e4024ab19dbb43c48133d597.jpg',113509,to_date('19/11/11','RR/MM/DD'),13);
Insert into NULLPROJECT.NULLPROJECT_IMG (IMG_IDX,IMG_ORIGINAL_FILENAME,IMG_STORED_FILENAME,IMG_FILESIZE,IMG_CREDATE,PRODUCT_NO) values (14,'image-13.jpg','028cffdc09ff43a19480fcf2361b77c2.jpg',197537,to_date('19/11/11','RR/MM/DD'),14);
Insert into NULLPROJECT.NULLPROJECT_IMG (IMG_IDX,IMG_ORIGINAL_FILENAME,IMG_STORED_FILENAME,IMG_FILESIZE,IMG_CREDATE,PRODUCT_NO) values (15,'image-14.jpg','7c6b0c93b01447a28c3f87a44c672a83.jpg',107954,to_date('19/11/11','RR/MM/DD'),15);
Insert into NULLPROJECT.NULLPROJECT_IMG (IMG_IDX,IMG_ORIGINAL_FILENAME,IMG_STORED_FILENAME,IMG_FILESIZE,IMG_CREDATE,PRODUCT_NO) values (16,'KakaoTalk_20191111_175935708.png','070c2bdac1d04a36b217e41b5f045cff.png',170789,to_date('19/11/11','RR/MM/DD'),16);
Insert into NULLPROJECT.NULLPROJECT_IMG (IMG_IDX,IMG_ORIGINAL_FILENAME,IMG_STORED_FILENAME,IMG_FILESIZE,IMG_CREDATE,PRODUCT_NO) values (17,'다낭.png','73566efe715346ad9cc263c3ad572382.png',104798,to_date('19/11/11','RR/MM/DD'),17);
Insert into NULLPROJECT.NULLPROJECT_IMG (IMG_IDX,IMG_ORIGINAL_FILENAME,IMG_STORED_FILENAME,IMG_FILESIZE,IMG_CREDATE,PRODUCT_NO) values (18,'런던.png','f825fb08585447aebfb5a643e53bb39b.png',169571,to_date('19/11/11','RR/MM/DD'),18);
Insert into NULLPROJECT.NULLPROJECT_IMG (IMG_IDX,IMG_ORIGINAL_FILENAME,IMG_STORED_FILENAME,IMG_FILESIZE,IMG_CREDATE,PRODUCT_NO) values (19,'마카오.png','a405996ca32b469e8d6783055a9735dd.png',128581,to_date('19/11/11','RR/MM/DD'),19);
Insert into NULLPROJECT.NULLPROJECT_IMG (IMG_IDX,IMG_ORIGINAL_FILENAME,IMG_STORED_FILENAME,IMG_FILESIZE,IMG_CREDATE,PRODUCT_NO) values (20,'방콕.png','d4356d4e07d44f7987bbed380acfc6a4.png',169244,to_date('19/11/11','RR/MM/DD'),20);
Insert into NULLPROJECT.NULLPROJECT_IMG (IMG_IDX,IMG_ORIGINAL_FILENAME,IMG_STORED_FILENAME,IMG_FILESIZE,IMG_CREDATE,PRODUCT_NO) values (1,'image-1.jpg','99ec213e84294e379126072f7953f77c.jpg',84673,to_date('19/11/11','RR/MM/DD'),1);
Insert into NULLPROJECT.NULLPROJECT_IMG (IMG_IDX,IMG_ORIGINAL_FILENAME,IMG_STORED_FILENAME,IMG_FILESIZE,IMG_CREDATE,PRODUCT_NO) values (2,'image-2.jpg','86d47569e7ed47ff89923738a7d506b0.jpg',77401,to_date('19/11/11','RR/MM/DD'),2);
Insert into NULLPROJECT.NULLPROJECT_IMG (IMG_IDX,IMG_ORIGINAL_FILENAME,IMG_STORED_FILENAME,IMG_FILESIZE,IMG_CREDATE,PRODUCT_NO) values (21,'샌프란시스코.png','89e7553996ba40798567455d1d29713a.png',96731,to_date('19/11/11','RR/MM/DD'),21);
Insert into NULLPROJECT.NULLPROJECT_IMG (IMG_IDX,IMG_ORIGINAL_FILENAME,IMG_STORED_FILENAME,IMG_FILESIZE,IMG_CREDATE,PRODUCT_NO) values (22,'스페인.png','3fc75963b03840cab471b8cbb7711470.png',144685,to_date('19/11/11','RR/MM/DD'),22);
Insert into NULLPROJECT.NULLPROJECT_IMG (IMG_IDX,IMG_ORIGINAL_FILENAME,IMG_STORED_FILENAME,IMG_FILESIZE,IMG_CREDATE,PRODUCT_NO) values (23,'싱가폴.png','c2c6232be30d495b80726870cf5ddde7.png',183580,to_date('19/11/11','RR/MM/DD'),23);
Insert into NULLPROJECT.NULLPROJECT_IMG (IMG_IDX,IMG_ORIGINAL_FILENAME,IMG_STORED_FILENAME,IMG_FILESIZE,IMG_CREDATE,PRODUCT_NO) values (24,'오사카.png','ff6c97491b3e45f8bfd2fd24a019a175.png',203573,to_date('19/11/11','RR/MM/DD'),24);
Insert into NULLPROJECT.NULLPROJECT_IMG (IMG_IDX,IMG_ORIGINAL_FILENAME,IMG_STORED_FILENAME,IMG_FILESIZE,IMG_CREDATE,PRODUCT_NO) values (25,'오키나와.png','9dbcd529a085410a96f6b0edba11c5ea.png',158495,to_date('19/11/11','RR/MM/DD'),25);
Insert into NULLPROJECT.NULLPROJECT_IMG (IMG_IDX,IMG_ORIGINAL_FILENAME,IMG_STORED_FILENAME,IMG_FILESIZE,IMG_CREDATE,PRODUCT_NO) values (26,'지우펀.png','699e2a7f4a484704afd5c252244dbf6f.png',214582,to_date('19/11/11','RR/MM/DD'),26);
Insert into NULLPROJECT.NULLPROJECT_IMG (IMG_IDX,IMG_ORIGINAL_FILENAME,IMG_STORED_FILENAME,IMG_FILESIZE,IMG_CREDATE,PRODUCT_NO) values (27,'타이페이.png','f187b19938f94fc58c58e322c36f9be0.png',167763,to_date('19/11/11','RR/MM/DD'),27);
Insert into NULLPROJECT.NULLPROJECT_IMG (IMG_IDX,IMG_ORIGINAL_FILENAME,IMG_STORED_FILENAME,IMG_FILESIZE,IMG_CREDATE,PRODUCT_NO) values (28,'피렌체.png','f5e2b950fa55433898547bcee474e4f2.png',219531,to_date('19/11/11','RR/MM/DD'),28);
Insert into NULLPROJECT.NULLPROJECT_IMG (IMG_IDX,IMG_ORIGINAL_FILENAME,IMG_STORED_FILENAME,IMG_FILESIZE,IMG_CREDATE,PRODUCT_NO) values (29,'한국.png','12d313c5024a44199c6b49ae6b82e19c.png',98259,to_date('19/11/11','RR/MM/DD'),29);
Insert into NULLPROJECT.NULLPROJECT_IMG (IMG_IDX,IMG_ORIGINAL_FILENAME,IMG_STORED_FILENAME,IMG_FILESIZE,IMG_CREDATE,PRODUCT_NO) values (30,'후쿠오카.png','54600942f3d34626b534a548ea846c46.png',210229,to_date('19/11/11','RR/MM/DD'),30);
REM INSERTING into NULLPROJECT.NULLPROJECT_MEMBER
SET DEFINE OFF;
Insert into NULLPROJECT.NULLPROJECT_MEMBER (MEMBER_NO,MEMBER_NAME,MEMBER_EMAIL,MEMBER_PHONE,MEMBER_ADDRESS,MEMBER_CASH,MEMBER_PASSWORD,MEMBER_CRE_DATE,MEMBER_ADMIN,MEMBER_CATEGORY,MEMBER_STATE) values (1,'전소라','jeon@gmail.com','010-9265-6836','경기도 성남시 수정구 고등동 232',212200,'jeon11',to_date('19/11/11','RR/MM/DD'),1,'m',1);
Insert into NULLPROJECT.NULLPROJECT_MEMBER (MEMBER_NO,MEMBER_NAME,MEMBER_EMAIL,MEMBER_PHONE,MEMBER_ADDRESS,MEMBER_CASH,MEMBER_PASSWORD,MEMBER_CRE_DATE,MEMBER_ADMIN,MEMBER_CATEGORY,MEMBER_STATE) values (2,'김소연','kimsy@gmail.com','010-7362-5632','경기도 용인시 기흥구 마북동 80-10',4000000,'kimsy11',to_date('19/11/11','RR/MM/DD'),1,'m',1);
Insert into NULLPROJECT.NULLPROJECT_MEMBER (MEMBER_NO,MEMBER_NAME,MEMBER_EMAIL,MEMBER_PHONE,MEMBER_ADDRESS,MEMBER_CASH,MEMBER_PASSWORD,MEMBER_CRE_DATE,MEMBER_ADMIN,MEMBER_CATEGORY,MEMBER_STATE) values (0,'관리자','admin@nullproject.com','010-1111-1111','서울시 강남구 서초동 111-11',9999989,'dd',to_date('19/10/10','RR/MM/DD'),0,'m',1);
Insert into NULLPROJECT.NULLPROJECT_MEMBER (MEMBER_NO,MEMBER_NAME,MEMBER_EMAIL,MEMBER_PHONE,MEMBER_ADDRESS,MEMBER_CASH,MEMBER_PASSWORD,MEMBER_CRE_DATE,MEMBER_ADMIN,MEMBER_CATEGORY,MEMBER_STATE) values (3,'허세연','heosy@gmail.com','010-6565-8732','경기도 용인시 수지구 상현동 130-1',4000000,'heosy11',to_date('19/11/11','RR/MM/DD'),1,'m',1);
Insert into NULLPROJECT.NULLPROJECT_MEMBER (MEMBER_NO,MEMBER_NAME,MEMBER_EMAIL,MEMBER_PHONE,MEMBER_ADDRESS,MEMBER_CASH,MEMBER_PASSWORD,MEMBER_CRE_DATE,MEMBER_ADMIN,MEMBER_CATEGORY,MEMBER_STATE) values (4,'박지영','parkjy@gmail.com','010-6765-1232','충청북도 보은군 마로면 한중리 214',4000000,'parkjy11',to_date('19/11/11','RR/MM/DD'),1,'m',1);
Insert into NULLPROJECT.NULLPROJECT_MEMBER (MEMBER_NO,MEMBER_NAME,MEMBER_EMAIL,MEMBER_PHONE,MEMBER_ADDRESS,MEMBER_CASH,MEMBER_PASSWORD,MEMBER_CRE_DATE,MEMBER_ADMIN,MEMBER_CATEGORY,MEMBER_STATE) values (5,'박대민','parkdm@gmail.com','010-6865-1632','대전광역시 서구 둔산동 1408',4000000,'parkdm11',to_date('19/11/11','RR/MM/DD'),1,'m',1);
Insert into NULLPROJECT.NULLPROJECT_MEMBER (MEMBER_NO,MEMBER_NAME,MEMBER_EMAIL,MEMBER_PHONE,MEMBER_ADDRESS,MEMBER_CASH,MEMBER_PASSWORD,MEMBER_CRE_DATE,MEMBER_ADMIN,MEMBER_CATEGORY,MEMBER_STATE) values (6,'박유성','parkys@gmail.com','010-6865-1632','대전 서구 괴정로 80 영승두루미아파트 101동 301호',4000000,'parkys11',to_date('19/11/11','RR/MM/DD'),1,'m',1);
Insert into NULLPROJECT.NULLPROJECT_MEMBER (MEMBER_NO,MEMBER_NAME,MEMBER_EMAIL,MEMBER_PHONE,MEMBER_ADDRESS,MEMBER_CASH,MEMBER_PASSWORD,MEMBER_CRE_DATE,MEMBER_ADMIN,MEMBER_CATEGORY,MEMBER_STATE) values (7,'장성인','jangsi@gmail.com','010-6865-1632','대전광역시 서구 괴정동 72-5 휴먼빌 101동 301호',4000000,'jangsi11',to_date('19/11/11','RR/MM/DD'),1,'m',1);
Insert into NULLPROJECT.NULLPROJECT_MEMBER (MEMBER_NO,MEMBER_NAME,MEMBER_EMAIL,MEMBER_PHONE,MEMBER_ADDRESS,MEMBER_CASH,MEMBER_PASSWORD,MEMBER_CRE_DATE,MEMBER_ADMIN,MEMBER_CATEGORY,MEMBER_STATE) values (8,'조르디.상즈','jord@gmail.com','010-6865-1632','세종특별자치시 대평동 267-6 세종신동 302동 1902호',4000000,'jord11',to_date('19/11/11','RR/MM/DD'),1,'m',1);
Insert into NULLPROJECT.NULLPROJECT_MEMBER (MEMBER_NO,MEMBER_NAME,MEMBER_EMAIL,MEMBER_PHONE,MEMBER_ADDRESS,MEMBER_CASH,MEMBER_PASSWORD,MEMBER_CRE_DATE,MEMBER_ADMIN,MEMBER_CATEGORY,MEMBER_STATE) values (9,'이세효','leesehyo@gmail.com','010-6865-1632','서울특별시 영등포구 여의도동 45-1 힐스테이트 105동 1205호',4000000,'leesehyo11',to_date('19/11/11','RR/MM/DD'),1,'m',1);
Insert into NULLPROJECT.NULLPROJECT_MEMBER (MEMBER_NO,MEMBER_NAME,MEMBER_EMAIL,MEMBER_PHONE,MEMBER_ADDRESS,MEMBER_CASH,MEMBER_PASSWORD,MEMBER_CRE_DATE,MEMBER_ADMIN,MEMBER_CATEGORY,MEMBER_STATE) values (10,'이효리','leehyori@gmail.com','010-6865-1632','서울특별시 양천구 신정동 1279 대우 1차  1205호',4000000,'leehyori11',to_date('19/11/11','RR/MM/DD'),1,'m',1);
Insert into NULLPROJECT.NULLPROJECT_MEMBER (MEMBER_NO,MEMBER_NAME,MEMBER_EMAIL,MEMBER_PHONE,MEMBER_ADDRESS,MEMBER_CASH,MEMBER_PASSWORD,MEMBER_CRE_DATE,MEMBER_ADMIN,MEMBER_CATEGORY,MEMBER_STATE) values (11,'장가인','janggain@gmail.com','010-9898-1658','서울특별시 서초구 서초동 1685 대우 3차  1205호',4000000,'janggain11',to_date('19/11/11','RR/MM/DD'),1,'m',1);
Insert into NULLPROJECT.NULLPROJECT_MEMBER (MEMBER_NO,MEMBER_NAME,MEMBER_EMAIL,MEMBER_PHONE,MEMBER_ADDRESS,MEMBER_CASH,MEMBER_PASSWORD,MEMBER_CRE_DATE,MEMBER_ADMIN,MEMBER_CATEGORY,MEMBER_STATE) values (12,'소지섭','sojisob@gmail.com','010-8254-1959','서울특별시 강남구 역삼동 713-7',4000000,'sojisob11',to_date('19/11/11','RR/MM/DD'),1,'m',1);
Insert into NULLPROJECT.NULLPROJECT_MEMBER (MEMBER_NO,MEMBER_NAME,MEMBER_EMAIL,MEMBER_PHONE,MEMBER_ADDRESS,MEMBER_CASH,MEMBER_PASSWORD,MEMBER_CRE_DATE,MEMBER_ADMIN,MEMBER_CATEGORY,MEMBER_STATE) values (13,'유지현','yujihyen@gmail.com','010-8254-8989','서울특별시 강남구 논현동 181-2',4000000,'yujihyen11',to_date('19/11/11','RR/MM/DD'),1,'m',1);
Insert into NULLPROJECT.NULLPROJECT_MEMBER (MEMBER_NO,MEMBER_NAME,MEMBER_EMAIL,MEMBER_PHONE,MEMBER_ADDRESS,MEMBER_CASH,MEMBER_PASSWORD,MEMBER_CRE_DATE,MEMBER_ADMIN,MEMBER_CATEGORY,MEMBER_STATE) values (14,'송동기','songdonggi@gmail.com','010-8254-7878','서울특별시 송파구 잠실동 218-16',4000000,'songdonggi11',to_date('19/11/11','RR/MM/DD'),1,'m',1);
Insert into NULLPROJECT.NULLPROJECT_MEMBER (MEMBER_NO,MEMBER_NAME,MEMBER_EMAIL,MEMBER_PHONE,MEMBER_ADDRESS,MEMBER_CASH,MEMBER_PASSWORD,MEMBER_CRE_DATE,MEMBER_ADMIN,MEMBER_CATEGORY,MEMBER_STATE) values (15,'강동원','gangdongwon@gmail.com','010-4565-8987','서울특별시 강남구 개포동 160-7',4000000,'gangdongwon11',to_date('19/11/11','RR/MM/DD'),1,'m',1);
REM INSERTING into NULLPROJECT.NULLPROJECT_ORDER
SET DEFINE OFF;
Insert into NULLPROJECT.NULLPROJECT_ORDER (ORDER_NO,MEMBER_NO,ORDER_DATE,ORDER_PRICE,ORDER_MEMBERNAME,ORDER_EMAIL,ORDER_PHONE,ORDER_ADDRESS,ORDER_REQUIREMENT,ORDER_CATEGORY,ORDER_STATE) values (3,1,to_date('19/11/11','RR/MM/DD'),253800,'전소라','jeon@gmail.com','010-9265-6836','경기도 성남시 수정구 고등동 232',null,'o',1);
Insert into NULLPROJECT.NULLPROJECT_ORDER (ORDER_NO,MEMBER_NO,ORDER_DATE,ORDER_PRICE,ORDER_MEMBERNAME,ORDER_EMAIL,ORDER_PHONE,ORDER_ADDRESS,ORDER_REQUIREMENT,ORDER_CATEGORY,ORDER_STATE) values (4,1,to_date('19/11/11','RR/MM/DD'),2500,'전소라','jeon@gmail.com','010-9265-6836','경기도 성남시 수정구 고등동 232',null,'o',1);
Insert into NULLPROJECT.NULLPROJECT_ORDER (ORDER_NO,MEMBER_NO,ORDER_DATE,ORDER_PRICE,ORDER_MEMBERNAME,ORDER_EMAIL,ORDER_PHONE,ORDER_ADDRESS,ORDER_REQUIREMENT,ORDER_CATEGORY,ORDER_STATE) values (5,1,to_date('19/11/11','RR/MM/DD'),87800,'전소라','jeon@gmail.com','010-9265-6836','경기도 성남시 수정구 고등동 232',null,'o',1);
Insert into NULLPROJECT.NULLPROJECT_ORDER (ORDER_NO,MEMBER_NO,ORDER_DATE,ORDER_PRICE,ORDER_MEMBERNAME,ORDER_EMAIL,ORDER_PHONE,ORDER_ADDRESS,ORDER_REQUIREMENT,ORDER_CATEGORY,ORDER_STATE) values (6,1,to_date('19/11/11','RR/MM/DD'),87800,'전소라','jeon@gmail.com','010-9265-6836','경기도 성남시 수정구 고등동 232',null,'o',1);
Insert into NULLPROJECT.NULLPROJECT_ORDER (ORDER_NO,MEMBER_NO,ORDER_DATE,ORDER_PRICE,ORDER_MEMBERNAME,ORDER_EMAIL,ORDER_PHONE,ORDER_ADDRESS,ORDER_REQUIREMENT,ORDER_CATEGORY,ORDER_STATE) values (1,1,to_date('19/11/11','RR/MM/DD'),236000,'전소라','jeon@gmail.com','010-9265-6836','경기도 성남시 수정구 고등동 232',null,'o',1);
Insert into NULLPROJECT.NULLPROJECT_ORDER (ORDER_NO,MEMBER_NO,ORDER_DATE,ORDER_PRICE,ORDER_MEMBERNAME,ORDER_EMAIL,ORDER_PHONE,ORDER_ADDRESS,ORDER_REQUIREMENT,ORDER_CATEGORY,ORDER_STATE) values (2,1,to_date('19/11/11','RR/MM/DD'),236000,'전소라','jeon@gmail.com','010-9265-6836','경기도 성남시 수정구 고등동 232',null,'o',1);
REM INSERTING into NULLPROJECT.NULLPROJECT_ORDERLIST
SET DEFINE OFF;
Insert into NULLPROJECT.NULLPROJECT_ORDERLIST (PRODUCT_NO,PRODUCT_COUNT,PRODUCT_NAME,ORDER_NO,PRODUCT_PRICE) values (16,1,'교토 냉장고 자석',3,1400);
Insert into NULLPROJECT.NULLPROJECT_ORDERLIST (PRODUCT_NO,PRODUCT_COUNT,PRODUCT_NAME,ORDER_NO,PRODUCT_PRICE) values (1,5,'마카오 성당 마그넷',3,6900);
Insert into NULLPROJECT.NULLPROJECT_ORDERLIST (PRODUCT_NO,PRODUCT_COUNT,PRODUCT_NAME,ORDER_NO,PRODUCT_PRICE) values (17,4,'다낭 냉장고 자석',3,1000);
Insert into NULLPROJECT.NULLPROJECT_ORDERLIST (PRODUCT_NO,PRODUCT_COUNT,PRODUCT_NAME,ORDER_NO,PRODUCT_PRICE) values (19,3,'마카오 냉장고 자석',3,2100);
Insert into NULLPROJECT.NULLPROJECT_ORDERLIST (PRODUCT_NO,PRODUCT_COUNT,PRODUCT_NAME,ORDER_NO,PRODUCT_PRICE) values (18,1,'런던 냉장고 자석',4,2500);
Insert into NULLPROJECT.NULLPROJECT_ORDERLIST (PRODUCT_NO,PRODUCT_COUNT,PRODUCT_NAME,ORDER_NO,PRODUCT_PRICE) values (1,4,'마카오 성당 마그넷',6,6900);
Insert into NULLPROJECT.NULLPROJECT_ORDERLIST (PRODUCT_NO,PRODUCT_COUNT,PRODUCT_NAME,ORDER_NO,PRODUCT_PRICE) values (18,8,'런던 냉장고 자석',6,2500);
Insert into NULLPROJECT.NULLPROJECT_ORDERLIST (PRODUCT_NO,PRODUCT_COUNT,PRODUCT_NAME,ORDER_NO,PRODUCT_PRICE) values (12,6,'러시아 모스코 마그넷',6,6700);
Insert into NULLPROJECT.NULLPROJECT_ORDERLIST (PRODUCT_NO,PRODUCT_COUNT,PRODUCT_NAME,ORDER_NO,PRODUCT_PRICE) values (1,2,'마카오 성당 마그넷',1,6900);
Insert into NULLPROJECT.NULLPROJECT_ORDERLIST (PRODUCT_NO,PRODUCT_COUNT,PRODUCT_NAME,ORDER_NO,PRODUCT_PRICE) values (16,3,'교토 냉장고 자석',1,1400);
Insert into NULLPROJECT.NULLPROJECT_ORDERLIST (PRODUCT_NO,PRODUCT_COUNT,PRODUCT_NAME,ORDER_NO,PRODUCT_PRICE) values (7,3,'런던 마그넷 병따개',1,6500);
Insert into NULLPROJECT.NULLPROJECT_ORDERLIST (PRODUCT_NO,PRODUCT_COUNT,PRODUCT_NAME,ORDER_NO,PRODUCT_PRICE) values (18,1,'런던 냉장고 자석',1,2500);
Insert into NULLPROJECT.NULLPROJECT_ORDERLIST (PRODUCT_NO,PRODUCT_COUNT,PRODUCT_NAME,ORDER_NO,PRODUCT_PRICE) values (6,4,'만리장성 마그넷',1,6000);
REM INSERTING into NULLPROJECT.NULLPROJECT_PRODUCT
SET DEFINE OFF;
Insert into NULLPROJECT.NULLPROJECT_PRODUCT (PRODUCT_NO,PRODUCT_NAME,PRODUCT_PRICE,PRODUCT_COSTPRICE,PRODUCT_STOCK,PRODUCT_SALSEVOLUME,PRODUCT_DETAIL,PRODUCT_CRE_DATE,PRODUCT_MOD_DATE,PRODUCT_CATEGORY,PRODUCT_STATE) values (3,'말레이시아 마그넷',6900,3000,100,0,'말레이시아 마그넷입니다

크기 : 6.6*6.9*0.7(cm)

여행은 늘 설레임과 행복한 시간을 선사합니다.
여행 속 소소한 추억과 여운을 마그넷과 함께 소중하게 간직하세요!',to_date('19/11/11','RR/MM/DD'),to_date('19/11/11','RR/MM/DD'),'p',1);
Insert into NULLPROJECT.NULLPROJECT_PRODUCT (PRODUCT_NO,PRODUCT_NAME,PRODUCT_PRICE,PRODUCT_COSTPRICE,PRODUCT_STOCK,PRODUCT_SALSEVOLUME,PRODUCT_DETAIL,PRODUCT_CRE_DATE,PRODUCT_MOD_DATE,PRODUCT_CATEGORY,PRODUCT_STATE) values (4,'상하이 마그넷-1',6000,2800,100,0,'상하이 마그넷입니다

크기 : 7.8*5.5*0.7(cm)

여행은 늘 설레임과 행복한 시간을 선사합니다.
여행 속 소소한 추억과 여운을 마그넷과 함께 소중하게 간직하세요!',to_date('19/11/11','RR/MM/DD'),to_date('19/11/11','RR/MM/DD'),'p',1);
Insert into NULLPROJECT.NULLPROJECT_PRODUCT (PRODUCT_NO,PRODUCT_NAME,PRODUCT_PRICE,PRODUCT_COSTPRICE,PRODUCT_STOCK,PRODUCT_SALSEVOLUME,PRODUCT_DETAIL,PRODUCT_CRE_DATE,PRODUCT_MOD_DATE,PRODUCT_CATEGORY,PRODUCT_STATE) values (5,'상하이 마그넷-2',7000,3500,100,0,'상하이 마그넷입니다

크기 : 6.8*6.8*0.6(cm)

여행은 늘 설레임과 행복한 시간을 선사합니다.
여행 속 소소한 추억과 여운을 마그넷과 함께 소중하게 간직하세요!',to_date('19/11/11','RR/MM/DD'),to_date('19/11/11','RR/MM/DD'),'p',1);
Insert into NULLPROJECT.NULLPROJECT_PRODUCT (PRODUCT_NO,PRODUCT_NAME,PRODUCT_PRICE,PRODUCT_COSTPRICE,PRODUCT_STOCK,PRODUCT_SALSEVOLUME,PRODUCT_DETAIL,PRODUCT_CRE_DATE,PRODUCT_MOD_DATE,PRODUCT_CATEGORY,PRODUCT_STATE) values (6,'만리장성 마그넷',6000,2800,96,4,'만리장성 마그넷입니다

크기 : 6.7*5.9*0.7(cm)

여행은 늘 설레임과 행복한 시간을 선사합니다.
여행 속 소소한 추억과 여운을 마그넷과 함께 소중하게 간직하세요!',to_date('19/11/11','RR/MM/DD'),to_date('19/11/11','RR/MM/DD'),'p',1);
Insert into NULLPROJECT.NULLPROJECT_PRODUCT (PRODUCT_NO,PRODUCT_NAME,PRODUCT_PRICE,PRODUCT_COSTPRICE,PRODUCT_STOCK,PRODUCT_SALSEVOLUME,PRODUCT_DETAIL,PRODUCT_CRE_DATE,PRODUCT_MOD_DATE,PRODUCT_CATEGORY,PRODUCT_STATE) values (7,'런던 마그넷 병따개',6500,3000,97,3,'런던 마그넷 병따개입니다

크기 : 5.3*10.2*0.3(cm)

여행은 늘 설레임과 행복한 시간을 선사합니다.
여행 속 소소한 추억과 여운을 마그넷과 함께 소중하게 간직하세요!',to_date('19/11/11','RR/MM/DD'),to_date('19/11/11','RR/MM/DD'),'p',1);
Insert into NULLPROJECT.NULLPROJECT_PRODUCT (PRODUCT_NO,PRODUCT_NAME,PRODUCT_PRICE,PRODUCT_COSTPRICE,PRODUCT_STOCK,PRODUCT_SALSEVOLUME,PRODUCT_DETAIL,PRODUCT_CRE_DATE,PRODUCT_MOD_DATE,PRODUCT_CATEGORY,PRODUCT_STATE) values (8,'싱가폴 머라이언 마그넷',5500,2000,100,0,'싱가폴 머라이언 마그넷입니다

크기 : 4.7*6.8*0.8(cm)

여행은 늘 설레임과 행복한 시간을 선사합니다.
여행 속 소소한 추억과 여운을 마그넷과 함께 소중하게 간직하세요!',to_date('19/11/11','RR/MM/DD'),to_date('19/11/11','RR/MM/DD'),'p',1);
Insert into NULLPROJECT.NULLPROJECT_PRODUCT (PRODUCT_NO,PRODUCT_NAME,PRODUCT_PRICE,PRODUCT_COSTPRICE,PRODUCT_STOCK,PRODUCT_SALSEVOLUME,PRODUCT_DETAIL,PRODUCT_CRE_DATE,PRODUCT_MOD_DATE,PRODUCT_CATEGORY,PRODUCT_STATE) values (9,'샌프란시스코 마그넷',5000,2500,100,0,'샌프란시스코 마그넷입니다

크기 : 9.7*3.5*0.5(cm)

여행은 늘 설레임과 행복한 시간을 선사합니다.
여행 속 소소한 추억과 여운을 마그넷과 함께 소중하게 간직하세요!',to_date('19/11/11','RR/MM/DD'),to_date('19/11/11','RR/MM/DD'),'p',1);
Insert into NULLPROJECT.NULLPROJECT_PRODUCT (PRODUCT_NO,PRODUCT_NAME,PRODUCT_PRICE,PRODUCT_COSTPRICE,PRODUCT_STOCK,PRODUCT_SALSEVOLUME,PRODUCT_DETAIL,PRODUCT_CRE_DATE,PRODUCT_MOD_DATE,PRODUCT_CATEGORY,PRODUCT_STATE) values (10,'프랑스 지도 에펠탑 마그넷',8000,4000,100,0,'프랑스 지도 에펠탑 마그넷입니다

크기 : 6.0*7.1*0.9(cm)

여행은 늘 설레임과 행복한 시간을 선사합니다.
여행 속 소소한 추억과 여운을 마그넷과 함께 소중하게 간직하세요!',to_date('19/11/11','RR/MM/DD'),to_date('19/11/11','RR/MM/DD'),'p',1);
Insert into NULLPROJECT.NULLPROJECT_PRODUCT (PRODUCT_NO,PRODUCT_NAME,PRODUCT_PRICE,PRODUCT_COSTPRICE,PRODUCT_STOCK,PRODUCT_SALSEVOLUME,PRODUCT_DETAIL,PRODUCT_CRE_DATE,PRODUCT_MOD_DATE,PRODUCT_CATEGORY,PRODUCT_STATE) values (11,'프랑스 파리 마그넷',6500,3000,100,0,'프랑스 파리 마그넷 입니다.

크기 : 6.3*7.1*0.7cm

여행은 늘 설레임과 행복한 시간을 선사합니다.
여행 속 소소한 추억과 여운을 마그넷과 함께 소중하게 간직하세요!',to_date('19/11/11','RR/MM/DD'),to_date('19/11/11','RR/MM/DD'),'p',1);
Insert into NULLPROJECT.NULLPROJECT_PRODUCT (PRODUCT_NO,PRODUCT_NAME,PRODUCT_PRICE,PRODUCT_COSTPRICE,PRODUCT_STOCK,PRODUCT_SALSEVOLUME,PRODUCT_DETAIL,PRODUCT_CRE_DATE,PRODUCT_MOD_DATE,PRODUCT_CATEGORY,PRODUCT_STATE) values (12,'러시아 모스코 마그넷',6700,3000,94,6,'러시아 모스코 마그넷 입니다.

크기 : 5.5*7.3*0.5cm

여행은 늘 설레임과 행복한 시간을 선사합니다.
여행 속 소소한 추억과 여운을 마그넷과 함께 소중하게 간직하세요!',to_date('19/11/11','RR/MM/DD'),to_date('19/11/11','RR/MM/DD'),'p',1);
Insert into NULLPROJECT.NULLPROJECT_PRODUCT (PRODUCT_NO,PRODUCT_NAME,PRODUCT_PRICE,PRODUCT_COSTPRICE,PRODUCT_STOCK,PRODUCT_SALSEVOLUME,PRODUCT_DETAIL,PRODUCT_CRE_DATE,PRODUCT_MOD_DATE,PRODUCT_CATEGORY,PRODUCT_STATE) values (13,'원형 국기 마그넷(홍콩)',4000,1500,200,0,'주문 제작형 상품입니다.

크기 : 지름 4.4cm

표면가공 : 캔버스',to_date('19/11/11','RR/MM/DD'),to_date('19/11/11','RR/MM/DD'),'p',1);
Insert into NULLPROJECT.NULLPROJECT_PRODUCT (PRODUCT_NO,PRODUCT_NAME,PRODUCT_PRICE,PRODUCT_COSTPRICE,PRODUCT_STOCK,PRODUCT_SALSEVOLUME,PRODUCT_DETAIL,PRODUCT_CRE_DATE,PRODUCT_MOD_DATE,PRODUCT_CATEGORY,PRODUCT_STATE) values (14,'원형 멘트 마그넷(Italy)',3500,1200,100,0,'주문 제작형 상품입니다.

크기 : 지름 3.8cm

표면가공 : 캔버스',to_date('19/11/11','RR/MM/DD'),to_date('19/11/11','RR/MM/DD'),'p',1);
Insert into NULLPROJECT.NULLPROJECT_PRODUCT (PRODUCT_NO,PRODUCT_NAME,PRODUCT_PRICE,PRODUCT_COSTPRICE,PRODUCT_STOCK,PRODUCT_SALSEVOLUME,PRODUCT_DETAIL,PRODUCT_CRE_DATE,PRODUCT_MOD_DATE,PRODUCT_CATEGORY,PRODUCT_STATE) values (15,'원형 그림 마그넷(Rome)',3500,1200,100,0,'주문 제작형 상품입니다.

크기 : 지름 4.4cm

표면가공 : 캔버스',to_date('19/11/11','RR/MM/DD'),to_date('19/11/11','RR/MM/DD'),'p',1);
Insert into NULLPROJECT.NULLPROJECT_PRODUCT (PRODUCT_NO,PRODUCT_NAME,PRODUCT_PRICE,PRODUCT_COSTPRICE,PRODUCT_STOCK,PRODUCT_SALSEVOLUME,PRODUCT_DETAIL,PRODUCT_CRE_DATE,PRODUCT_MOD_DATE,PRODUCT_CATEGORY,PRODUCT_STATE) values (16,'교토 냉장고 자석',1400,500,196,4,'오후 6시 주문건 까지 당.일.배.송

모든 냉장고 자석 !!


높은 퀄리티 강력한 자석

현지에서도 구매가능한 여행 기념품
선물용, 개인 소장용, 기념품으로
아주 적합한 아이템.
매끈한 마감처리로 퀄리티를 높이며
하나 하나 정성스럽게 만든 수공업 제품입니다.',to_date('19/11/11','RR/MM/DD'),to_date('19/11/11','RR/MM/DD'),'p',1);
Insert into NULLPROJECT.NULLPROJECT_PRODUCT (PRODUCT_NO,PRODUCT_NAME,PRODUCT_PRICE,PRODUCT_COSTPRICE,PRODUCT_STOCK,PRODUCT_SALSEVOLUME,PRODUCT_DETAIL,PRODUCT_CRE_DATE,PRODUCT_MOD_DATE,PRODUCT_CATEGORY,PRODUCT_STATE) values (17,'다낭 냉장고 자석',1000,450,296,4,'오후 6시 주문건 까지 당.일.배.송

모든 냉장고 자석 !!


높은 퀄리티 강력한 자석

현지에서도 구매가능한 여행 기념품
선물용, 개인 소장용, 기념품으로
아주 적합한 아이템.
매끈한 마감처리로 퀄리티를 높이며
하나 하나 정성스럽게 만든 수공업 제품입니다.',to_date('19/11/11','RR/MM/DD'),to_date('19/11/11','RR/MM/DD'),'p',1);
Insert into NULLPROJECT.NULLPROJECT_PRODUCT (PRODUCT_NO,PRODUCT_NAME,PRODUCT_PRICE,PRODUCT_COSTPRICE,PRODUCT_STOCK,PRODUCT_SALSEVOLUME,PRODUCT_DETAIL,PRODUCT_CRE_DATE,PRODUCT_MOD_DATE,PRODUCT_CATEGORY,PRODUCT_STATE) values (18,'런던 냉장고 자석',2500,1000,140,10,'오후 6시 주문건 까지 당.일.배.송

모든 냉장고 자석 !!

높은 퀄리티 강력한 자석

현지에서도 구매가능한 여행 기념품
선물용, 개인 소장용, 기념품으로
아주 적합한 아이템.
매끈한 마감처리로 퀄리티를 높이며
하나 하나 정성스럽게 만든 수공업 제품입니다.',to_date('19/11/11','RR/MM/DD'),to_date('19/11/11','RR/MM/DD'),'p',1);
Insert into NULLPROJECT.NULLPROJECT_PRODUCT (PRODUCT_NO,PRODUCT_NAME,PRODUCT_PRICE,PRODUCT_COSTPRICE,PRODUCT_STOCK,PRODUCT_SALSEVOLUME,PRODUCT_DETAIL,PRODUCT_CRE_DATE,PRODUCT_MOD_DATE,PRODUCT_CATEGORY,PRODUCT_STATE) values (19,'마카오 냉장고 자석',2100,900,197,3,'오후 6시 주문건 까지 당.일.배.송

모든 냉장고 자석 !!


높은 퀄리티 강력한 자석

현지에서도 구매가능한 여행 기념품
선물용, 개인 소장용, 기념품으로
아주 적합한 아이템.
매끈한 마감처리로 퀄리티를 높이며
하나 하나 정성스럽게 만든 수공업 제품입니다.',to_date('19/11/11','RR/MM/DD'),to_date('19/11/11','RR/MM/DD'),'p',1);
Insert into NULLPROJECT.NULLPROJECT_PRODUCT (PRODUCT_NO,PRODUCT_NAME,PRODUCT_PRICE,PRODUCT_COSTPRICE,PRODUCT_STOCK,PRODUCT_SALSEVOLUME,PRODUCT_DETAIL,PRODUCT_CRE_DATE,PRODUCT_MOD_DATE,PRODUCT_CATEGORY,PRODUCT_STATE) values (20,'방콕 냉장고 자석',2400,1200,200,0,'오후 6시 주문건 까지 당.일.배.송

모든 냉장고 자석 !!


높은 퀄리티 강력한 자석

현지에서도 구매가능한 여행 기념품
선물용, 개인 소장용, 기념품으로
아주 적합한 아이템.
매끈한 마감처리로 퀄리티를 높이며
하나 하나 정성스럽게 만든 수공업 제품입니다.',to_date('19/11/11','RR/MM/DD'),to_date('19/11/11','RR/MM/DD'),'p',1);
Insert into NULLPROJECT.NULLPROJECT_PRODUCT (PRODUCT_NO,PRODUCT_NAME,PRODUCT_PRICE,PRODUCT_COSTPRICE,PRODUCT_STOCK,PRODUCT_SALSEVOLUME,PRODUCT_DETAIL,PRODUCT_CRE_DATE,PRODUCT_MOD_DATE,PRODUCT_CATEGORY,PRODUCT_STATE) values (1,'마카오 성당 마그넷',6900,3000,89,11,'마카오 성당 마그넷입니다

크기 : 6.3*7.1*0.7(cm)

여행은 늘 설레임과 행복한 시간을 선사합니다.
여행 속 소소한 추억과 여운을 마그넷과 함께 소중하게 간직하세요!',to_date('19/11/11','RR/MM/DD'),to_date('19/11/11','RR/MM/DD'),'p',1);
Insert into NULLPROJECT.NULLPROJECT_PRODUCT (PRODUCT_NO,PRODUCT_NAME,PRODUCT_PRICE,PRODUCT_COSTPRICE,PRODUCT_STOCK,PRODUCT_SALSEVOLUME,PRODUCT_DETAIL,PRODUCT_CRE_DATE,PRODUCT_MOD_DATE,PRODUCT_CATEGORY,PRODUCT_STATE) values (2,'홍콩 마그넷',6900,3000,100,0,'홍콩 마그넷입니다

크기 : 9.4*3.6*0.4(cm)

여행은 늘 설레임과 행복한 시간을 선사합니다.
여행 속 소소한 추억과 여운을 마그넷과 함께 소중하게 간직하세요!',to_date('19/11/11','RR/MM/DD'),to_date('19/11/11','RR/MM/DD'),'p',1);
Insert into NULLPROJECT.NULLPROJECT_PRODUCT (PRODUCT_NO,PRODUCT_NAME,PRODUCT_PRICE,PRODUCT_COSTPRICE,PRODUCT_STOCK,PRODUCT_SALSEVOLUME,PRODUCT_DETAIL,PRODUCT_CRE_DATE,PRODUCT_MOD_DATE,PRODUCT_CATEGORY,PRODUCT_STATE) values (21,'샌프란시스코 냉장고 자석',3000,1300,150,0,'오후 6시 주문건 까지 당.일.배.송

모든 냉장고 자석 !!


높은 퀄리티 강력한 자석

현지에서도 구매가능한 여행 기념품
선물용, 개인 소장용, 기념품으로
아주 적합한 아이템.
매끈한 마감처리로 퀄리티를 높이며
하나 하나 정성스럽게 만든 수공업 제품입니다.',to_date('19/11/11','RR/MM/DD'),to_date('19/11/11','RR/MM/DD'),'p',1);
Insert into NULLPROJECT.NULLPROJECT_PRODUCT (PRODUCT_NO,PRODUCT_NAME,PRODUCT_PRICE,PRODUCT_COSTPRICE,PRODUCT_STOCK,PRODUCT_SALSEVOLUME,PRODUCT_DETAIL,PRODUCT_CRE_DATE,PRODUCT_MOD_DATE,PRODUCT_CATEGORY,PRODUCT_STATE) values (22,'스페인 냉장고 자석',2800,1200,200,0,'오후 6시 주문건 까지 당.일.배.송

모든 냉장고 자석 !!


높은 퀄리티 강력한 자석

현지에서도 구매가능한 여행 기념품
선물용, 개인 소장용, 기념품으로
아주 적합한 아이템.
매끈한 마감처리로 퀄리티를 높이며
하나 하나 정성스럽게 만든 수공업 제품입니다.',to_date('19/11/11','RR/MM/DD'),to_date('19/11/11','RR/MM/DD'),'p',1);
Insert into NULLPROJECT.NULLPROJECT_PRODUCT (PRODUCT_NO,PRODUCT_NAME,PRODUCT_PRICE,PRODUCT_COSTPRICE,PRODUCT_STOCK,PRODUCT_SALSEVOLUME,PRODUCT_DETAIL,PRODUCT_CRE_DATE,PRODUCT_MOD_DATE,PRODUCT_CATEGORY,PRODUCT_STATE) values (23,'싱가폴 냉장고 자석',3100,1500,200,0,'오후 6시 주문건 까지 당.일.배.송

모든 냉장고 자석 !!


높은 퀄리티 강력한 자석

현지에서도 구매가능한 여행 기념품
선물용, 개인 소장용, 기념품으로
아주 적합한 아이템.
매끈한 마감처리로 퀄리티를 높이며
하나 하나 정성스럽게 만든 수공업 제품입니다.',to_date('19/11/11','RR/MM/DD'),to_date('19/11/11','RR/MM/DD'),'p',1);
Insert into NULLPROJECT.NULLPROJECT_PRODUCT (PRODUCT_NO,PRODUCT_NAME,PRODUCT_PRICE,PRODUCT_COSTPRICE,PRODUCT_STOCK,PRODUCT_SALSEVOLUME,PRODUCT_DETAIL,PRODUCT_CRE_DATE,PRODUCT_MOD_DATE,PRODUCT_CATEGORY,PRODUCT_STATE) values (24,'오사카 냉장고 자석',1100,300,300,0,'오후 6시 주문건 까지 당.일.배.송

모든 냉장고 자석 !!


높은 퀄리티 강력한 자석

현지에서도 구매가능한 여행 기념품
선물용, 개인 소장용, 기념품으로
아주 적합한 아이템.
매끈한 마감처리로 퀄리티를 높이며
하나 하나 정성스럽게 만든 수공업 제품입니다.',to_date('19/11/11','RR/MM/DD'),to_date('19/11/11','RR/MM/DD'),'p',1);
Insert into NULLPROJECT.NULLPROJECT_PRODUCT (PRODUCT_NO,PRODUCT_NAME,PRODUCT_PRICE,PRODUCT_COSTPRICE,PRODUCT_STOCK,PRODUCT_SALSEVOLUME,PRODUCT_DETAIL,PRODUCT_CRE_DATE,PRODUCT_MOD_DATE,PRODUCT_CATEGORY,PRODUCT_STATE) values (25,'오키나와 냉장고 자석',1200,600,100,0,'오후 6시 주문건 까지 당.일.배.송

모든 냉장고 자석 !!


높은 퀄리티 강력한 자석

현지에서도 구매가능한 여행 기념품
선물용, 개인 소장용, 기념품으로
아주 적합한 아이템.
매끈한 마감처리로 퀄리티를 높이며
하나 하나 정성스럽게 만든 수공업 제품입니다.',to_date('19/11/11','RR/MM/DD'),to_date('19/11/11','RR/MM/DD'),'p',1);
Insert into NULLPROJECT.NULLPROJECT_PRODUCT (PRODUCT_NO,PRODUCT_NAME,PRODUCT_PRICE,PRODUCT_COSTPRICE,PRODUCT_STOCK,PRODUCT_SALSEVOLUME,PRODUCT_DETAIL,PRODUCT_CRE_DATE,PRODUCT_MOD_DATE,PRODUCT_CATEGORY,PRODUCT_STATE) values (26,'지우펀 냉장고 자석',1700,800,150,0,'오후 6시 주문건 까지 당.일.배.송

모든 냉장고 자석 !!


높은 퀄리티 강력한 자석

현지에서도 구매가능한 여행 기념품
선물용, 개인 소장용, 기념품으로
아주 적합한 아이템.
매끈한 마감처리로 퀄리티를 높이며
하나 하나 정성스럽게 만든 수공업 제품입니다.',to_date('19/11/11','RR/MM/DD'),to_date('19/11/11','RR/MM/DD'),'p',1);
Insert into NULLPROJECT.NULLPROJECT_PRODUCT (PRODUCT_NO,PRODUCT_NAME,PRODUCT_PRICE,PRODUCT_COSTPRICE,PRODUCT_STOCK,PRODUCT_SALSEVOLUME,PRODUCT_DETAIL,PRODUCT_CRE_DATE,PRODUCT_MOD_DATE,PRODUCT_CATEGORY,PRODUCT_STATE) values (27,'타이페이 냉장고 자석',2500,1200,120,0,'오후 6시 주문건 까지 당.일.배.송

모든 냉장고 자석 !!


높은 퀄리티 강력한 자석

현지에서도 구매가능한 여행 기념품
선물용, 개인 소장용, 기념품으로
아주 적합한 아이템.
매끈한 마감처리로 퀄리티를 높이며
하나 하나 정성스럽게 만든 수공업 제품입니다.',to_date('19/11/11','RR/MM/DD'),to_date('19/11/11','RR/MM/DD'),'p',1);
Insert into NULLPROJECT.NULLPROJECT_PRODUCT (PRODUCT_NO,PRODUCT_NAME,PRODUCT_PRICE,PRODUCT_COSTPRICE,PRODUCT_STOCK,PRODUCT_SALSEVOLUME,PRODUCT_DETAIL,PRODUCT_CRE_DATE,PRODUCT_MOD_DATE,PRODUCT_CATEGORY,PRODUCT_STATE) values (28,'피렌체 냉장고 자석',3500,1800,200,0,'오후 6시 주문건 까지 당.일.배.송

모든 냉장고 자석 !!


높은 퀄리티 강력한 자석

현지에서도 구매가능한 여행 기념품
선물용, 개인 소장용, 기념품으로
아주 적합한 아이템.
매끈한 마감처리로 퀄리티를 높이며
하나 하나 정성스럽게 만든 수공업 제품입니다.',to_date('19/11/11','RR/MM/DD'),to_date('19/11/11','RR/MM/DD'),'p',1);
Insert into NULLPROJECT.NULLPROJECT_PRODUCT (PRODUCT_NO,PRODUCT_NAME,PRODUCT_PRICE,PRODUCT_COSTPRICE,PRODUCT_STOCK,PRODUCT_SALSEVOLUME,PRODUCT_DETAIL,PRODUCT_CRE_DATE,PRODUCT_MOD_DATE,PRODUCT_CATEGORY,PRODUCT_STATE) values (29,'한국 냉장고 자석',5000,2000,150,0,'오후 6시 주문건 까지 당.일.배.송

모든 냉장고 자석 !!


높은 퀄리티 강력한 자석

현지에서도 구매가능한 여행 기념품
선물용, 개인 소장용, 기념품으로
아주 적합한 아이템.
매끈한 마감처리로 퀄리티를 높이며
하나 하나 정성스럽게 만든 수공업 제품입니다.',to_date('19/11/11','RR/MM/DD'),to_date('19/11/11','RR/MM/DD'),'p',1);
Insert into NULLPROJECT.NULLPROJECT_PRODUCT (PRODUCT_NO,PRODUCT_NAME,PRODUCT_PRICE,PRODUCT_COSTPRICE,PRODUCT_STOCK,PRODUCT_SALSEVOLUME,PRODUCT_DETAIL,PRODUCT_CRE_DATE,PRODUCT_MOD_DATE,PRODUCT_CATEGORY,PRODUCT_STATE) values (30,'후쿠오카 냉장고 자석',3400,1500,100,0,'오후 6시 주문건 까지 당.일.배.송

모든 냉장고 자석 !!


높은 퀄리티 강력한 자석

현지에서도 구매가능한 여행 기념품
선물용, 개인 소장용, 기념품으로
아주 적합한 아이템.
매끈한 마감처리로 퀄리티를 높이며
하나 하나 정성스럽게 만든 수공업 제품입니다.',to_date('19/11/11','RR/MM/DD'),to_date('19/11/11','RR/MM/DD'),'p',1);
Insert into NULLPROJECT.NULLPROJECT_PRODUCT (PRODUCT_NO,PRODUCT_NAME,PRODUCT_PRICE,PRODUCT_COSTPRICE,PRODUCT_STOCK,PRODUCT_SALSEVOLUME,PRODUCT_DETAIL,PRODUCT_CRE_DATE,PRODUCT_MOD_DATE,PRODUCT_CATEGORY,PRODUCT_STATE) values (35,'saodh',1000,100,100,0,'123123',to_date('19/11/12','RR/MM/DD'),to_date('19/11/12','RR/MM/DD'),'p',0);
--------------------------------------------------------
--  DDL for Index MEMBER_EMAIL_UNIQUE
--------------------------------------------------------

  CREATE UNIQUE INDEX "NULLPROJECT"."MEMBER_EMAIL_UNIQUE" ON "NULLPROJECT"."NULLPROJECT_MEMBER" ("MEMBER_EMAIL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C009247
--------------------------------------------------------

  CREATE UNIQUE INDEX "NULLPROJECT"."SYS_C009247" ON "NULLPROJECT"."NULLPROJECT_MEMBER" ("MEMBER_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C009258
--------------------------------------------------------

  CREATE UNIQUE INDEX "NULLPROJECT"."SYS_C009258" ON "NULLPROJECT"."NULLPROJECT_ORDER" ("ORDER_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C009308
--------------------------------------------------------

  CREATE UNIQUE INDEX "NULLPROJECT"."SYS_C009308" ON "NULLPROJECT"."NULLPROJECT_IMG" ("IMG_IDX") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C009320
--------------------------------------------------------

  CREATE UNIQUE INDEX "NULLPROJECT"."SYS_C009320" ON "NULLPROJECT"."NULLPROJECT_PRODUCT" ("PRODUCT_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C009374
--------------------------------------------------------

  CREATE UNIQUE INDEX "NULLPROJECT"."SYS_C009374" ON "NULLPROJECT"."NULLPROJECT_CART" ("CART_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C009415
--------------------------------------------------------

  CREATE UNIQUE INDEX "NULLPROJECT"."SYS_C009415" ON "NULLPROJECT"."NULLPROJECT_BOARD" ("BOARD_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C009423
--------------------------------------------------------

  CREATE UNIQUE INDEX "NULLPROJECT"."SYS_C009423" ON "NULLPROJECT"."NULLPROJECT_ORDERLIST" ("ORDER_NO", "PRODUCT_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table NULLPROJECT_BOARD
--------------------------------------------------------

  ALTER TABLE "NULLPROJECT"."NULLPROJECT_BOARD" ADD PRIMARY KEY ("BOARD_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "NULLPROJECT"."NULLPROJECT_BOARD" MODIFY ("BOARD_STATE" NOT NULL ENABLE);
  ALTER TABLE "NULLPROJECT"."NULLPROJECT_BOARD" MODIFY ("BOARD_CATEGORY" NOT NULL ENABLE);
  ALTER TABLE "NULLPROJECT"."NULLPROJECT_BOARD" MODIFY ("BOARD_MOD_DATE" NOT NULL ENABLE);
  ALTER TABLE "NULLPROJECT"."NULLPROJECT_BOARD" MODIFY ("BOARD_CRE_DATE" NOT NULL ENABLE);
  ALTER TABLE "NULLPROJECT"."NULLPROJECT_BOARD" MODIFY ("BOARD_CONTENT" NOT NULL ENABLE);
  ALTER TABLE "NULLPROJECT"."NULLPROJECT_BOARD" MODIFY ("MEMBER_NO" NOT NULL ENABLE);
  ALTER TABLE "NULLPROJECT"."NULLPROJECT_BOARD" MODIFY ("BOARD_TITLE" NOT NULL ENABLE);
  ALTER TABLE "NULLPROJECT"."NULLPROJECT_BOARD" MODIFY ("BOARD_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table NULLPROJECT_CART
--------------------------------------------------------

  ALTER TABLE "NULLPROJECT"."NULLPROJECT_CART" ADD PRIMARY KEY ("CART_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "NULLPROJECT"."NULLPROJECT_CART" MODIFY ("CART_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table NULLPROJECT_COMMENT
--------------------------------------------------------

  ALTER TABLE "NULLPROJECT"."NULLPROJECT_COMMENT" MODIFY ("COMMENT_STATE" NOT NULL ENABLE);
  ALTER TABLE "NULLPROJECT"."NULLPROJECT_COMMENT" MODIFY ("COMMENT_CONTENT" NOT NULL ENABLE);
  ALTER TABLE "NULLPROJECT"."NULLPROJECT_COMMENT" MODIFY ("COMMENT_WRITER" NOT NULL ENABLE);
  ALTER TABLE "NULLPROJECT"."NULLPROJECT_COMMENT" MODIFY ("COMMENT_CRE_DATE" NOT NULL ENABLE);
  ALTER TABLE "NULLPROJECT"."NULLPROJECT_COMMENT" MODIFY ("COMMENT_NO" NOT NULL ENABLE);
  ALTER TABLE "NULLPROJECT"."NULLPROJECT_COMMENT" MODIFY ("BOARD_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table NULLPROJECT_IMG
--------------------------------------------------------

  ALTER TABLE "NULLPROJECT"."NULLPROJECT_IMG" ADD PRIMARY KEY ("IMG_IDX")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "NULLPROJECT"."NULLPROJECT_IMG" MODIFY ("PRODUCT_NO" NOT NULL ENABLE);
  ALTER TABLE "NULLPROJECT"."NULLPROJECT_IMG" MODIFY ("IMG_CREDATE" NOT NULL ENABLE);
  ALTER TABLE "NULLPROJECT"."NULLPROJECT_IMG" MODIFY ("IMG_IDX" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table NULLPROJECT_MEMBER
--------------------------------------------------------

  ALTER TABLE "NULLPROJECT"."NULLPROJECT_MEMBER" ADD PRIMARY KEY ("MEMBER_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "NULLPROJECT"."NULLPROJECT_MEMBER" MODIFY ("MEMBER_STATE" NOT NULL ENABLE);
  ALTER TABLE "NULLPROJECT"."NULLPROJECT_MEMBER" MODIFY ("MEMBER_CATEGORY" NOT NULL ENABLE);
  ALTER TABLE "NULLPROJECT"."NULLPROJECT_MEMBER" MODIFY ("MEMBER_ADMIN" NOT NULL ENABLE);
  ALTER TABLE "NULLPROJECT"."NULLPROJECT_MEMBER" MODIFY ("MEMBER_CRE_DATE" NOT NULL ENABLE);
  ALTER TABLE "NULLPROJECT"."NULLPROJECT_MEMBER" MODIFY ("MEMBER_PASSWORD" NOT NULL ENABLE);
  ALTER TABLE "NULLPROJECT"."NULLPROJECT_MEMBER" MODIFY ("MEMBER_CASH" NOT NULL ENABLE);
  ALTER TABLE "NULLPROJECT"."NULLPROJECT_MEMBER" MODIFY ("MEMBER_ADDRESS" NOT NULL ENABLE);
  ALTER TABLE "NULLPROJECT"."NULLPROJECT_MEMBER" MODIFY ("MEMBER_PHONE" NOT NULL ENABLE);
  ALTER TABLE "NULLPROJECT"."NULLPROJECT_MEMBER" MODIFY ("MEMBER_EMAIL" NOT NULL ENABLE);
  ALTER TABLE "NULLPROJECT"."NULLPROJECT_MEMBER" MODIFY ("MEMBER_NAME" NOT NULL ENABLE);
  ALTER TABLE "NULLPROJECT"."NULLPROJECT_MEMBER" MODIFY ("MEMBER_NO" NOT NULL ENABLE);
  ALTER TABLE "NULLPROJECT"."NULLPROJECT_MEMBER" ADD CONSTRAINT "MEMBER_EMAIL_UNIQUE" UNIQUE ("MEMBER_EMAIL")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table NULLPROJECT_ORDER
--------------------------------------------------------

  ALTER TABLE "NULLPROJECT"."NULLPROJECT_ORDER" ADD PRIMARY KEY ("ORDER_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "NULLPROJECT"."NULLPROJECT_ORDER" MODIFY ("ORDER_STATE" NOT NULL ENABLE);
  ALTER TABLE "NULLPROJECT"."NULLPROJECT_ORDER" MODIFY ("ORDER_CATEGORY" NOT NULL ENABLE);
  ALTER TABLE "NULLPROJECT"."NULLPROJECT_ORDER" MODIFY ("ORDER_ADDRESS" NOT NULL ENABLE);
  ALTER TABLE "NULLPROJECT"."NULLPROJECT_ORDER" MODIFY ("ORDER_PHONE" NOT NULL ENABLE);
  ALTER TABLE "NULLPROJECT"."NULLPROJECT_ORDER" MODIFY ("ORDER_EMAIL" NOT NULL ENABLE);
  ALTER TABLE "NULLPROJECT"."NULLPROJECT_ORDER" MODIFY ("ORDER_MEMBERNAME" NOT NULL ENABLE);
  ALTER TABLE "NULLPROJECT"."NULLPROJECT_ORDER" MODIFY ("ORDER_PRICE" NOT NULL ENABLE);
  ALTER TABLE "NULLPROJECT"."NULLPROJECT_ORDER" MODIFY ("ORDER_DATE" NOT NULL ENABLE);
  ALTER TABLE "NULLPROJECT"."NULLPROJECT_ORDER" MODIFY ("MEMBER_NO" NOT NULL ENABLE);
  ALTER TABLE "NULLPROJECT"."NULLPROJECT_ORDER" MODIFY ("ORDER_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table NULLPROJECT_ORDERLIST
--------------------------------------------------------

  ALTER TABLE "NULLPROJECT"."NULLPROJECT_ORDERLIST" ADD PRIMARY KEY ("ORDER_NO", "PRODUCT_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table NULLPROJECT_PRODUCT
--------------------------------------------------------

  ALTER TABLE "NULLPROJECT"."NULLPROJECT_PRODUCT" ADD PRIMARY KEY ("PRODUCT_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "NULLPROJECT"."NULLPROJECT_PRODUCT" MODIFY ("PRODUCT_STATE" NOT NULL ENABLE);
  ALTER TABLE "NULLPROJECT"."NULLPROJECT_PRODUCT" MODIFY ("PRODUCT_CATEGORY" NOT NULL ENABLE);
  ALTER TABLE "NULLPROJECT"."NULLPROJECT_PRODUCT" MODIFY ("PRODUCT_MOD_DATE" NOT NULL ENABLE);
  ALTER TABLE "NULLPROJECT"."NULLPROJECT_PRODUCT" MODIFY ("PRODUCT_CRE_DATE" NOT NULL ENABLE);
  ALTER TABLE "NULLPROJECT"."NULLPROJECT_PRODUCT" MODIFY ("PRODUCT_DETAIL" NOT NULL ENABLE);
  ALTER TABLE "NULLPROJECT"."NULLPROJECT_PRODUCT" MODIFY ("PRODUCT_SALSEVOLUME" NOT NULL ENABLE);
  ALTER TABLE "NULLPROJECT"."NULLPROJECT_PRODUCT" MODIFY ("PRODUCT_STOCK" NOT NULL ENABLE);
  ALTER TABLE "NULLPROJECT"."NULLPROJECT_PRODUCT" MODIFY ("PRODUCT_COSTPRICE" NOT NULL ENABLE);
  ALTER TABLE "NULLPROJECT"."NULLPROJECT_PRODUCT" MODIFY ("PRODUCT_PRICE" NOT NULL ENABLE);
  ALTER TABLE "NULLPROJECT"."NULLPROJECT_PRODUCT" MODIFY ("PRODUCT_NAME" NOT NULL ENABLE);
  ALTER TABLE "NULLPROJECT"."NULLPROJECT_PRODUCT" MODIFY ("PRODUCT_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table NULLPROJECT_CART
--------------------------------------------------------

  ALTER TABLE "NULLPROJECT"."NULLPROJECT_CART" ADD FOREIGN KEY ("CART_PRODUCTNO")
	  REFERENCES "NULLPROJECT"."NULLPROJECT_PRODUCT" ("PRODUCT_NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table NULLPROJECT_IMG
--------------------------------------------------------

  ALTER TABLE "NULLPROJECT"."NULLPROJECT_IMG" ADD FOREIGN KEY ("PRODUCT_NO")
	  REFERENCES "NULLPROJECT"."NULLPROJECT_PRODUCT" ("PRODUCT_NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table NULLPROJECT_ORDER
--------------------------------------------------------

  ALTER TABLE "NULLPROJECT"."NULLPROJECT_ORDER" ADD FOREIGN KEY ("MEMBER_NO")
	  REFERENCES "NULLPROJECT"."NULLPROJECT_MEMBER" ("MEMBER_NO") ENABLE;
