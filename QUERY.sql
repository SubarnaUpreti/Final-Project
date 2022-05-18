SELECT CUSTOMER_ADDRESS, CUSTOMER_NAME, CHARGE_ID, CHARGE_AMOUNT
FROM CUSTOMER, CHARGE
WHERE CUSTOMER.CUSTOMER_ID = CHARGE.FK1_CUSTOMER_ID
AND CHARGE_AMOUNT>5000;

SELECT MEMBERSHIP_TYPE, CUSTOMER.CUSTOMER_ID
FROM CUSTOMER, CORPORATE
WHERE CUSTOMER.CUSTOMER_ID = CORPORATE.CUSTOMER_ID
AND MEMBERSHIP_TYPE = 'Gold';

SELECT FREUENCY, CUSTOMER_ADDRESS, CUSTOMER_NAME
FROM CONTRACT, CUSTOMER
WHERE CONTRACT.FK1_CUSTOMER_ID = CUSTOMER.CUSTOMER_ID
AND FREUENCY = 10
AND CUSTOMER_ADDRESS ='Butwal';

SELECT VEHICLE_NAME, VEHICLE_TYPE, CUSTOMER_ADDRESS, CUSTOMER.CUSTOMER_ID
FROM VEHICLE, CUSTOMER
WHERE VEHICLE.FK1_CUSTOMER_ID = CUSTOMER.CUSTOMER_ID
AND VEHICLE_TYPE = 'HATCHBACK';