DROP SEQUENCE seq_customer_id;
CREATE SEQUENCE seq_customer_id
START WITH 1
INCREMENT BY 1; 

DROP TRIGGER trig_generate_pk;
CREATE OR REPLACE TRIGGER trig_generate_pk
BEFORE INSERT ON Customer
FOR EACH ROW
BEGIN 
   SELECT seq_customer_id.NEXTVAL INTO :NEW.customer_id from sys.dual;
END;
/

INSERT INTO CUSTOMER (CUSTOMER_ID, CUSTOMER_ADDRESS, PHONE_NUMBER, CUSTOMER_NAME) VALUES (1,'Daang',98098762,'RAJU');
INSERT INTO CUSTOMER (CUSTOMER_ID, CUSTOMER_ADDRESS, PHONE_NUMBER, CUSTOMER_NAME) VALUES (2,'Butwal',98214893,'Ankit');
INSERT INTO CUSTOMER (CUSTOMER_ID, CUSTOMER_ADDRESS, PHONE_NUMBER, CUSTOMER_NAME) VALUES (3,'Pokhara',98234567,'Sushen');
INSERT INTO CUSTOMER (CUSTOMER_ID, CUSTOMER_ADDRESS, PHONE_NUMBER, CUSTOMER_NAME) VALUES (4,'Chitwan',98328734,'Arnav');
INSERT INTO CUSTOMER (CUSTOMER_ID, CUSTOMER_ADDRESS, PHONE_NUMBER, CUSTOMER_NAME) VALUES (5,'Dharan',98120954,'Amik');
INSERT INTO CUSTOMER (CUSTOMER_ID, CUSTOMER_ADDRESS, PHONE_NUMBER, CUSTOMER_NAME) VALUES (6,'Nepaljung',98872309,'Umang');


Insert into INDIVIDUAL (CUSTOMER_ID, AGE) VALUES (1,24);
Insert into INDIVIDUAL (CUSTOMER_ID, AGE) VALUES (2,19);
Insert into INDIVIDUAL (CUSTOMER_ID, AGE) VALUES (3,30);
Insert into INDIVIDUAL (CUSTOMER_ID, AGE) VALUES (4,45);
Insert into INDIVIDUAL (CUSTOMER_ID, AGE) VALUES (5,54);
Insert into INDIVIDUAL (CUSTOMER_ID, AGE) VALUES (6,30);

INSERT INTO CORPORATE (CUSTOMER_ID,MEMBERSHIP_TYPE) VALUES (1,'Gold');
INSERT INTO CORPORATE (CUSTOMER_ID,MEMBERSHIP_TYPE) VALUES (2,'Bronze');
INSERT INTO CORPORATE (CUSTOMER_ID,MEMBERSHIP_TYPE) VALUES (3,'Gold');
INSERT INTO CORPORATE (CUSTOMER_ID,MEMBERSHIP_TYPE) VALUES (4,'Silver');
INSERT INTO CORPORATE (CUSTOMER_ID,MEMBERSHIP_TYPE) VALUES (5,'Gold'); 
INSERT INTO CORPORATE (CUSTOMER_ID,MEMBERSHIP_TYPE) VALUES (6,'Bronze');

DROP SEQUENCE seq_charge_id;
CREATE SEQUENCE seq_charge_id
START WITH 112233
INCREMENT BY 1; 

DROP TRIGGER trig_generate_pk2;
CREATE OR REPLACE TRIGGER trig_generate_pk2
BEFORE INSERT ON charge
FOR EACH ROW
BEGIN 
   SELECT seq_charge_id.NEXTVAL INTO :NEW.charge_id from sys.dual;
END;
/

