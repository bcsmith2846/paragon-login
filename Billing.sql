DROP USER "PARAGON" CASCADE;
CREATE USER Paragon identified by Paragon;
DEFAULT TABLESPACE USERS
TEMPORARY TABLESPACE TEMP;
GRANT CREATE SESSION TO PARAGON;
GRANT ALL PRIVILEGES TO PARAGON;
grant aq_administrator_role to PARAGON with admin option;
grant aq_user_role to PARAGON with admin option;
grant authenticateduser to PARAGON with admin option;
grant connect to PARAGON with admin option;
grant dba to PARAGON;
GRANT ALL PRIVILEGES ON DBMS_AQADM TO PARAGON;
GRANT ALL PRIVILEGES ON DBMS_AQ TO PARAGON;
GRANT CREATE TABLESPACE TO PARAGON;
GRANT ALTER TABLESPACE TO PARAGON;
GRANT DROP TABLESPACE TO PARAGON;
GRANT MANAGE TABLESPACE TO PARAGON;
GRANT UNLIMITED TABLESPACE TO PARAGON;
commit;


--------------------------------------------------------
--  DDL for Table BILLING_TYPES
--------------------------------------------------------

  CREATE TABLE "PARAGON"."BILLING_TYPES" 
   (	"ID" NUMBER(10,0) GENERATED AS IDENTITY START WITH 0 INCREMENT BY 1 MINVALUE 0, 
	"NAME" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table CONTRACTS
--------------------------------------------------------

  CREATE TABLE "PARAGON"."CONTRACTS" 
   (	"ID" NUMBER(10,0) GENERATED AS IDENTITY START WITH 0 INCREMENT BY 1 MINVALUE 0, 
	"E_ID" NUMBER(10,0), 
	"RATE" NUMBER(14,2), 
	"START_DATE" DATE, 
	"END_DATE" DATE, 
	"C_ID" NUMBER(10,0), 
	"BT_ID" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table CUSTOMERS
--------------------------------------------------------

  CREATE TABLE "PARAGON"."CUSTOMERS" 
   (	"ID" NUMBER(10,0) GENERATED AS IDENTITY START WITH 1 INCREMENT BY 1 MINVALUE 0, 
	"NAME" VARCHAR2(255 BYTE), 
	"ADDRESS" VARCHAR2(255 BYTE), 
	"PHONE" VARCHAR2(255 BYTE), 
	"EMAIL" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table EMPLOYEES
--------------------------------------------------------

  CREATE TABLE "PARAGON"."EMPLOYEES" 
   (	"ID" NUMBER(10,0) GENERATED AS IDENTITY START WITH 1 INCREMENT BY 1 MINVALUE 0, 
	"U_ID" NUMBER(10,0), 
	"FIRST_NAME" VARCHAR2(255 BYTE), 
	"LAST_NAME" VARCHAR2(255 BYTE), 
	"EMAIL" VARCHAR2(255 BYTE), 
	"PHONE" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table EMPLOYEE_JOBS
--------------------------------------------------------

  CREATE TABLE "PARAGON"."EMPLOYEE_JOBS" 
   (	"E_ID" NUMBER(10,0), 
	"JT_ID" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table JOB_TITLES
--------------------------------------------------------

  CREATE TABLE "PARAGON"."JOB_TITLES" 
   (	"ID" NUMBER(10,0) GENERATED AS IDENTITY START WITH 0 INCREMENT BY 1 MINVALUE 0, 
	"TITLE" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table USERS
--------------------------------------------------------

  CREATE TABLE "PARAGON"."USERS" 
   (	"ID" NUMBER(10,0) GENERATED AS IDENTITY START WITH 0 INCREMENT BY 1 MINVALUE 0, 
	"USERNAME" VARCHAR2(255 BYTE), 
	"PASS" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table USER_GROUPS
--------------------------------------------------------

  CREATE TABLE "PARAGON"."USER_GROUPS" 
   (	"U_ID" NUMBER(10,0), 
	"UGT_ID" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table USER_GROUP_TYPES
--------------------------------------------------------

  CREATE TABLE "PARAGON"."USER_GROUP_TYPES" 
   (	"ID" NUMBER(10,0) GENERATED AS IDENTITY START WITH 0 INCREMENT BY 1 MINVALUE 0, 
	"NAME" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into PARAGON.BILLING_TYPES
SET DEFINE OFF;
Insert into PARAGON.BILLING_TYPES (NAME) values ('Annually');
Insert into PARAGON.BILLING_TYPES (NAME) values ('Biannually');
Insert into PARAGON.BILLING_TYPES (NAME) values ('Semi-Annually');
Insert into PARAGON.BILLING_TYPES (NAME) values ('Monthly');
Insert into PARAGON.BILLING_TYPES (NAME) values ('Semi-Monthly');
REM INSERTING into PARAGON.CONTRACTS
SET DEFINE OFF;
Insert into PARAGON.CONTRACTS (E_ID,RATE,START_DATE,END_DATE,C_ID,BT_ID) values (1,80,to_date('27-APR-12','DD-MON-RR'),to_date('27-APR-13','DD-MON-RR'),1,0);
Insert into PARAGON.CONTRACTS (E_ID,RATE,START_DATE,END_DATE,C_ID,BT_ID) values (2,80,to_date('27-APR-12','DD-MON-RR'),to_date('27-APR-13','DD-MON-RR'),2,2);
Insert into PARAGON.CONTRACTS (E_ID,RATE,START_DATE,END_DATE,C_ID,BT_ID) values (1,180,to_date('27-APR-12','DD-MON-RR'),to_date('27-APR-12','DD-MON-RR'),3,4);
REM INSERTING into PARAGON.CUSTOMERS
SET DEFINE OFF;
Insert into PARAGON.CUSTOMERS (NAME,ADDRESS,PHONE,EMAIL) values ('EDF','123 Fake Street','555-555-5555','EDF@edf.net');
Insert into PARAGON.CUSTOMERS (NAME,ADDRESS,PHONE,EMAIL) values ('ARM','124 Fake Street','555-555-5500','ARM@arm.net');
Insert into PARAGON.CUSTOMERS (NAME,ADDRESS,PHONE,EMAIL) values ('Twin','125 Fake Street','555-555-0000','TWIN@twin.net');
REM INSERTING into PARAGON.EMPLOYEES
SET DEFINE OFF;
Insert into PARAGON.EMPLOYEES (U_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE) values (2,'Trevor','Carter','trevor.carter@paragonenergysoftware.com','832-248-9637');
Insert into PARAGON.EMPLOYEES (U_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE) values (3,'Brenden','Smith','brenden.smith@paragonenergysoftware.com','409-828-0894');
REM INSERTING into PARAGON.EMPLOYEE_JOBS
SET DEFINE OFF;
Insert into PARAGON.EMPLOYEE_JOBS (E_ID,JT_ID) values (1,3);
Insert into PARAGON.EMPLOYEE_JOBS (E_ID,JT_ID) values (2,3);
REM INSERTING into PARAGON.JOB_TITLES
SET DEFINE OFF;
Insert into PARAGON.JOB_TITLES (TITLE) values ('President');
Insert into PARAGON.JOB_TITLES (TITLE) values ('Senior Vice President of Sales');
Insert into PARAGON.JOB_TITLES (TITLE) values ('Vice President of Technology');
Insert into PARAGON.JOB_TITLES (TITLE) values ('Developer');
Insert into PARAGON.JOB_TITLES (TITLE) values ('Consultant');
Insert into PARAGON.JOB_TITLES (TITLE) values ('Business Analyst');
REM INSERTING into PARAGON.USERS
SET DEFINE OFF;
Insert into PARAGON.USERS (USERNAME,PASS) values ('Admin','Parag0n1');
Insert into PARAGON.USERS (USERNAME,PASS) values ('Dummy','Dummy');
Insert into PARAGON.USERS (USERNAME,PASS) values ('Trevor','Test');
Insert into PARAGON.USERS (USERNAME,PASS) values ('Brenden','Test');
REM INSERTING into PARAGON.USER_GROUPS
SET DEFINE OFF;
Insert into PARAGON.USER_GROUPS (U_ID,UGT_ID) values (0,2);
Insert into PARAGON.USER_GROUPS (U_ID,UGT_ID) values (2,0);
Insert into PARAGON.USER_GROUPS (U_ID,UGT_ID) values (3,1);
REM INSERTING into PARAGON.USER_GROUP_TYPES
SET DEFINE OFF;
Insert into PARAGON.USER_GROUP_TYPES (NAME) values ('User');
Insert into PARAGON.USER_GROUP_TYPES (NAME) values ('Elevated');
Insert into PARAGON.USER_GROUP_TYPES (NAME) values ('Admin');
--------------------------------------------------------
--  DDL for Index SYS_C0024492
--------------------------------------------------------

  CREATE UNIQUE INDEX "PARAGON"."SYS_C0024492" ON "PARAGON"."USER_GROUP_TYPES" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C0024500
--------------------------------------------------------

  CREATE UNIQUE INDEX "PARAGON"."SYS_C0024500" ON "PARAGON"."USERS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C0024508
--------------------------------------------------------

  CREATE UNIQUE INDEX "PARAGON"."SYS_C0024508" ON "PARAGON"."EMPLOYEES" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C0024515
--------------------------------------------------------

  CREATE UNIQUE INDEX "PARAGON"."SYS_C0024515" ON "PARAGON"."JOB_TITLES" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C0024522
--------------------------------------------------------

  CREATE UNIQUE INDEX "PARAGON"."SYS_C0024522" ON "PARAGON"."BILLING_TYPES" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C0024525
--------------------------------------------------------

  CREATE UNIQUE INDEX "PARAGON"."SYS_C0024525" ON "PARAGON"."CUSTOMERS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C0024532
--------------------------------------------------------

  CREATE UNIQUE INDEX "PARAGON"."SYS_C0024532" ON "PARAGON"."CONTRACTS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table BILLING_TYPES
--------------------------------------------------------

  ALTER TABLE "PARAGON"."BILLING_TYPES" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "PARAGON"."BILLING_TYPES" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "PARAGON"."BILLING_TYPES" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CONTRACTS
--------------------------------------------------------

  ALTER TABLE "PARAGON"."CONTRACTS" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "PARAGON"."CONTRACTS" MODIFY ("BT_ID" NOT NULL ENABLE);
  ALTER TABLE "PARAGON"."CONTRACTS" MODIFY ("C_ID" NOT NULL ENABLE);
  ALTER TABLE "PARAGON"."CONTRACTS" MODIFY ("END_DATE" NOT NULL ENABLE);
  ALTER TABLE "PARAGON"."CONTRACTS" MODIFY ("START_DATE" NOT NULL ENABLE);
  ALTER TABLE "PARAGON"."CONTRACTS" MODIFY ("RATE" NOT NULL ENABLE);
  ALTER TABLE "PARAGON"."CONTRACTS" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CUSTOMERS
--------------------------------------------------------

  ALTER TABLE "PARAGON"."CUSTOMERS" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "PARAGON"."CUSTOMERS" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "PARAGON"."CUSTOMERS" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table EMPLOYEES
--------------------------------------------------------

  ALTER TABLE "PARAGON"."EMPLOYEES" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "PARAGON"."EMPLOYEES" MODIFY ("LAST_NAME" NOT NULL ENABLE);
  ALTER TABLE "PARAGON"."EMPLOYEES" MODIFY ("FIRST_NAME" NOT NULL ENABLE);
  ALTER TABLE "PARAGON"."EMPLOYEES" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table EMPLOYEE_JOBS
--------------------------------------------------------

  ALTER TABLE "PARAGON"."EMPLOYEE_JOBS" MODIFY ("JT_ID" NOT NULL ENABLE);
  ALTER TABLE "PARAGON"."EMPLOYEE_JOBS" MODIFY ("E_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table JOB_TITLES
--------------------------------------------------------

  ALTER TABLE "PARAGON"."JOB_TITLES" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "PARAGON"."JOB_TITLES" MODIFY ("TITLE" NOT NULL ENABLE);
  ALTER TABLE "PARAGON"."JOB_TITLES" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table USERS
--------------------------------------------------------

  ALTER TABLE "PARAGON"."USERS" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "PARAGON"."USERS" MODIFY ("PASS" NOT NULL ENABLE);
  ALTER TABLE "PARAGON"."USERS" MODIFY ("USERNAME" NOT NULL ENABLE);
  ALTER TABLE "PARAGON"."USERS" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table USER_GROUPS
--------------------------------------------------------

  ALTER TABLE "PARAGON"."USER_GROUPS" MODIFY ("UGT_ID" NOT NULL ENABLE);
  ALTER TABLE "PARAGON"."USER_GROUPS" MODIFY ("U_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table USER_GROUP_TYPES
--------------------------------------------------------

  ALTER TABLE "PARAGON"."USER_GROUP_TYPES" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "PARAGON"."USER_GROUP_TYPES" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "PARAGON"."USER_GROUP_TYPES" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table CONTRACTS
--------------------------------------------------------

  ALTER TABLE "PARAGON"."CONTRACTS" ADD FOREIGN KEY ("E_ID")
	  REFERENCES "PARAGON"."EMPLOYEES" ("ID") ENABLE;
  ALTER TABLE "PARAGON"."CONTRACTS" ADD FOREIGN KEY ("C_ID")
	  REFERENCES "PARAGON"."CUSTOMERS" ("ID") ENABLE;
  ALTER TABLE "PARAGON"."CONTRACTS" ADD FOREIGN KEY ("BT_ID")
	  REFERENCES "PARAGON"."BILLING_TYPES" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EMPLOYEES
--------------------------------------------------------

  ALTER TABLE "PARAGON"."EMPLOYEES" ADD FOREIGN KEY ("U_ID")
	  REFERENCES "PARAGON"."USERS" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EMPLOYEE_JOBS
--------------------------------------------------------

  ALTER TABLE "PARAGON"."EMPLOYEE_JOBS" ADD FOREIGN KEY ("E_ID")
	  REFERENCES "PARAGON"."EMPLOYEES" ("ID") ENABLE;
  ALTER TABLE "PARAGON"."EMPLOYEE_JOBS" ADD FOREIGN KEY ("JT_ID")
	  REFERENCES "PARAGON"."JOB_TITLES" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table USER_GROUPS
--------------------------------------------------------

  ALTER TABLE "PARAGON"."USER_GROUPS" ADD FOREIGN KEY ("U_ID")
	  REFERENCES "PARAGON"."USERS" ("ID") ENABLE;
  ALTER TABLE "PARAGON"."USER_GROUPS" ADD FOREIGN KEY ("UGT_ID")
	  REFERENCES "PARAGON"."USER_GROUP_TYPES" ("ID") ENABLE;

@@MoreContracts.SQL;