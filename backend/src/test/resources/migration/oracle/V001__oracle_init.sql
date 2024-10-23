-- All the code tables required so far

CREATE TABLE THE.OPEN_CATEGORY_CODE (
	OPEN_CATEGORY_CODE VARCHAR2(7),
	DESCRIPTION VARCHAR2(120),
	EFFECTIVE_DATE DATE,
	EXPIRY_DATE DATE,
	UPDATE_TIMESTAMP DATE,
	CONSTRAINT OCC_PK PRIMARY KEY (OPEN_CATEGORY_CODE),
	CONSTRAINT SYS_C007655_OCC_CT CHECK ("OPEN_CATEGORY_CODE" IS NOT NULL),
	CONSTRAINT SYS_C007656_OCC_CT CHECK ("DESCRIPTION" IS NOT NULL),
	CONSTRAINT SYS_C007657_OCC_CT CHECK ("EFFECTIVE_DATE" IS NOT NULL),
	CONSTRAINT SYS_C007658_OCC_CT CHECK ("EXPIRY_DATE" IS NOT NULL),
	CONSTRAINT SYS_C007659_OCC_CT CHECK ("UPDATE_TIMESTAMP" IS NOT NULL)
);

CREATE TABLE THE.AGE_CLASS_CODE (
	AGE_CLASS_CODE VARCHAR2(1),
	DESCRIPTION VARCHAR2(120),
	EFFECTIVE_DATE DATE,
	EXPIRY_DATE DATE,
	UPDATE_TIMESTAMP DATE,
	CONSTRAINT ACC_PK PRIMARY KEY (AGE_CLASS_CODE),
	CONSTRAINT SYS_C007687_ACC_CT CHECK ("AGE_CLASS_CODE" IS NOT NULL),
	CONSTRAINT SYS_C007689_ACC_CT CHECK ("DESCRIPTION" IS NOT NULL),
	CONSTRAINT SYS_C007690_ACC_CT CHECK ("EFFECTIVE_DATE" IS NOT NULL),
	CONSTRAINT SYS_C007691_ACC_CT CHECK ("EXPIRY_DATE" IS NOT NULL),
	CONSTRAINT SYS_C007692_ACC_CT CHECK ("UPDATE_TIMESTAMP" IS NOT NULL)
);

CREATE TABLE THE.HEIGHT_CLASS_CODE (
	HEIGHT_CLASS_CODE VARCHAR2(1),
	DESCRIPTION VARCHAR2(120),
	EFFECTIVE_DATE DATE,
	EXPIRY_DATE DATE,
	UPDATE_TIMESTAMP DATE,
	CONSTRAINT HCC_PK PRIMARY KEY (HEIGHT_CLASS_CODE),
	CONSTRAINT SYS_C0039387_HCC_CT CHECK ("HEIGHT_CLASS_CODE" IS NOT NULL),
	CONSTRAINT SYS_C0039388_HCC_CT CHECK ("DESCRIPTION" IS NOT NULL),
	CONSTRAINT SYS_C0039389_HCC_CT CHECK ("EFFECTIVE_DATE" IS NOT NULL),
	CONSTRAINT SYS_C0039390_HCC_CT CHECK ("EXPIRY_DATE" IS NOT NULL),
	CONSTRAINT SYS_C0039391_HCC_CT CHECK ("UPDATE_TIMESTAMP" IS NOT NULL)
);

CREATE TABLE THE.OPENING_STATUS_CODE (
	OPENING_STATUS_CODE VARCHAR2(3),
	DESCRIPTION VARCHAR2(120),
	EFFECTIVE_DATE DATE,
	EXPIRY_DATE DATE,
	UPDATE_TIMESTAMP DATE,
	CONSTRAINT OSC_PK PRIMARY KEY (OPENING_STATUS_CODE),
	CONSTRAINT SYS_C008336_OSC_CT CHECK ("OPENING_STATUS_CODE" IS NOT NULL),
	CONSTRAINT SYS_C008337_OSC_CT CHECK ("DESCRIPTION" IS NOT NULL),
	CONSTRAINT SYS_C008338_OSC_CT CHECK ("EFFECTIVE_DATE" IS NOT NULL),
	CONSTRAINT SYS_C008339_OSC_CT CHECK ("EXPIRY_DATE" IS NOT NULL),
	CONSTRAINT SYS_C008340_OSC_CT CHECK ("UPDATE_TIMESTAMP" IS NOT NULL)
);

CREATE TABLE THE.STOCKING_CLASS_CODE (
	STOCKING_CLASS_CODE VARCHAR2(1),
	DESCRIPTION VARCHAR2(120),
	EFFECTIVE_DATE DATE,
	EXPIRY_DATE DATE,
	UPDATE_TIMESTAMP DATE,
	CONSTRAINT SCC1_PK PRIMARY KEY (STOCKING_CLASS_CODE),
	CONSTRAINT SYS_C008214_SCC1_CT CHECK ("STOCKING_CLASS_CODE" IS NOT NULL),
	CONSTRAINT SYS_C008215_SCC1_CT CHECK ("DESCRIPTION" IS NOT NULL),
	CONSTRAINT SYS_C008216_SCC1_CT CHECK ("EFFECTIVE_DATE" IS NOT NULL),
	CONSTRAINT SYS_C008217_SCC1_CT CHECK ("EXPIRY_DATE" IS NOT NULL),
	CONSTRAINT SYS_C008218_SCC1_CT CHECK ("UPDATE_TIMESTAMP" IS NOT NULL)
);

CREATE TABLE THE.SITE_CLASS_CODE (
	SITE_CLASS_CODE VARCHAR2(1),
	DESCRIPTION VARCHAR2(120),
	EFFECTIVE_DATE DATE,
	EXPIRY_DATE DATE,
	UPDATE_TIMESTAMP DATE,
	CONSTRAINT SITE_CLASS_CODE_PK PRIMARY KEY (SITE_CLASS_CODE),
	CONSTRAINT SYS_C008260_SCC_CT CHECK ("SITE_CLASS_CODE" IS NOT NULL),
	CONSTRAINT SYS_C008262_SCC_CT CHECK ("DESCRIPTION" IS NOT NULL),
	CONSTRAINT SYS_C008264_SCC_CT CHECK ("EFFECTIVE_DATE" IS NOT NULL),
	CONSTRAINT SYS_C008265_SCC_CT CHECK ("EXPIRY_DATE" IS NOT NULL),
	CONSTRAINT SYS_C008266_SCC_CT CHECK ("UPDATE_TIMESTAMP" IS NOT NULL)
);

CREATE TABLE THE.SITE_INDEX_SOURCE_CODE (
	SITE_INDEX_SOURCE_CODE VARCHAR2(1),
	DESCRIPTION VARCHAR2(120),
	EFFECTIVE_DATE DATE,
	EXPIRY_DATE DATE,
	UPDATE_TIMESTAMP DATE,
	CONSTRAINT SISC_PK PRIMARY KEY (SITE_INDEX_SOURCE_CODE),
	CONSTRAINT SYS_C008567_SISC_CT CHECK ("SITE_INDEX_SOURCE_CODE" IS NOT NULL),
	CONSTRAINT SYS_C008569_SISC_CT CHECK ("DESCRIPTION" IS NOT NULL),
	CONSTRAINT SYS_C008571_SISC_CT CHECK ("EFFECTIVE_DATE" IS NOT NULL),
	CONSTRAINT SYS_C008572_SISC_CT CHECK ("EXPIRY_DATE" IS NOT NULL),
	CONSTRAINT SYS_C008573_SISC_CT CHECK ("UPDATE_TIMESTAMP" IS NOT NULL)
);

CREATE TABLE THE.STOCKING_STATUS_CODE (
	STOCKING_STATUS_CODE VARCHAR2(3),
	DESCRIPTION VARCHAR2(120),
	EFFECTIVE_DATE DATE,
	EXPIRY_DATE DATE,
	UPDATE_TIMESTAMP DATE,
	CONSTRAINT SSC6_PK PRIMARY KEY (STOCKING_STATUS_CODE),
	CONSTRAINT SYS_C007771_SSC6_CT CHECK ("STOCKING_STATUS_CODE" IS NOT NULL),
	CONSTRAINT SYS_C007772_SSC6_CT CHECK ("DESCRIPTION" IS NOT NULL),
	CONSTRAINT SYS_C007773_SSC6_CT CHECK ("EFFECTIVE_DATE" IS NOT NULL),
	CONSTRAINT SYS_C007774_SSC6_CT CHECK ("EXPIRY_DATE" IS NOT NULL),
	CONSTRAINT SYS_C007775_SSC6_CT CHECK ("UPDATE_TIMESTAMP" IS NOT NULL)
);

CREATE TABLE THE.TSB_NUMBER_CODE (
	TSB_NUMBER_CODE VARCHAR2(3),
	DESCRIPTION VARCHAR2(120),
	EFFECTIVE_DATE DATE,
	EXPIRY_DATE DATE,
	UPDATE_TIMESTAMP DATE,
	CONSTRAINT SYS_C0016369_TSBNC_CT CHECK ("TSB_NUMBER_CODE" IS NOT NULL),
	CONSTRAINT SYS_C0016370_TSBNC_CT CHECK ("DESCRIPTION" IS NOT NULL),
	CONSTRAINT SYS_C0016371_TSBNC_CT CHECK ("EFFECTIVE_DATE" IS NOT NULL),
	CONSTRAINT SYS_C0016372_TSBNC_CT CHECK ("EXPIRY_DATE" IS NOT NULL),
	CONSTRAINT SYS_C0016374_TSBNC_CT CHECK ("UPDATE_TIMESTAMP" IS NOT NULL),
	CONSTRAINT TSBNC_PK PRIMARY KEY (TSB_NUMBER_CODE)
);