INSERT INTO CHARGE (CHARGE_ID,CHARGE_NAME,CHARGE_AMOUNT,CHARGE_DESCRIPTION,FK1_CUSTOMER_ID) VALUES (112233,'VEHICLE HIRE',5000,'CASH ON DELIVERY',1);
INSERT INTO CHARGE (CHARGE_ID,CHARGE_NAME,CHARGE_AMOUNT,CHARGE_DESCRIPTION,FK1_CUSTOMER_ID) VALUES (112234,'INSURANCE',2000,'PAYMENT IN ADVANCE',2);
INSERT INTO CHARGE (CHARGE_ID,CHARGE_NAME,CHARGE_AMOUNT,CHARGE_DESCRIPTION,FK1_CUSTOMER_ID) VALUES (112235,'VEHICLE HIRE',4000,'CASH ON ADVANCE',3);
INSERT INTO CHARGE (CHARGE_ID,CHARGE_NAME,CHARGE_AMOUNT,CHARGE_DESCRIPTION,FK1_CUSTOMER_ID) VALUES (112236,'VEHICLE HIRE',9000,'CASH ON HAND',4);
INSERT INTO CHARGE (CHARGE_ID,CHARGE_NAME,CHARGE_AMOUNT,CHARGE_DESCRIPTION,FK1_CUSTOMER_ID) VALUES (112237,'VEHICLE HIRE',7000,'CASH ON DELIVERY',5);
INSERT INTO CHARGE (CHARGE_ID,CHARGE_NAME,CHARGE_AMOUNT,CHARGE_DESCRIPTION,FK1_CUSTOMER_ID) VALUES (112238,'VEHICLE HIRE',1000,'CASH ON HAND',6);


DROP SEQUENCE seq_vehicle_id;
CREATE SEQUENCE seq_vehicle_id
START WITH 1000
INCREMENT BY 1; 

DROP TRIGGER trig_generate_pk3;
CREATE OR REPLACE TRIGGER trig_generate_pk3
BEFORE INSERT ON vehicle
FOR EACH ROW
BEGIN 
   SELECT seq_vehicle_id.NEXTVAL INTO :NEW.vehicle_id from sys.dual;
END;
/

INSERT INTO VEHICLE (VEHICLE_ID, VEHICLE_NAME, VEHICLE_TYPE, FK1_CUSTOMER_ID) VALUES (1001, 'GLC 300 4MATIC', 'LUXURY', 1);
INSERT INTO VEHICLE (VEHICLE_ID, VEHICLE_NAME, VEHICLE_TYPE, FK1_CUSTOMER_ID) VALUES (1002, 'NEXON', 'HATCHBACK', 2);
INSERT INTO VEHICLE (VEHICLE_ID, VEHICLE_NAME, VEHICLE_TYPE, FK1_CUSTOMER_ID) VALUES (1003, 'MACAN', 'SPORTS', 3);
INSERT INTO VEHICLE (VEHICLE_ID, VEHICLE_NAME, VEHICLE_TYPE, FK1_CUSTOMER_ID) VALUES (1004, 'GALLARADO', 'LUXURY', 4);
INSERT INTO VEHICLE (VEHICLE_ID, VEHICLE_NAME, VEHICLE_TYPE, FK1_CUSTOMER_ID) VALUES (1005, 'KONA', 'HATCHBACK', 5);
INSERT INTO VEHICLE (VEHICLE_ID, VEHICLE_NAME, VEHICLE_TYPE, FK1_CUSTOMER_ID) VALUES (1006, 'VENUE', 'HATCHBACK', 6);

DROP SEQUENCE seq_hire_id;
CREATE SEQUENCE seq_hire_id
START WITH 200
INCREMENT BY 1; 

DROP TRIGGER trig_generate_pk4;
CREATE OR REPLACE TRIGGER trig_generate_pk4
BEFORE INSERT ON hire
FOR EACH ROW
BEGIN 
   SELECT seq_hire_id.NEXTVAL INTO :NEW.hire_id from sys.dual;
END;
/

INSERT INTO HIRE (HIRE_ID, H_CHARGE, HIRE_DATE, RETURN_DATE, FK1_CUSTOMER_ID) VALUES (201, 10000, '11/02/2021', '11/10/2021', 1);
INSERT INTO HIRE (HIRE_ID, H_CHARGE, HIRE_DATE, RETURN_DATE, FK1_CUSTOMER_ID) VALUES (202, 20000, '01/01/2021', '02/02/2021', 2);
INSERT INTO HIRE (HIRE_ID, H_CHARGE, HIRE_DATE, RETURN_DATE, FK1_CUSTOMER_ID) VALUES (203, 50000, '03/03/2021', '04/04/2021', 3);
INSERT INTO HIRE (HIRE_ID, H_CHARGE, HIRE_DATE, RETURN_DATE, FK1_CUSTOMER_ID) VALUES (204, 100000, '05/05/2021', '06/06/2021', 4);
INSERT INTO HIRE (HIRE_ID, H_CHARGE, HIRE_DATE, RETURN_DATE, FK1_CUSTOMER_ID) VALUES (205, 200000, '07/07/2021', '08/08/2021', 5);
INSERT INTO HIRE (HIRE_ID, H_CHARGE, HIRE_DATE, RETURN_DATE, FK1_CUSTOMER_ID) VALUES (206, 35000, '07/07/2021', '08/08/2021', 6);

