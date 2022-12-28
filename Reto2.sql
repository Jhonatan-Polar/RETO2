/*
NOMBRE: JHONATAN CUEVA
*/

ALTER TABLE CLIENTES
ADD (
NOM_CORTO VARCHAR(100),
EDAD NUMBER(3,0)
);

UPDATE CLIENTES
SET NOM_CORTO = INITCAP(VAL_NOM1) || ' ' || INITCAP(VAL_APE1);

UPDATE CLIENTES
SET EDAD = TRUNC((SYSDATE - FEC_NACI) / 365);

UPDATE CLIENTES
SET 
VAL_APE1 = REPLACE(VAL_APE1,'�','N'),
VAL_APE2 = REPLACE(VAL_APE2,'�','N');

COMMIT;