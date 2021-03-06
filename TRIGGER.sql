--CHARGE TRIGGER
CREATE OR REPLACE TRIGGER trig_CHARGE_AMOUNT
BEFORE INSERT OR UPDATE
ON CHARGE
FOR EACH ROW
BEGIN
    IF :NEW.CHARGE_AMOUNT<2000 THEN
        RAISE_APPLICATION_ERROR(-20000, 'CHARGE AMT CANNOT BE LESS THAN RS.2000');
    END IF;
    END trig_CHARGE_AMOUNT;

INSERT INTO CHARGE (CHARGE_ID,CHARGE_NAME,CHARGE_AMOUNT,CHARGE_DESCRIPTION,FK1_CUSTOMER_ID) VALUES (112233,'VEHICLE HIRE',1000,'COA',1);

--HIRE TRIGGER
CREATE OR REPLACE TRIGGER trig_RETURN_DATE
BEFORE INSERT OR UPDATE
ON HIRE
FOR EACH ROW
BEGIN
    IF : NEW.RETURN_DATE>sysdate THEN
        RAISE_APPLICATION_ERROR(-20000,'THE CAR SHOULD BE RETURNED WITHIN SYS DATE');
    END IF;
    END trig_RETURN_DATE;



INSERT INTO HIRE (HIRE_ID, H_CHARGE, HIRE_DATE, RETURN_DATE, FK1_CUSTOMER_ID) VALUES (201, 100000, '11/02/2021', '11/10/2022', 1);

--INDIVIDUAL TRIGGER
CREATE OR REPLACE TRIGGER trig_AGE
BEFORE INSERT OR UPDATE
ON INDIVIDUAL
FOR EACH ROW
BEGIN
    IF : NEW.AGE<18 THEN
        RAISE_APPLICATION_ERROR(-20000,'AGE SHOULD BE GREATER THAN 18');
    END IF;
    END trig_AGE;


Insert into INDIVIDUAL (CUSTOMER_ID, AGE) VALUES (1,17);