CREATE TABLE THE.TREE_SPECIES_CODE (
	TREE_SPECIES_CODE VARCHAR2(3),
	DESCRIPTION VARCHAR2(120),
	EFFECTIVE_DATE DATE,
	EXPIRY_DATE DATE,
	UPDATE_TIMESTAMP DATE,
	CONSTRAINT SYS_C0031659_TSC_CT CHECK ("TREE_SPECIES_CODE" IS NOT NULL),
	CONSTRAINT SYS_C0031660_TSC_CT CHECK ("DESCRIPTION" IS NOT NULL),
	CONSTRAINT SYS_C0031661_TSC_CT CHECK ("EFFECTIVE_DATE" IS NOT NULL),
	CONSTRAINT SYS_C0031662_TSC_CT CHECK ("EXPIRY_DATE" IS NOT NULL),
	CONSTRAINT SYS_C0031663_TSC_CT CHECK ("UPDATE_TIMESTAMP" IS NOT NULL),
	CONSTRAINT TSC_PK PRIMARY KEY (TREE_SPECIES_CODE)
);

CREATE TABLE THE.RESULTS_AUDIT_ACTION_CODE (
	RESULTS_AUDIT_ACTION_CODE VARCHAR2(3),
	DESCRIPTION VARCHAR2(120),
	EFFECTIVE_DATE DATE,
	EXPIRY_DATE DATE,
	UPDATE_TIMESTAMP DATE,
	CONSTRAINT RAAC_PK PRIMARY KEY (RESULTS_AUDIT_ACTION_CODE),
	CONSTRAINT SYS_C007760_RAAC_CT CHECK ("RESULTS_AUDIT_ACTION_CODE" IS NOT NULL),
	CONSTRAINT SYS_C007761_RAAC_CT CHECK ("DESCRIPTION" IS NOT NULL),
	CONSTRAINT SYS_C007762_RAAC_CT CHECK ("EFFECTIVE_DATE" IS NOT NULL),
	CONSTRAINT SYS_C007763_RAAC_CT CHECK ("EXPIRY_DATE" IS NOT NULL),
	CONSTRAINT SYS_C007764_RAAC_CT CHECK ("UPDATE_TIMESTAMP" IS NOT NULL)
);
-- Other domain tables

CREATE TABLE THE.CUT_BLOCK_OPEN_ADMIN (
	CUT_BLOCK_OPEN_ADMIN_ID NUMBER(10,0),
	FOREST_FILE_ID VARCHAR2(10),
	TIMBER_MARK VARCHAR2(10),
	CUT_BLOCK_ID VARCHAR2(10),
	CUTTING_PERMIT_ID VARCHAR2(3),
	DISTURBANCE_GROSS_AREA NUMBER(11,4),
	DISTURBANCE_START_DATE DATE,
	DISTURBANCE_END_DATE DATE,
	OPENING_ID NUMBER(10,0),
	OPENING_GROSS_AREA NUMBER(11,4),
	PLANNED_HARVEST_DATE DATE,
	PLANNED_GROSS_BLOCK_AREA NUMBER(11,4),
	PLANNED_NET_BLOCK_AREA NUMBER(11,4),
	OPENING_PRIME_LICENCE_IND VARCHAR2(1),
	CB_SKEY NUMBER(10,0),
	REVISION_COUNT NUMBER(5,0),
	ENTRY_USERID VARCHAR2(30),
	ENTRY_TIMESTAMP DATE,
	UPDATE_USERID VARCHAR2(30),
	UPDATE_TIMESTAMP DATE,
	CONSTRAINT AVCON_1054232647_OPENI_000 CHECK (
OPENING_PRIME_LICENCE_IND IN ('N', 'Y')
),
	CONSTRAINT CBOA_PK PRIMARY KEY (CUT_BLOCK_OPEN_ADMIN_ID),
	CONSTRAINT SYS_C0021117_CBOA_CT CHECK ("CUT_BLOCK_OPEN_ADMIN_ID" IS NOT NULL),
	CONSTRAINT SYS_C0021119_CBOA_CT CHECK ("REVISION_COUNT" IS NOT NULL),
	CONSTRAINT SYS_C0021121_CBOA_CT CHECK ("ENTRY_USERID" IS NOT NULL),
	CONSTRAINT SYS_C0021123_CBOA_CT CHECK ("ENTRY_TIMESTAMP" IS NOT NULL),
	CONSTRAINT SYS_C0021124_CBOA_CT CHECK ("UPDATE_USERID" IS NOT NULL),
	CONSTRAINT SYS_C0021125_CBOA_CT CHECK ("UPDATE_TIMESTAMP" IS NOT NULL)
);
CREATE INDEX CBOA_CBLK_FK_I ON THE.CUT_BLOCK_OPEN_ADMIN (CUT_BLOCK_ID,TIMBER_MARK,FOREST_FILE_ID);
CREATE INDEX CBOA_CBSKEY_I ON THE.CUT_BLOCK_OPEN_ADMIN (CB_SKEY);
CREATE INDEX CBOA_FFID_MARK_BLK_I ON THE.CUT_BLOCK_OPEN_ADMIN (FOREST_FILE_ID,TIMBER_MARK,CUT_BLOCK_ID);
CREATE INDEX CBOA_MARK_BLK_I ON THE.CUT_BLOCK_OPEN_ADMIN (TIMBER_MARK,CUT_BLOCK_ID);
CREATE INDEX CBOA_O_FK_I ON THE.CUT_BLOCK_OPEN_ADMIN (OPENING_ID);

CREATE TABLE THE.OPENING_ATTACHMENT (
	OPENING_ATTACHMENT_FILE_ID NUMBER(10,0),
	OPENING_ID NUMBER(10,0),
	ATTACHMENT_NAME VARCHAR2(50),
	ATTACHMENT_DESCRIPTION VARCHAR2(120),
	MIME_TYPE_CODE VARCHAR2(3),
	ATTACHMENT_DATA BLOB,
	ENTRY_USERID VARCHAR2(30),
	ENTRY_TIMESTAMP DATE,
	UPDATE_USERID VARCHAR2(30),
	UPDATE_TIMESTAMP DATE,
	REVISION_COUNT NUMBER(5,0),
	OPENING_ATTACHMENT_GUID RAW(16) DEFAULT sys_guid() ,
	CONSTRAINT OPATT_GUID_UK UNIQUE (OPENING_ATTACHMENT_GUID),
	CONSTRAINT OPENING_ATTACHMENT_PK PRIMARY KEY (OPENING_ATTACHMENT_FILE_ID),
	CONSTRAINT SYS_C00170771_OPATT_CT CHECK ("OPENING_ATTACHMENT_GUID" IS NOT NULL),
	CONSTRAINT SYS_C0040027_OPATT_CT CHECK ("OPENING_ATTACHMENT_FILE_ID" IS NOT NULL),
	CONSTRAINT SYS_C0040028_OPATT_CT CHECK ("OPENING_ID" IS NOT NULL),
	CONSTRAINT SYS_C0040029_OPATT_CT CHECK ("ATTACHMENT_NAME" IS NOT NULL),
	CONSTRAINT SYS_C0040030_OPATT_CT CHECK ("ATTACHMENT_DATA" IS NOT NULL),
	CONSTRAINT SYS_C0040031_OPATT_CT CHECK ("ENTRY_USERID" IS NOT NULL),
	CONSTRAINT SYS_C0040032_OPATT_CT CHECK ("ENTRY_TIMESTAMP" IS NOT NULL),
	CONSTRAINT SYS_C0040033_OPATT_CT CHECK ("UPDATE_USERID" IS NOT NULL),
	CONSTRAINT SYS_C0040034_OPATT_CT CHECK ("UPDATE_TIMESTAMP" IS NOT NULL),
	CONSTRAINT SYS_C0040035_OPATT_CT CHECK ("REVISION_COUNT" IS NOT NULL)
);
CREATE INDEX OA_MTC_FK_I ON THE.OPENING_ATTACHMENT (MIME_TYPE_CODE);
CREATE INDEX OA_O_FK_I ON THE.OPENING_ATTACHMENT (OPENING_ID);

