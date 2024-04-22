--Ariketa 1

create or replace TRIGGER TR1_JOBID
BEFORE DELETE
ON EMPLOYEES
FOR EACH ROW

BEGIN
if :old.job_id like '%CLERK%'then 
RAISE_APPLICATION_ERROR (-20730, 'Errorea Ezin da CLERK JOB ID a ezabatu');

END IF;


END;
--Ariketa 2

CREATE TABLE AUDITORIA (
ERABILTZAILEA VARCHAR(50),
DATA DATE,
SOLDATA_ZAHARRA NUMBER,
SOLDATA_BERRIA NUMBER);

--Ariketa 3
create or replace TRIGGER TR1_Auditoria
BEFORE insert
ON REGIONS


BEGIN

insert into AUDITORIA(ERABILTZAILEA,DATA) VALUES(USER,SYSDATE);



END;
--Ariketa 4

create or replace TRIGGER TR2_Auditoria
BEFORE UPDATE
ON EMPLOYEES
for each row


BEGIN
if updating('salary') then

if :new.salary < :old.salary then

RAISE_APPLICATION_ERROR (-20730, 'Errorea Ezin da Soldata jetxi');
else 
insert into AUDITORIA(ERABILTZAILEA,DATA,SOLDATA_ZAHARRA,SOLDATA_BERRIA) VALUES(USER,SYSDATE,:old.salary,:new.salary);

END IF;
END IF;

END;

--Ariketa 5

CREATE OR REPLACE TRIGGER TR3_departamentua
BEFORE INSERT ON DEPARTMENTS
FOR EACH ROW
DEclare
kopurua number;
BEGIN

  SELECT DEPARTMENT_ID into kopurua FROM DEPARTMENTS WHERE DEPARTMENT_ID = :new.DEPARTMENT_ID;
  
  IF kopurua > 0 THEN
      RAISE_APPLICATION_ERROR(-20730, 'Errorea Ezin da Kodea Errepikatu (Duplicate department ID)');
  END IF;

 
  IF :new.LOCATION_ID IS NULL THEN
     :new.LOCATION_ID := 1700;
  END IF;

  IF :new.MANAGER_ID IS NULL THEN
     :new.MANAGER_ID := 200;
  END IF;
END;
/

