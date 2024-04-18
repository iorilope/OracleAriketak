--1.	PRAKTIKAK KURTSOREEKIN

--ariketa 1

set SERVEROUTPUT ON
Declare
CURSOR kur1 IS
SELECT FIRST_NAME,LAST_NAME,SALARY
FROM EMPLOYEES;
aldreg kur1%ROWTYPE;
   
BEGIN

OPEN kur1;
FETCH kur1 INTO aldreg; WHILE
kur1%FOUND LOOP
FETCH kur1 INTO aldreg;
IF   aldreg.FIRST_NAME = 'Steven' AND aldreg.LAST_NAME = 'King' THEN

raise_application_error(-20001,'Errore bat aurkitu da -   KODEA: '||SQLCODE||' -ERROREA: -Steven King-en soldata ezin da ikusi');

END IF;

dbms_output.put_line(aldreg.salary);


END LOOP;
CLOSE kur1;
END;

      
	  --Ariketa 2
	  set SERVEROUTPUT ON
DECLARE
  CURSOR c2 (j departments.MANAGER_ID%type) is select * from departments where MANAGER_ID=j;
 
 
  departamento departments%rowtype;

  CURSOR c1 IS
    SELECT *
    FROM EMPLOYEES;
  
BEGIN
  
  for EMPLEADO in c1 loop
  open c2(EMPLEADO.employee_ID);
  fetch c2 into departamento;
  if c2%NOTFOUND then
  dbms_output.put_line(EMPLEADO.FIRST_NAME || ' ez da alorburua');
  else
  dbms_output.put_line(EMPLEADO.FIRST_NAME || ' alorburua da hurrengo alorrean: ' || DEPARTAMENTO.DEPARTMENT_NAME);
  END IF;
  CLOSE C2;
  END LOOP;
  
END;
      
	  
	  --Ariketa 3 EZ DABIL
	  
	  
SET SERVEROUTPUT ON
DECLARE
  CURSOR c2 (j departments.MANAGER_ID%type) is 
    SELECT DEPARTMENT_ID, DEPARTMENT_NAME 
    FROM departments 
    WHERE MANAGER_ID = j;


  departamento c2%rowtype;
  kopurua int := 0; -- Balorea hasieratu bestela kopurua ez da erakusten.

  CURSOR c1 IS
  
    SELECT *
    FROM EMPLOYEES;
    
BEGIN
--Gogoratu else kentzea bestela beste mezu bat ere esaten du

  for EMPLEADO in c1 loop
    open c2(EMPLEADO.employee_ID);
    fetch c2 into departamento; 
    if c2%FOUND then
    kopurua := kopurua + 1;
      dbms_output.put_line(kopurua || ' da kopurua  hurrengo alorrean: ' || departamento.DEPARTMENT_NAME);
 
      
    END IF;
    CLOSE C2;
  END LOOP;
END;	  

--ariketa 3 ONDO DABIL


set SERVEROUTPUT ON
Declare
CODIGO DEPARTMENTS.DEPARTMENT_ID%TYPE;
CURSOR C1 (COD DEPARTMENTS.DEPARTMENT_ID%TYPE) is 
SELECT COUNT(*) FROM EMPLOYEES 
WHERE DEPARTMENT_ID= COD;
NUM_EMPLE NUMBER;
BEGIN
CODIGO :=10;
OPEN C1(CODIGO);
FETCH C1 INTO NUM_EMPLE;
dbms_output.put_line(CODIGO || '  alorreko langile kopurua da ' || NUM_EMPLE);
END;


--ARIKETA 4

DECLARE
CURSOR kur1 IS
SELECT *
 FROM employees

FOR UPDATE ;

BEGIN
for empleado in kurl loop
if empleado.salary > 8000 then
update employees set salary = salary * 1.02
where current of kurl;
else
update employees set salary = salary * 1.03
where current of kurl;
end if;
end loop;
END;

	  
	  