CREATE TABLE THE.OPENING (
	OPENING_ID NUMBER(10,0),
	GEO_DISTRICT_NO NUMBER(10,0),
	ADMIN_DISTRICT_NO NUMBER(10,0),
	MAPSHEET_GRID VARCHAR2(3),
	MAPSHEET_LETTER VARCHAR2(1),
	MAPSHEET_SQUARE VARCHAR2(3),
	MAPSHEET_QUAD VARCHAR2(1),
	MAPSHEET_SUB_QUAD VARCHAR2(1),
	OPENING_NUMBER VARCHAR2(4),
	OPENING_LOCN_NAME VARCHAR2(30),
	OPEN_CATEGORY_CODE VARCHAR2(7),
	LICENSEE_OPENING_ID VARCHAR2(30),
	TSB_NUMBER_CODE VARCHAR2(3),
	OPENING_STATUS_CODE VARCHAR2(3),
	ORG_UNIT_NO NUMBER(10,0),
	DIST_ADMIN_ZONE VARCHAR2(2),
	MAX_ALLOW_PERMNT_ACCESS_PCT NUMBER(3,1),
	PREV_AGE_CLASS_CODE VARCHAR2(1),
	PREV_SITE_INDEX NUMBER(5,0),
	PREV_SITE_INDEX_SOURCE_CODE VARCHAR2(1),
	PREV_HEIGHT_CLASS_CODE VARCHAR2(1),
	PREV_SITE_CLASS_CODE VARCHAR2(1),
	PREV_STOCKING_CLASS_CODE VARCHAR2(1),
	PREV_STOCKING_STATUS_CODE VARCHAR2(3),
	PREV_TREE_SPP1_CODE VARCHAR2(8),
	PREV_TREE_SPP2_CODE VARCHAR2(8),
	APP_ENT_BY_USERID VARCHAR2(30),
	APPROVE_DATE DATE,
	AMENDMENT_IND VARCHAR2(1),
	RESULTS_SUBMISSION_ID NUMBER(10,0),
	ENTRY_USERID VARCHAR2(30),
	ENTRY_TIMESTAMP DATE,
	UPDATE_USERID VARCHAR2(30),
	UPDATE_TIMESTAMP DATE,
	REVISION_COUNT NUMBER(5,0),
	CONSTRAINT O_PK PRIMARY KEY (OPENING_ID),
	CONSTRAINT SYS_C0039363_O_CT CHECK ("OPENING_ID" IS NOT NULL),
	CONSTRAINT SYS_C0039364_O_CT CHECK ("GEO_DISTRICT_NO" IS NOT NULL),
	CONSTRAINT SYS_C0039365_O_CT CHECK ("ADMIN_DISTRICT_NO" IS NOT NULL),
	CONSTRAINT SYS_C0039366_O_CT CHECK ("OPEN_CATEGORY_CODE" IS NOT NULL),
	CONSTRAINT SYS_C0039367_O_CT CHECK ("OPENING_STATUS_CODE" IS NOT NULL),
	CONSTRAINT SYS_C0039368_O_CT CHECK ("ENTRY_USERID" IS NOT NULL),
	CONSTRAINT SYS_C0039369_O_CT CHECK ("ENTRY_TIMESTAMP" IS NOT NULL),
	CONSTRAINT SYS_C0039370_O_CT CHECK ("UPDATE_USERID" IS NOT NULL),
	CONSTRAINT SYS_C0039371_O_CT CHECK ("UPDATE_TIMESTAMP" IS NOT NULL),
	CONSTRAINT SYS_C0039372_O_CT CHECK ("REVISION_COUNT" IS NOT NULL)
);
CREATE INDEX O_LICENSEE_ID_I ON THE.OPENING (LICENSEE_OPENING_ID);
CREATE INDEX O_OPENING_NUMBER_I ON THE.OPENING (MAPSHEET_GRID,MAPSHEET_LETTER,MAPSHEET_QUAD,MAPSHEET_SQUARE,MAPSHEET_SUB_QUAD,OPENING_NUMBER);
CREATE INDEX O_OPEN_CATEGORY_CODE_I ON THE.OPENING (OPEN_CATEGORY_CODE);
CREATE INDEX O_OU_FK_I ON THE.OPENING (ADMIN_DISTRICT_NO);
CREATE INDEX O_STATUS_I ON THE.OPENING (OPENING_STATUS_CODE);

CREATE TABLE THE.ORG_UNIT (
	ORG_UNIT_NO NUMBER(10,0),
	ORG_UNIT_CODE VARCHAR2(6),
	ORG_UNIT_NAME VARCHAR2(100),
	LOCATION_CODE VARCHAR2(3),
	AREA_CODE VARCHAR2(3),
	TELEPHONE_NO VARCHAR2(7),
	ORG_LEVEL_CODE VARCHAR2(1),
	OFFICE_NAME_CODE VARCHAR2(2),
	ROLLUP_REGION_NO NUMBER(10,0),
	ROLLUP_REGION_CODE VARCHAR2(6),
	ROLLUP_DIST_NO NUMBER(10,0),
	ROLLUP_DIST_CODE VARCHAR2(6),
	EFFECTIVE_DATE DATE,
	EXPIRY_DATE DATE,
	UPDATE_TIMESTAMP DATE,
	CONSTRAINT ORG_UNIT_PK PRIMARY KEY (ORG_UNIT_NO),
	CONSTRAINT SYS_C0035144_OU_CT CHECK ("ORG_UNIT_NO" IS NOT NULL),
	CONSTRAINT SYS_C0035146_OU_CT CHECK ("ORG_UNIT_CODE" IS NOT NULL),
	CONSTRAINT SYS_C0035148_OU_CT CHECK ("ORG_UNIT_NAME" IS NOT NULL),
	CONSTRAINT SYS_C0035150_OU_CT CHECK ("LOCATION_CODE" IS NOT NULL),
	CONSTRAINT SYS_C0035152_OU_CT CHECK ("AREA_CODE" IS NOT NULL),
	CONSTRAINT SYS_C0035154_OU_CT CHECK ("TELEPHONE_NO" IS NOT NULL),
	CONSTRAINT SYS_C0035156_OU_CT CHECK ("ORG_LEVEL_CODE" IS NOT NULL),
	CONSTRAINT SYS_C0035158_OU_CT CHECK ("OFFICE_NAME_CODE" IS NOT NULL),
	CONSTRAINT SYS_C0035160_OU_CT CHECK ("ROLLUP_REGION_NO" IS NOT NULL),
	CONSTRAINT SYS_C0035162_OU_CT CHECK ("ROLLUP_REGION_CODE" IS NOT NULL),
	CONSTRAINT SYS_C0035164_OU_CT CHECK ("ROLLUP_DIST_NO" IS NOT NULL),
	CONSTRAINT SYS_C0035166_OU_CT CHECK ("ROLLUP_DIST_CODE" IS NOT NULL),
	CONSTRAINT SYS_C0035168_OU_CT CHECK ("EFFECTIVE_DATE" IS NOT NULL),
	CONSTRAINT SYS_C0035169_OU_CT CHECK ("EXPIRY_DATE" IS NOT NULL)
);
CREATE UNIQUE INDEX "I2$_ORG_UNIT" ON THE.ORG_UNIT (ORG_UNIT_CODE,ORG_UNIT_NO);
CREATE UNIQUE INDEX "I3$_ORG_UNIT" ON THE.ORG_UNIT (ORG_UNIT_CODE);
CREATE UNIQUE INDEX "I4$_ORG_UNIT" ON THE.ORG_UNIT (ORG_UNIT_NO,ORG_UNIT_CODE,ORG_UNIT_NAME,LOCATION_CODE,TELEPHONE_NO,ORG_LEVEL_CODE,OFFICE_NAME_CODE);
CREATE INDEX "I5$_ORG_UNIT" ON THE.ORG_UNIT (ROLLUP_DIST_CODE,ROLLUP_REGION_CODE);
CREATE INDEX "I6$_ORG_UNIT" ON THE.ORG_UNIT (ROLLUP_REGION_NO,ROLLUP_DIST_NO);
CREATE INDEX "I7$_ORG_UNIT" ON THE.ORG_UNIT (ROLLUP_REGION_CODE,ROLLUP_DIST_CODE);
CREATE UNIQUE INDEX "I8$_ORG_UNIT" ON THE.ORG_UNIT (ORG_UNIT_NO,ORG_UNIT_CODE);
CREATE UNIQUE INDEX "I9$_ORG_UNIT" ON THE.ORG_UNIT (ORG_UNIT_CODE,ORG_LEVEL_CODE,ORG_UNIT_NO,ORG_UNIT_NAME);

CREATE TABLE THE.RESULTS_ELECTRONIC_SUBMISSION (
	RESULTS_SUBMISSION_ID NUMBER(10,0),
	SUBMISSION_TIMESTAMP DATE,
	SUBMITTED_BY VARCHAR2(30),
	CLIENT_NUMBER VARCHAR2(8),
	CLIENT_LOCN_CODE VARCHAR2(2),
	ORG_UNIT_NO NUMBER(10,0),
	USER_FILENAME VARCHAR2(50),
	USER_REFERENCE VARCHAR2(240),
	ENTRY_USERID VARCHAR2(30),
	ENTRY_TIMESTAMP DATE,
	UPDATE_USERID VARCHAR2(30),
	UPDATE_TIMESTAMP DATE,
	REVISION_COUNT NUMBER(5,0),
	CONSTRAINT RES_PK PRIMARY KEY (RESULTS_SUBMISSION_ID),
	CONSTRAINT SYS_C008001_RES_CT CHECK ("RESULTS_SUBMISSION_ID" IS NOT NULL),
	CONSTRAINT SYS_C008002_RES_CT CHECK ("SUBMISSION_TIMESTAMP" IS NOT NULL),
	CONSTRAINT SYS_C008003_RES_CT CHECK ("SUBMITTED_BY" IS NOT NULL),
	CONSTRAINT SYS_C008004_RES_CT CHECK ("ENTRY_USERID" IS NOT NULL),
	CONSTRAINT SYS_C008005_RES_CT CHECK ("ENTRY_TIMESTAMP" IS NOT NULL),
	CONSTRAINT SYS_C008006_RES_CT CHECK ("UPDATE_USERID" IS NOT NULL),
	CONSTRAINT SYS_C008007_RES_CT CHECK ("UPDATE_TIMESTAMP" IS NOT NULL),
	CONSTRAINT SYS_C008008_RES_CT CHECK ("REVISION_COUNT" IS NOT NULL)
);