DROP SEQUENCE seq_model_id;
CREATE SEQUENCE seq_model_id
START WITH 90
INCREMENT BY 1; 

DROP TRIGGER trig_generate_pk5;
CREATE OR REPLACE TRIGGER trig_generate_pk5
BEFORE INSERT ON model
FOR EACH ROW
BEGIN 
   SELECT seq_model_id.NEXTVAL INTO :NEW.model_id from sys.dual;
END;
/

INSERT INTO MODEL (MODEL_ID,MODEL_NAME,MODEL_COST,FK1_VEHICLE_ID) VALUES (90,'MERCEDES','80000','1001');
INSERT INTO MODEL (MODEL_ID,MODEL_NAME,MODEL_COST,FK1_VEHICLE_ID) VALUES (91,'TATA','90000','1001');
INSERT INTO MODEL (MODEL_ID,MODEL_NAME,MODEL_COST,FK1_VEHICLE_ID) VALUES (92,'PORSCHE','70000','1001');
INSERT INTO MODEL (MODEL_ID,MODEL_NAME,MODEL_COST,FK1_VEHICLE_ID) VALUES (93,'LAMBORGINI','50000','1001');
INSERT INTO MODEL (MODEL_ID,MODEL_NAME,MODEL_COST,FK1_VEHICLE_ID) VALUES (94,'HUNDAI','60000','1001');
INSERT INTO MODEL (MODEL_ID,MODEL_NAME,MODEL_COST,FK1_VEHICLE_ID) VALUES (95,'HUNDAI','10000','1001');

DROP SEQUENCE seq_contract;
CREATE SEQUENCE seq_contract
START WITH 963
INCREMENT BY 1; 

DROP TRIGGER trig_generate_pk6;
CREATE OR REPLACE TRIGGER trig_generate_pk6
BEFORE INSERT ON Contract
FOR EACH ROW
BEGIN 
   SELECT seq_contract.NEXTVAL INTO :NEW.contract from sys.dual;
END;
/
 
INSERT INTO CONTRACT(CONTRACT,FREUENCY,FK1_CUSTOMER_ID) VALUES (963,100,1);
INSERT INTO CONTRACT(CONTRACT,FREUENCY,FK1_CUSTOMER_ID) VALUES (964,10,2);
INSERT INTO CONTRACT(CONTRACT,FREUENCY,FK1_CUSTOMER_ID) VALUES (965,200,3);
INSERT INTO CONTRACT(CONTRACT,FREUENCY,FK1_CUSTOMER_ID) VALUES (966,50,4);
INSERT INTO CONTRACT(CONTRACT,FREUENCY,FK1_CUSTOMER_ID) VALUES (967,12,5);


DROP SEQUENCE seq_centre_id;
CREATE SEQUENCE seq_centre_id
START WITH 991
INCREMENT BY 1; 

DROP TRIGGER trig_generate_pk7;
CREATE OR REPLACE TRIGGER trig_generate_pk7
BEFORE INSERT ON centre
FOR EACH ROW
BEGIN 
   SELECT seq_centre_id.NEXTVAL INTO :NEW.centre_id from sys.dual;
END;
/
INSERT INTO CENTRE(CENTRE_ID, C_ADDRESS, fk1_VEHICLE_ID) VALUES (991, 'BANESHWOR', 1001);
INSERT INTO CENTRE(CENTRE_ID, C_ADDRESS, fk1_VEHICLE_ID) VALUES (992, 'DALLU', 1002);
INSERT INTO CENTRE(CENTRE_ID, C_ADDRESS, fk1_VEHICLE_ID) VALUES (993, 'PEPSICOLA', 1003);
INSERT INTO CENTRE(CENTRE_ID, C_ADDRESS, fk1_VEHICLE_ID) VALUES (994, 'SANEPA', 1004);
INSERT INTO CENTRE(CENTRE_ID, C_ADDRESS, fk1_VEHICLE_ID) VALUES (995, 'KUPANDOLE', 1005);