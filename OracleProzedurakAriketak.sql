--Ariketa 1
  set SERVEROUTPUT ON
Create or REPLACE procedure  Bistaratzea

is

CURSOR c1 IS
  
    SELECT FIRST_NAME,SALARY
    FROM EMPLOYEES; 
    
    
    
    

Begin

for empleado in c1 loop

dbms_output.put_line(empleado.FIRST_NAME || ' da izena  eta soldata: ' || empleado.salary);



END LOOP;


END;




--Ariketa 2

create or replace procedure  Bistaratzea2(DepartamentuKodea in DEPARTMENTS.DEPARTMENT_ID%TYPE, kantitatea out  number )

is

CURSOR c1 IS
  
    SELECT FIRST_NAME,SALARY
    FROM EMPLOYEES
    where DEPARTMENT_ID=DepartamentuKodea; 





Begin

for empleado in c1 loop

dbms_output.put_line(empleado.FIRST_NAME || ' da izena  eta soldata: ' || empleado.salary);

kantitatea = kantitatea +1

END LOOP;

return kantitatea;
END;



--Ariketa 3

create or replace procedure  BistaratzeaSubstr(kontuzenbakia in varchar2)

is

zati1 varchar2(30);
zati2 varchar2(30);
zati3 varchar2(30);
zati4 varchar2(30);





Begin

zati1 := SUBSTR(kontuzenbakia,1,4);
zati2 := SUBSTR(kontuzenbakia,4,4);
zati3 := SUBSTR(kontuzenbakia,8,2);
zati4 := SUBSTR(kontuzenbakia,10,8);
dbms_output.put_line(zati1 || '-' || zati2 || '-' || zati3 || '-' || zati4);


END;