CREATE TABLE THE.SILV_ADMIN_ZONE (
	DIST_ADMIN_ZONE VARCHAR2(2),
	ORG_UNIT_NO NUMBER(10,0),
	ADMIN_ZONE_DESC VARCHAR2(50),
	REVISION_COUNT NUMBER(5,0),
	CONSTRAINT SILV_ADMIN_ZONE_PK PRIMARY KEY (ORG_UNIT_NO,DIST_ADMIN_ZONE),
	CONSTRAINT SYS_C007705_SAZ_CT CHECK ("DIST_ADMIN_ZONE" IS NOT NULL),
	CONSTRAINT SYS_C007706_SAZ_CT CHECK ("ORG_UNIT_NO" IS NOT NULL),
	CONSTRAINT SYS_C007707_SAZ_CT CHECK ("ADMIN_ZONE_DESC" IS NOT NULL),
	CONSTRAINT SYS_C007708_SAZ_CT CHECK ("REVISION_COUNT" IS NOT NULL),
	CONSTRAINT SAZ_OU_FK FOREIGN KEY (ORG_UNIT_NO) REFERENCES THE.ORG_UNIT(ORG_UNIT_NO)
);

CREATE TABLE THE.OPENING_AMENDMENT_HISTORY (
	OPENING_ID NUMBER(10,0),
	OPENING_AMENDMENT_NUMBER NUMBER(5,0),
	AMENDMENT_USERID VARCHAR2(30),
	AMENDMENT_DATE DATE,
	SUBMITTED_BY_USERID VARCHAR2(30),
	SUBMITTED_DATE DATE,
	APP_ENT_BY_USERID VARCHAR2(30),
	APPROVE_DATE DATE,
	ENTRY_USERID VARCHAR2(30),
	ENTRY_TIMESTAMP DATE,
	UPDATE_USERID VARCHAR2(30),
	UPDATE_TIMESTAMP DATE,
	REVISION_COUNT NUMBER(5,0),
	CONSTRAINT OAH_PK PRIMARY KEY (OPENING_ID,OPENING_AMENDMENT_NUMBER),
	CONSTRAINT SYS_C0026176_OAH_CT CHECK ("OPENING_ID" IS NOT NULL),
	CONSTRAINT SYS_C0026178_OAH_CT CHECK ("OPENING_AMENDMENT_NUMBER" IS NOT NULL),
	CONSTRAINT SYS_C0026181_OAH_CT CHECK ("AMENDMENT_USERID" IS NOT NULL),
	CONSTRAINT SYS_C0026184_OAH_CT CHECK ("AMENDMENT_DATE" IS NOT NULL),
	CONSTRAINT SYS_C0026187_OAH_CT CHECK ("ENTRY_USERID" IS NOT NULL),
	CONSTRAINT SYS_C0026190_OAH_CT CHECK ("ENTRY_TIMESTAMP" IS NOT NULL),
	CONSTRAINT SYS_C0026193_OAH_CT CHECK ("UPDATE_USERID" IS NOT NULL),
	CONSTRAINT SYS_C0026196_OAH_CT CHECK ("UPDATE_TIMESTAMP" IS NOT NULL),
	CONSTRAINT SYS_C0026199_OAH_CT CHECK ("REVISION_COUNT" IS NOT NULL)
);

CREATE TABLE THE.STOCKING_EVENT_HISTORY (
	STOCKING_EVENT_HISTORY_ID NUMBER(10,0),
	OPENING_ID NUMBER(10,0),
	OPENING_AMENDMENT_ID NUMBER(10,0),
	OPENING_AMENDMENT_NUMBER NUMBER(5,0),
	RESULTS_AUDIT_ACTION_CODE VARCHAR2(3),
	SUBMITTED_USERID VARCHAR2(30),
	RESULTS_SUBMISSION_ID NUMBER(10,0),
	AMEND_EVENT_TIMESTAMP DATE,
	ENTRY_USERID VARCHAR2(30),
	ENTRY_TIMESTAMP DATE,
	REVISION_COUNT NUMBER(5,0),
	CONSTRAINT SEH_PK PRIMARY KEY (STOCKING_EVENT_HISTORY_ID),
	CONSTRAINT SYS_C0016112_SEH_CT CHECK ("STOCKING_EVENT_HISTORY_ID" IS NOT NULL),
	CONSTRAINT SYS_C0016113_SEH_CT CHECK ("OPENING_ID" IS NOT NULL),
	CONSTRAINT SYS_C0016114_SEH_CT CHECK ("RESULTS_AUDIT_ACTION_CODE" IS NOT NULL),
	CONSTRAINT SYS_C0016115_SEH_CT CHECK ("AMEND_EVENT_TIMESTAMP" IS NOT NULL),
	CONSTRAINT SYS_C0016116_SEH_CT CHECK ("ENTRY_USERID" IS NOT NULL),
	CONSTRAINT SYS_C0016117_SEH_CT CHECK ("ENTRY_TIMESTAMP" IS NOT NULL),
	CONSTRAINT SYS_C0016118_SEH_CT CHECK ("REVISION_COUNT" IS NOT NULL)
);
CREATE INDEX SEH_OAH_FK_I ON THE.STOCKING_EVENT_HISTORY (OPENING_AMENDMENT_ID,OPENING_AMENDMENT_NUMBER);
CREATE INDEX SEH_O_FK_I ON THE.STOCKING_EVENT_HISTORY (OPENING_ID);

CREATE TABLE THE.RESULTS_AUDIT_EVENT (
	RESULTS_AUDIT_EVENT_ID NUMBER(10,0),
	OPENING_ID NUMBER(10,0),
	STANDARDS_REGIME_ID NUMBER(10,0),
	SILVICULTURE_PROJECT_ID NUMBER(10,0),
	RESULTS_AUDIT_ACTION_CODE VARCHAR2(3),
	ACTION_DATE DATE,
	DESCRIPTION VARCHAR2(2000),
	USER_ID VARCHAR2(30),
	EMAIL_SENT_IND VARCHAR2(1),
	XML_SUBMISSION_ID NUMBER(10,0),
	OPENING_AMENDMENT_NUMBER NUMBER(5,0),
	ENTRY_USERID VARCHAR2(30),
	ENTRY_TIMESTAMP DATE,
	CONSTRAINT RAE_PK PRIMARY KEY (RESULTS_AUDIT_EVENT_ID),
	CONSTRAINT SYS_C0026137_RAE_CT CHECK ("RESULTS_AUDIT_EVENT_ID" IS NOT NULL),
	CONSTRAINT SYS_C0026138_RAE_CT CHECK ("RESULTS_AUDIT_ACTION_CODE" IS NOT NULL),
	CONSTRAINT SYS_C0026139_RAE_CT CHECK ("ACTION_DATE" IS NOT NULL),
	CONSTRAINT SYS_C0026140_RAE_CT CHECK ("ENTRY_USERID" IS NOT NULL),
	CONSTRAINT SYS_C0026141_RAE_CT CHECK ("ENTRY_TIMESTAMP" IS NOT NULL),
	CONSTRAINT RAE_RAAC_FK FOREIGN KEY (RESULTS_AUDIT_ACTION_CODE) REFERENCES THE.RESULTS_AUDIT_ACTION_CODE(RESULTS_AUDIT_ACTION_CODE)
);

CREATE TABLE THE.ACTIVITY_TREATMENT_UNIT (
	ACTIVITY_TREATMENT_UNIT_ID NUMBER(10,0),
	ACTIVITY_TU_SEQ_NO NUMBER(5,0),
	ORG_UNIT_NO NUMBER(10,0),
	OPENING_ID NUMBER(10,0),
	SILVICULTURE_PROJECT_ID NUMBER(10,0),
	PROJECT_UNIT_ID NUMBER(6,0),
	SILV_BASE_CODE VARCHAR2(2),
	SILV_TECHNIQUE_CODE VARCHAR2(2),
	SILV_METHOD_CODE VARCHAR2(5),
	SILV_OBJECTIVE_CODE_1 VARCHAR2(3),
	SILV_OBJECTIVE_CODE_2 VARCHAR2(3),
	SILV_OBJECTIVE_CODE_3 VARCHAR2(3),
	SILV_FUND_SRCE_CODE VARCHAR2(3),
	SILV_ACTIVITY_MEASUREMENT_CODE VARCHAR2(3),
	ACTIVITY_LICENSEE_ID VARCHAR2(30),
	TREATMENT_AMOUNT NUMBER(11,1),
	ACTUAL_TREATMENT_COST NUMBER(9,0),
	ACT_PLANTED_NO NUMBER(10,0),
	PLAN_SILV_TECHNIQUE_CODE VARCHAR2(2),
	PLAN_SILV_METHOD_CODE VARCHAR2(5),
	PLAN_SILV_FUND_SRCE_CODE VARCHAR2(3),
	PLANNED_DATE DATE,
	PLANNED_TREATMENT_AMOUNT NUMBER(11,1),
	PLANNED_TREATMENT_COST NUMBER(9,0),
	PLAN_SILV_OBJECTIVE_CODE_1 VARCHAR2(3),
	PLAN_SILV_OBJECTIVE_CODE_2 VARCHAR2(3),
	PLAN_SILV_OBJECTIVE_CODE_3 VARCHAR2(3),
	TARGET_PREPARED_SPOTS NUMBER(4,0),
	PRUNING_MIN_CROWN_PCT NUMBER(3,0),
	PRUNE_HEIGHT NUMBER(3,1),
	STEMS_TO_PRUNE NUMBER(4,0),
	MIN_ACCEPTABLE_DENSITY NUMBER(4,0),
	TOTAL_STEMS_PER_HA NUMBER(4,0),
	INTER_TREE_TARGET_DISTANCE NUMBER(3,1),
	INTER_TREE_VARIATION NUMBER(3,1),
	INTER_TREE_MIN_DISTANCE NUMBER(3,1),
	MAX_TREES_PER_PLOT NUMBER(2,0),
	MAX_TREES_PER_HA NUMBER(4,0),
	SURVEY_PLANNED_NUM_PLOTS NUMBER(4,0),
	SURVEY_ACTUAL_NUM_PLOTS NUMBER(4,0),
	SURVEY_MIN_PLOTS_PER_STRATUM NUMBER(10,0),
	SILV_TREE_SPECIES_CODE VARCHAR2(8),
	ATU_START_DATE DATE,
	ATU_COMPLETION_DATE DATE,
	RESULTS_IND VARCHAR2(1),
	UNIT_BID_PRICE NUMBER(9,2),
	FIA_PROJECT_ID VARCHAR2(10),
	RESULTS_SUBMISSION_ID NUMBER(10,0),
	DISTURBANCE_CODE VARCHAR2(3),
	SILV_SYSTEM_CODE VARCHAR2(5),
	SILV_SYSTEM_VARIANT_CODE VARCHAR2(3),
	SILV_CUT_PHASE_CODE VARCHAR2(5),
	CUT_BLOCK_OPEN_ADMIN_ID NUMBER(10,0),
	DISTURBANCE_COMPLETED_IND VARCHAR2(1),
	ENTRY_USERID VARCHAR2(30),
	ENTRY_TIMESTAMP DATE,
	UPDATE_USERID VARCHAR2(30),
	UPDATE_TIMESTAMP DATE,
	REVISION_COUNT NUMBER(5,0),
	CONSTRAINT ATU_PK PRIMARY KEY (ACTIVITY_TREATMENT_UNIT_ID),
	CONSTRAINT SYS_C0039733_ATU_CT CHECK ("ACTIVITY_TREATMENT_UNIT_ID" IS NOT NULL),
	CONSTRAINT SYS_C0039734_ATU_CT CHECK ("ACTIVITY_TU_SEQ_NO" IS NOT NULL),
	CONSTRAINT SYS_C0039735_ATU_CT CHECK ("ORG_UNIT_NO" IS NOT NULL),
	CONSTRAINT SYS_C0039736_ATU_CT CHECK ("OPENING_ID" IS NOT NULL),
	CONSTRAINT SYS_C0039737_ATU_CT CHECK ("SILV_BASE_CODE" IS NOT NULL),
	CONSTRAINT SYS_C0039738_ATU_CT CHECK ("SILV_ACTIVITY_MEASUREMENT_CODE" IS NOT NULL),
	CONSTRAINT SYS_C0039739_ATU_CT CHECK ("ENTRY_USERID" IS NOT NULL),
	CONSTRAINT SYS_C0039740_ATU_CT CHECK ("ENTRY_TIMESTAMP" IS NOT NULL),
	CONSTRAINT SYS_C0039741_ATU_CT CHECK ("UPDATE_USERID" IS NOT NULL),
	CONSTRAINT SYS_C0039742_ATU_CT CHECK ("UPDATE_TIMESTAMP" IS NOT NULL),
	CONSTRAINT SYS_C0039743_ATU_CT CHECK ("REVISION_COUNT" IS NOT NULL)
);
CREATE INDEX ATU_ATU_I ON THE.ACTIVITY_TREATMENT_UNIT (OPENING_ID,SILV_BASE_CODE,SILV_METHOD_CODE,SILV_TECHNIQUE_CODE,TREATMENT_AMOUNT);
CREATE INDEX ATU_BASE_I ON THE.ACTIVITY_TREATMENT_UNIT (SILV_BASE_CODE,RESULTS_IND);
CREATE INDEX ATU_CBOA_FK_I ON THE.ACTIVITY_TREATMENT_UNIT (CUT_BLOCK_OPEN_ADMIN_ID);
CREATE INDEX ATU_LICENSEE_I ON THE.ACTIVITY_TREATMENT_UNIT (ACTIVITY_LICENSEE_ID);
CREATE INDEX ATU_O_FK_I ON THE.ACTIVITY_TREATMENT_UNIT (OPENING_ID);
CREATE INDEX ATU_PROJECT_I ON THE.ACTIVITY_TREATMENT_UNIT (FIA_PROJECT_ID,RESULTS_IND);
CREATE INDEX ATU_PROJ_FK_I ON THE.ACTIVITY_TREATMENT_UNIT (SILVICULTURE_PROJECT_ID);

CREATE TABLE THE.SILV_RELIEF_APPLICATION (
	SILV_RELIEF_APPLICATION_ID NUMBER(10,0),
	SILV_RELIEF_APPLICATION_NO NUMBER(3,0),
	ACTIVITY_TREATMENT_UNIT_ID NUMBER(10,0),
	SILV_RELIEF_APPL_STATUS_CODE VARCHAR2(3),
	PRE_EVENT_FOREST_COVER_DATE DATE,
	POST_EVENT_FOREST_COVER_DATE DATE,
	AMENDMENT_OPENING_ID NUMBER(10,0),
	OPENING_AMENDMENT_NUMBER NUMBER(5,0),
	OBLIGATION_RELIEF_IND VARCHAR2(1),
	OBLIGATION_MET_IND VARCHAR2(1),
	CAUSE_DAMAGE_IND VARCHAR2(1),
	OFFICIALLY_INDUCED_ERROR_IND VARCHAR2(1),
	DUE_DILIGENCE_IND VARCHAR2(1),
	AUTHORIZATION_CHECKED_IND VARCHAR2(1),
	SUBMITTED_DATE DATE,
	SUBMITTED_BY_USERID VARCHAR2(30),
	APPROVED_DATE DATE,
	APPROVED_BY_USERID VARCHAR2(30),
	REJECT_COMMENT VARCHAR2(2000),
	ENTRY_USERID VARCHAR2(30),
	ENTRY_TIMESTAMP DATE,
	UPDATE_USERID VARCHAR2(30),
	UPDATE_TIMESTAMP DATE,
	REVISION_COUNT NUMBER(5,0),
	CONSTRAINT SRA_PK PRIMARY KEY (SILV_RELIEF_APPLICATION_ID),
	CONSTRAINT SYS_C0030824_SRA_CT CHECK ("SILV_RELIEF_APPLICATION_ID" IS NOT NULL),
	CONSTRAINT SYS_C0030825_SRA_CT CHECK ("SILV_RELIEF_APPLICATION_NO" IS NOT NULL),
	CONSTRAINT SYS_C0030826_SRA_CT CHECK ("ACTIVITY_TREATMENT_UNIT_ID" IS NOT NULL),
	CONSTRAINT SYS_C0030827_SRA_CT CHECK ("SILV_RELIEF_APPL_STATUS_CODE" IS NOT NULL),
	CONSTRAINT SYS_C0030828_SRA_CT CHECK ("PRE_EVENT_FOREST_COVER_DATE" IS NOT NULL),
	CONSTRAINT SYS_C0030829_SRA_CT CHECK ("POST_EVENT_FOREST_COVER_DATE" IS NOT NULL),
	CONSTRAINT SYS_C0030830_SRA_CT CHECK ("OBLIGATION_RELIEF_IND" IS NOT NULL),
	CONSTRAINT SYS_C0030831_SRA_CT CHECK ("OBLIGATION_MET_IND" IS NOT NULL),
	CONSTRAINT SYS_C0030832_SRA_CT CHECK ("CAUSE_DAMAGE_IND" IS NOT NULL),
	CONSTRAINT SYS_C0030833_SRA_CT CHECK ("OFFICIALLY_INDUCED_ERROR_IND" IS NOT NULL),
	CONSTRAINT SYS_C0030834_SRA_CT CHECK ("DUE_DILIGENCE_IND" IS NOT NULL),
	CONSTRAINT SYS_C0030835_SRA_CT CHECK ("AUTHORIZATION_CHECKED_IND" IS NOT NULL),
	CONSTRAINT SYS_C0030836_SRA_CT CHECK ("ENTRY_USERID" IS NOT NULL),
	CONSTRAINT SYS_C0030837_SRA_CT CHECK ("ENTRY_TIMESTAMP" IS NOT NULL),
	CONSTRAINT SYS_C0030838_SRA_CT CHECK ("UPDATE_USERID" IS NOT NULL),
	CONSTRAINT SYS_C0030839_SRA_CT CHECK ("UPDATE_TIMESTAMP" IS NOT NULL),
	CONSTRAINT SYS_C0030840_SRA_CT CHECK ("REVISION_COUNT" IS NOT NULL)
);
CREATE INDEX SRA_ATU_FK_I ON THE.SILV_RELIEF_APPLICATION (ACTIVITY_TREATMENT_UNIT_ID);
CREATE INDEX SRA_OAH_FK_I ON THE.SILV_RELIEF_APPLICATION (AMENDMENT_OPENING_ID,OPENING_AMENDMENT_NUMBER);
CREATE INDEX SRA_SRASCD_FK_I ON THE.SILV_RELIEF_APPLICATION (SILV_RELIEF_APPL_STATUS_CODE);

CREATE TABLE THE.STOCKING_STANDARD_UNIT (
	STOCKING_STANDARD_UNIT_ID NUMBER(10,0),
	OPENING_ID NUMBER(10,0),
	STANDARDS_UNIT_ID VARCHAR2(4),
	STANDARDS_REGIME_ID NUMBER(10,0),
	NET_AREA NUMBER(7,1),
	MAX_ALLOW_SOIL_DISTURBANCE_PCT NUMBER(3,1),
	VARIANCE_IND VARCHAR2(1),
	ENTRY_USERID VARCHAR2(30),
	ENTRY_TIMESTAMP DATE,
	UPDATE_USERID VARCHAR2(30),
	UPDATE_TIMESTAMP DATE,
	REVISION_COUNT NUMBER(5,0),
	CONSTRAINT SSU_PK PRIMARY KEY (STOCKING_STANDARD_UNIT_ID),
	CONSTRAINT SYS_C0030763_SSU_CT CHECK ("STOCKING_STANDARD_UNIT_ID" IS NOT NULL),
	CONSTRAINT SYS_C0030764_SSU_CT CHECK ("OPENING_ID" IS NOT NULL),
	CONSTRAINT SYS_C0030765_SSU_CT CHECK ("STANDARDS_UNIT_ID" IS NOT NULL),
	CONSTRAINT SYS_C0030767_SSU_CT CHECK ("NET_AREA" IS NOT NULL),
	CONSTRAINT SYS_C0030769_SSU_CT CHECK ("ENTRY_USERID" IS NOT NULL),
	CONSTRAINT SYS_C0030771_SSU_CT CHECK ("ENTRY_TIMESTAMP" IS NOT NULL),
	CONSTRAINT SYS_C0030773_SSU_CT CHECK ("UPDATE_USERID" IS NOT NULL),
	CONSTRAINT SYS_C0030775_SSU_CT CHECK ("UPDATE_TIMESTAMP" IS NOT NULL),
	CONSTRAINT SYS_C0030776_SSU_CT CHECK ("REVISION_COUNT" IS NOT NULL)
);
CREATE INDEX SSU_O_FK_I ON THE.STOCKING_STANDARD_UNIT (OPENING_ID);
CREATE INDEX SSU_SR_FK_I ON THE.STOCKING_STANDARD_UNIT (STANDARDS_REGIME_ID);
CREATE INDEX SSU_SU_I ON THE.STOCKING_STANDARD_UNIT (OPENING_ID,STANDARDS_UNIT_ID);

CREATE TABLE THE.STOCKING_MILESTONE (
	STOCKING_STANDARD_UNIT_ID NUMBER(10,0),
	SILV_MILESTONE_TYPE_CODE VARCHAR2(3),
	RESULTS_SUBMISSION_ID NUMBER(10,0),
	DECLARED_DATE DATE,
	DECLARED_USERID VARCHAR2(30),
	DECLARE_IND VARCHAR2(1),
	DECLARATION_SUBMITTED_DATE DATE,
	EARLY_OFFSET_YEARS NUMBER(2,0),
	LATE_OFFSET_YEARS NUMBER(2,0),
	DUE_EARLY_DATE DATE,
	DUE_LATE_DATE DATE,
	ENTRY_USERID VARCHAR2(30),
	ENTRY_TIMESTAMP DATE,
	UPDATE_USERID VARCHAR2(30),
	UPDATE_TIMESTAMP DATE,
	REVISION_COUNT NUMBER(5,0),
	EXTENT_FEASIBLE_DECLARED_IND VARCHAR2(1) DEFAULT 'N' ,
	CONSTRAINT SM_PK PRIMARY KEY (STOCKING_STANDARD_UNIT_ID,SILV_MILESTONE_TYPE_CODE),
	CONSTRAINT SYS_C00140760_SM_CT CHECK ("EXTENT_FEASIBLE_DECLARED_IND" IS NOT NULL),
	CONSTRAINT SYS_C0026482_SM_CT CHECK ("STOCKING_STANDARD_UNIT_ID" IS NOT NULL),
	CONSTRAINT SYS_C0026483_SM_CT CHECK ("SILV_MILESTONE_TYPE_CODE" IS NOT NULL),
	CONSTRAINT SYS_C0026484_SM_CT CHECK ("ENTRY_USERID" IS NOT NULL),
	CONSTRAINT SYS_C0026485_SM_CT CHECK ("ENTRY_TIMESTAMP" IS NOT NULL),
	CONSTRAINT SYS_C0026486_SM_CT CHECK ("UPDATE_USERID" IS NOT NULL),
	CONSTRAINT SYS_C0026487_SM_CT CHECK ("UPDATE_TIMESTAMP" IS NOT NULL),
	CONSTRAINT SYS_C0026488_SM_CT CHECK ("REVISION_COUNT" IS NOT NULL)
);
CREATE INDEX SM_DED_I ON THE.STOCKING_MILESTONE (DUE_EARLY_DATE);
CREATE INDEX SM_DLD_I ON THE.STOCKING_MILESTONE (DUE_LATE_DATE);

-- Foreign keys references. Some are commented due to the table not being onboarded yet or due to the table belonging to another application

--- There is some FK references that are not properly identified in the model
--- ALTER TABLE THE.CUT_BLOCK_OPEN_ADMIN ADD CONSTRAINT CBOA_CB_FK FOREIGN KEY (CB_SKEY) REFERENCES <?>();
ALTER TABLE THE.CUT_BLOCK_OPEN_ADMIN ADD CONSTRAINT CBOA_O_FK FOREIGN KEY (OPENING_ID) REFERENCES THE.OPENING(OPENING_ID);

--- There is some FK references that are not properly identified in the model
--- ALTER TABLE THE.OPENING_ATTACHMENT ADD CONSTRAINT OA_MTC_FK FOREIGN KEY (MIME_TYPE_CODE) REFERENCES <?>();
ALTER TABLE THE.OPENING_ATTACHMENT ADD CONSTRAINT OA_O_FK FOREIGN KEY (OPENING_ID) REFERENCES THE.OPENING(OPENING_ID);

ALTER TABLE THE.OPENING ADD CONSTRAINT O_ACC_FK FOREIGN KEY (PREV_AGE_CLASS_CODE) REFERENCES THE.AGE_CLASS_CODE(AGE_CLASS_CODE);
ALTER TABLE THE.OPENING ADD CONSTRAINT O_HCC_FK FOREIGN KEY (PREV_HEIGHT_CLASS_CODE) REFERENCES THE.HEIGHT_CLASS_CODE(HEIGHT_CLASS_CODE);
ALTER TABLE THE.OPENING ADD CONSTRAINT O_OCC_FK FOREIGN KEY (OPEN_CATEGORY_CODE) REFERENCES THE.OPEN_CATEGORY_CODE(OPEN_CATEGORY_CODE);
ALTER TABLE THE.OPENING ADD CONSTRAINT O_OSC_FK FOREIGN KEY (OPENING_STATUS_CODE) REFERENCES THE.OPENING_STATUS_CODE(OPENING_STATUS_CODE);
ALTER TABLE THE.OPENING ADD CONSTRAINT O_OU_FK FOREIGN KEY (ADMIN_DISTRICT_NO) REFERENCES THE.ORG_UNIT(ORG_UNIT_NO);
ALTER TABLE THE.OPENING ADD CONSTRAINT O_OU_RESIDES_WITHIN_FK FOREIGN KEY (GEO_DISTRICT_NO) REFERENCES THE.ORG_UNIT(ORG_UNIT_NO);
ALTER TABLE THE.OPENING ADD CONSTRAINT O_RES_FK FOREIGN KEY (RESULTS_SUBMISSION_ID) REFERENCES THE.RESULTS_ELECTRONIC_SUBMISSION(RESULTS_SUBMISSION_ID);
ALTER TABLE THE.OPENING ADD CONSTRAINT O_SAZ_FK FOREIGN KEY (ORG_UNIT_NO,DIST_ADMIN_ZONE) REFERENCES THE.SILV_ADMIN_ZONE(ORG_UNIT_NO,DIST_ADMIN_ZONE);
ALTER TABLE THE.OPENING ADD CONSTRAINT O_SCC1_FK FOREIGN KEY (PREV_STOCKING_CLASS_CODE) REFERENCES THE.STOCKING_CLASS_CODE(STOCKING_CLASS_CODE);
ALTER TABLE THE.OPENING ADD CONSTRAINT O_SCC2_FK FOREIGN KEY (PREV_SITE_CLASS_CODE) REFERENCES THE.SITE_CLASS_CODE(SITE_CLASS_CODE);
ALTER TABLE THE.OPENING ADD CONSTRAINT O_SISC_FK FOREIGN KEY (PREV_SITE_INDEX_SOURCE_CODE) REFERENCES THE.SITE_INDEX_SOURCE_CODE(SITE_INDEX_SOURCE_CODE);
ALTER TABLE THE.OPENING ADD CONSTRAINT O_SSC6_FK FOREIGN KEY (PREV_STOCKING_STATUS_CODE) REFERENCES THE.STOCKING_STATUS_CODE(STOCKING_STATUS_CODE);
ALTER TABLE THE.OPENING ADD CONSTRAINT O_TNC1_FK FOREIGN KEY (TSB_NUMBER_CODE) REFERENCES THE.TSB_NUMBER_CODE(TSB_NUMBER_CODE);
ALTER TABLE THE.OPENING ADD CONSTRAINT O_TSC1_FK FOREIGN KEY (PREV_TREE_SPP1_CODE) REFERENCES THE.TREE_SPECIES_CODE(TREE_SPECIES_CODE);
ALTER TABLE THE.OPENING ADD CONSTRAINT O_TSC2_FK FOREIGN KEY (PREV_TREE_SPP2_CODE) REFERENCES THE.TREE_SPECIES_CODE(TREE_SPECIES_CODE);

--- There is some FK references that are not properly identified in the model, This one references THE.CLIENT_LOCATION that belongs to the CLIENT application
--ALTER TABLE THE.RESULTS_ELECTRONIC_SUBMISSION ADD CONSTRAINT RES_CN_FK FOREIGN KEY (CLIENT_NUMBER,CLIENT_LOCN_CODE) REFERENCES <?>();
ALTER TABLE THE.RESULTS_ELECTRONIC_SUBMISSION ADD CONSTRAINT RES_OU_FK FOREIGN KEY (ORG_UNIT_NO) REFERENCES THE.ORG_UNIT(ORG_UNIT_NO);

ALTER TABLE THE.STOCKING_EVENT_HISTORY ADD CONSTRAINT SEH_OAH_FK FOREIGN KEY (OPENING_AMENDMENT_ID,OPENING_AMENDMENT_NUMBER) REFERENCES THE.OPENING_AMENDMENT_HISTORY(OPENING_ID,OPENING_AMENDMENT_NUMBER);
ALTER TABLE THE.STOCKING_EVENT_HISTORY ADD CONSTRAINT SEH_O_FK FOREIGN KEY (OPENING_ID) REFERENCES THE.OPENING(OPENING_ID);
ALTER TABLE THE.STOCKING_EVENT_HISTORY ADD CONSTRAINT SEH_RAAC_FK FOREIGN KEY (RESULTS_AUDIT_ACTION_CODE) REFERENCES THE.RESULTS_AUDIT_ACTION_CODE(RESULTS_AUDIT_ACTION_CODE);


ALTER TABLE THE.ACTIVITY_TREATMENT_UNIT ADD CONSTRAINT ATU_CBOA_FK FOREIGN KEY (CUT_BLOCK_OPEN_ADMIN_ID) REFERENCES THE.CUT_BLOCK_OPEN_ADMIN(CUT_BLOCK_OPEN_ADMIN_ID);
--ALTER TABLE THE.ACTIVITY_TREATMENT_UNIT ADD CONSTRAINT ATU_DC_FK FOREIGN KEY (DISTURBANCE_CODE) REFERENCES THE.DISTURBANCE_CODE(DISTURBANCE_CODE);
ALTER TABLE THE.ACTIVITY_TREATMENT_UNIT ADD CONSTRAINT ATU_OU_FK FOREIGN KEY (ORG_UNIT_NO) REFERENCES THE.ORG_UNIT(ORG_UNIT_NO);
ALTER TABLE THE.ACTIVITY_TREATMENT_UNIT ADD CONSTRAINT ATU_O_FK FOREIGN KEY (OPENING_ID) REFERENCES THE.OPENING(OPENING_ID);
--ALTER TABLE THE.ACTIVITY_TREATMENT_UNIT ADD CONSTRAINT ATU_PROJ_FK FOREIGN KEY (SILVICULTURE_PROJECT_ID) REFERENCES THE.SILVICULTURE_PROJECT(SILVICULTURE_PROJECT_ID);
ALTER TABLE THE.ACTIVITY_TREATMENT_UNIT ADD CONSTRAINT ATU_RES_FK FOREIGN KEY (RESULTS_SUBMISSION_ID) REFERENCES THE.RESULTS_ELECTRONIC_SUBMISSION(RESULTS_SUBMISSION_ID);
--ALTER TABLE THE.ACTIVITY_TREATMENT_UNIT ADD CONSTRAINT ATU_SAM_FK FOREIGN KEY (SILV_ACTIVITY_MEASUREMENT_CODE) REFERENCES THE.SILV_ACTIVITY_MEASUREMENT_CODE(SILV_ACTIVITY_MEASUREMENT_CODE);
--ALTER TABLE THE.ACTIVITY_TREATMENT_UNIT ADD CONSTRAINT ATU_SBC_FK FOREIGN KEY (SILV_BASE_CODE) REFERENCES THE.SILV_BASE_CODE(SILV_BASE_CODE);
--ALTER TABLE THE.ACTIVITY_TREATMENT_UNIT ADD CONSTRAINT ATU_SCPC_FK FOREIGN KEY (SILV_CUT_PHASE_CODE) REFERENCES THE.SILV_CUT_PHASE_CODE(SILV_CUT_PHASE_CODE);
--ALTER TABLE THE.ACTIVITY_TREATMENT_UNIT ADD CONSTRAINT ATU_SFSC_FK FOREIGN KEY (SILV_FUND_SRCE_CODE) REFERENCES THE.SILV_FUND_SRCE_CODE(SILV_FUND_SRCE_CODE);
--ALTER TABLE THE.ACTIVITY_TREATMENT_UNIT ADD CONSTRAINT ATU_SFSC_PLND_FK FOREIGN KEY (PLAN_SILV_FUND_SRCE_CODE) REFERENCES THE.SILV_FUND_SRCE_CODE(SILV_FUND_SRCE_CODE);
--ALTER TABLE THE.ACTIVITY_TREATMENT_UNIT ADD CONSTRAINT ATU_SMC_FK FOREIGN KEY (SILV_METHOD_CODE) REFERENCES THE.SILV_METHOD_CODE(SILV_METHOD_CODE);
--ALTER TABLE THE.ACTIVITY_TREATMENT_UNIT ADD CONSTRAINT ATU_SMC_PLND_FK FOREIGN KEY (PLAN_SILV_METHOD_CODE) REFERENCES THE.SILV_METHOD_CODE(SILV_METHOD_CODE);
--ALTER TABLE THE.ACTIVITY_TREATMENT_UNIT ADD CONSTRAINT ATU_SOC1_FK FOREIGN KEY (SILV_OBJECTIVE_CODE_1) REFERENCES THE.SILV_OBJECTIVE_CODE(SILV_OBJECTIVE_CODE);
--ALTER TABLE THE.ACTIVITY_TREATMENT_UNIT ADD CONSTRAINT ATU_SOC2_FK FOREIGN KEY (SILV_OBJECTIVE_CODE_2) REFERENCES THE.SILV_OBJECTIVE_CODE(SILV_OBJECTIVE_CODE);
--ALTER TABLE THE.ACTIVITY_TREATMENT_UNIT ADD CONSTRAINT ATU_SOC3_FK FOREIGN KEY (SILV_OBJECTIVE_CODE_3) REFERENCES THE.SILV_OBJECTIVE_CODE(SILV_OBJECTIVE_CODE);
--ALTER TABLE THE.ACTIVITY_TREATMENT_UNIT ADD CONSTRAINT ATU_SOC_PLND1_FK FOREIGN KEY (PLAN_SILV_OBJECTIVE_CODE_1) REFERENCES THE.SILV_OBJECTIVE_CODE(SILV_OBJECTIVE_CODE);
--ALTER TABLE THE.ACTIVITY_TREATMENT_UNIT ADD CONSTRAINT ATU_SOC_PLND2_FK FOREIGN KEY (PLAN_SILV_OBJECTIVE_CODE_2) REFERENCES THE.SILV_OBJECTIVE_CODE(SILV_OBJECTIVE_CODE);
--ALTER TABLE THE.ACTIVITY_TREATMENT_UNIT ADD CONSTRAINT ATU_SOC_PLND3_FK FOREIGN KEY (PLAN_SILV_OBJECTIVE_CODE_3) REFERENCES THE.SILV_OBJECTIVE_CODE(SILV_OBJECTIVE_CODE);
--ALTER TABLE THE.ACTIVITY_TREATMENT_UNIT ADD CONSTRAINT ATU_SSC_FK FOREIGN KEY (SILV_SYSTEM_CODE) REFERENCES THE.SILV_SYSTEM_CODE(SILV_SYSTEM_CODE);
--ALTER TABLE THE.ACTIVITY_TREATMENT_UNIT ADD CONSTRAINT ATU_SSVC_FK FOREIGN KEY (SILV_SYSTEM_VARIANT_CODE) REFERENCES THE.SILV_SYSTEM_VARIANT_CODE(SILV_SYSTEM_VARIANT_CODE);
--ALTER TABLE THE.ACTIVITY_TREATMENT_UNIT ADD CONSTRAINT ATU_STC_FK FOREIGN KEY (SILV_TECHNIQUE_CODE) REFERENCES THE.SILV_TECHNIQUE_CODE(SILV_TECHNIQUE_CODE);
--ALTER TABLE THE.ACTIVITY_TREATMENT_UNIT ADD CONSTRAINT ATU_STC_PLND_FK FOREIGN KEY (PLAN_SILV_TECHNIQUE_CODE) REFERENCES THE.SILV_TECHNIQUE_CODE(SILV_TECHNIQUE_CODE);
--ALTER TABLE THE.ACTIVITY_TREATMENT_UNIT ADD CONSTRAINT ATU_STSC_FK FOREIGN KEY (SILV_TREE_SPECIES_CODE) REFERENCES THE.SILV_TREE_SPECIES_CODE(SILV_TREE_SPECIES_CODE);

-- THE.SILV_RELIEF_APPLICATION foreign keys

ALTER TABLE THE.SILV_RELIEF_APPLICATION ADD CONSTRAINT SRA_ATU_FK FOREIGN KEY (ACTIVITY_TREATMENT_UNIT_ID) REFERENCES THE.ACTIVITY_TREATMENT_UNIT(ACTIVITY_TREATMENT_UNIT_ID);
ALTER TABLE THE.SILV_RELIEF_APPLICATION ADD CONSTRAINT SRA_OAH_FK FOREIGN KEY (AMENDMENT_OPENING_ID,OPENING_AMENDMENT_NUMBER) REFERENCES THE.OPENING_AMENDMENT_HISTORY(OPENING_ID,OPENING_AMENDMENT_NUMBER);
--ALTER TABLE THE.SILV_RELIEF_APPLICATION ADD CONSTRAINT SRA_SRASCD_FK FOREIGN KEY (SILV_RELIEF_APPL_STATUS_CODE) REFERENCES THE.SILV_RELIEF_APPL_STATUS_CODE(SILV_RELIEF_APPL_STATUS_CODE);

-- THE.STOCKING_STANDARD_UNIT foreign keys
ALTER TABLE THE.STOCKING_STANDARD_UNIT ADD CONSTRAINT SSU_O_FK FOREIGN KEY (OPENING_ID) REFERENCES THE.OPENING(OPENING_ID);
--ALTER TABLE THE.STOCKING_STANDARD_UNIT ADD CONSTRAINT SSU_SR_FK FOREIGN KEY (STANDARDS_REGIME_ID) REFERENCES THE.STANDARDS_REGIME(STANDARDS_REGIME_ID);

-- This table belongs to CLIENT. Is being added here just for the sake of the VIEW below.

CREATE TABLE THE.FOREST_CLIENT (
	CLIENT_NUMBER VARCHAR2(8) NOT NULL,
	CLIENT_NAME VARCHAR2(60) NOT NULL,
	LEGAL_FIRST_NAME VARCHAR2(30) NULL,
	LEGAL_MIDDLE_NAME VARCHAR2(30) NULL,
	CLIENT_STATUS_CODE VARCHAR2(3) NOT NULL,
	CLIENT_TYPE_CODE VARCHAR2(1) NOT NULL,
	BIRTHDATE DATE NULL,
	CLIENT_ID_TYPE_CODE VARCHAR2(4) NULL,
	CLIENT_IDENTIFICATION VARCHAR2(40) NULL,
	REGISTRY_COMPANY_TYPE_CODE VARCHAR2(4) NULL,
	CORP_REGN_NMBR VARCHAR2(9) NULL,
	CLIENT_ACRONYM VARCHAR2(8) NULL,
	WCB_FIRM_NUMBER VARCHAR2(6) NULL,
	OCG_SUPPLIER_NMBR VARCHAR2(10) NULL,
	CLIENT_COMMENT VARCHAR2(4000) NULL,
	ADD_TIMESTAMP DATE NOT NULL,
	ADD_USERID VARCHAR2(30) NOT NULL,
	ADD_ORG_UNIT NUMBER(10,0) NOT NULL,
	UPDATE_TIMESTAMP DATE NOT NULL,
	UPDATE_USERID VARCHAR2(30) NOT NULL,
	UPDATE_ORG_UNIT NUMBER(10,0) NOT NULL,
	REVISION_COUNT NUMBER(5,0) NOT NULL,
	CONSTRAINT FOREST_CLIENT_PK PRIMARY KEY (CLIENT_NUMBER),
	CONSTRAINT SYS_C0029588_FC_CT CHECK ("CLIENT_NUMBER" IS NOT NULL),
	CONSTRAINT SYS_C0029589_FC_CT CHECK ("CLIENT_NAME" IS NOT NULL),
	CONSTRAINT SYS_C0029590_FC_CT CHECK ("CLIENT_STATUS_CODE" IS NOT NULL),
	CONSTRAINT SYS_C0029591_FC_CT CHECK ("CLIENT_TYPE_CODE" IS NOT NULL),
	CONSTRAINT SYS_C0029592_FC_CT CHECK ("ADD_TIMESTAMP" IS NOT NULL),
	CONSTRAINT SYS_C0029593_FC_CT CHECK ("ADD_USERID" IS NOT NULL),
	CONSTRAINT SYS_C0029594_FC_CT CHECK ("ADD_ORG_UNIT" IS NOT NULL),
	CONSTRAINT SYS_C0029595_FC_CT CHECK ("UPDATE_TIMESTAMP" IS NOT NULL),
	CONSTRAINT SYS_C0029596_FC_CT CHECK ("UPDATE_USERID" IS NOT NULL),
	CONSTRAINT SYS_C0029597_FC_CT CHECK ("UPDATE_ORG_UNIT" IS NOT NULL),
	CONSTRAINT SYS_C0029598_FC_CT CHECK ("REVISION_COUNT" IS NOT NULL)
);
CREATE UNIQUE INDEX FC_ACRONYM_I ON THE.FOREST_CLIENT (CLIENT_ACRONYM);
CREATE INDEX FC_CITC_FK_I ON THE.FOREST_CLIENT (CLIENT_ID_TYPE_CODE);
CREATE INDEX FC_CSC_FK_I ON THE.FOREST_CLIENT (CLIENT_STATUS_CODE);
CREATE INDEX FC_CTCX_FK_I ON THE.FOREST_CLIENT (CLIENT_TYPE_CODE,REGISTRY_COMPANY_TYPE_CODE);
CREATE INDEX FC_OU_FK_I ON THE.FOREST_CLIENT (ADD_ORG_UNIT);
CREATE INDEX FC_OU_IS_UPDATED_BY_FK_I ON THE.FOREST_CLIENT (UPDATE_ORG_UNIT);
CREATE UNIQUE INDEX "I2$_FOREST_CLIENT" ON THE.FOREST_CLIENT (CLIENT_NAME,LEGAL_FIRST_NAME,LEGAL_MIDDLE_NAME,CLIENT_NUMBER);
CREATE INDEX "I4$_FOREST_CLIENT" ON THE.FOREST_CLIENT (OCG_SUPPLIER_NMBR);
CREATE INDEX "I5$_FOREST_CLIENT" ON THE.FOREST_CLIENT (CORP_REGN_NMBR);
-- The below FK references are kept here just for reference, but the tables related to them are not part of this model, they belong to CLIENT
--- ALTER TABLE THE.FOREST_CLIENT ADD CONSTRAINT FC_CITC_FK FOREIGN KEY (CLIENT_ID_TYPE_CODE) REFERENCES THE.CLIENT_ID_TYPE_CODE(CLIENT_ID_TYPE_CODE);
--- ALTER TABLE THE.FOREST_CLIENT ADD CONSTRAINT FC_CSC_FK FOREIGN KEY (CLIENT_STATUS_CODE) REFERENCES THE.CLIENT_STATUS_CODE(CLIENT_STATUS_CODE);
--- ALTER TABLE THE.FOREST_CLIENT ADD CONSTRAINT FC_CTCX_FK FOREIGN KEY (CLIENT_TYPE_CODE,REGISTRY_COMPANY_TYPE_CODE) REFERENCES THE.CLIENT_TYPE_COMPANY_XREF(CLIENT_TYPE_CODE,REGISTRY_COMPANY_TYPE_CODE);
ALTER TABLE THE.FOREST_CLIENT ADD CONSTRAINT FC_OU_FK FOREIGN KEY (ADD_ORG_UNIT) REFERENCES THE.ORG_UNIT(ORG_UNIT_NO);
ALTER TABLE THE.FOREST_CLIENT ADD CONSTRAINT FC_OU_IS_UPDATED_BY_FK FOREIGN KEY (UPDATE_ORG_UNIT) REFERENCES THE.ORG_UNIT(ORG_UNIT_NO);


-- THE.CLIENT_ACRONYM is a VIEW that points to the CLIENT application table called THE.FOREST_CLIENT

CREATE OR REPLACE VIEW THE.CLIENT_ACRONYM
(CLIENT_NUMBER,CLIENT_ACRONYM,REVISION_COUNT)
AS
SELECT fc.client_number client_number
       , fc.client_acronym client_acronym
       , fc.revision_count revision_count
    FROM forest_client fc
   WHERE client_acronym IS NOT NULL
         WITH READ ONLY;