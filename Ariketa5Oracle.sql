--Ariketa 1.1
SET SERVEROUTPUT ON
 declare
 departamentua_ID DEPARTMENTS.DEPARTMENT_ID%TYPE;
departamentua_Lokation DEPARTMENTS.Location_Id%TYPE := 1000;
departamentua_Manager DEPARTMENTS.Manager_id%TYPE := 100;
departamentua_Izena DEPARTMENTS.DEPARTMENT_NAME%TYPE := 'INFORMATIKA';

 begin
 Select MAX(DEPARTMENT_ID) into departamentua_ID from DEPARTMENTS;
 Insert into DEPARTMENTS values ((departamentua_ID +1),departamentua_Izena,departamentua_Manager,departamentua_Lokation);
 commit;

 end;
 
 --Ariketa 1.2
 SET SERVEROUTPUT ON
 declare
 departamentua_ID DEPARTMENTS.DEPARTMENT_ID%TYPE;
departamentua_Izena DEPARTMENTS.DEPARTMENT_NAME%TYPE := 'INFORMATIKA';

 begin
 Select MAX(DEPARTMENT_ID) into departamentua_ID from DEPARTMENTS;
 Update DEPARTMENTS set LOCATION_ID = 1700 where DEPARTMENT_NAME =departamentua_Izena;
 commit;

 end;
 --Ariketa 1.3
 
 SET SERVEROUTPUT ON
 declare
 departamentua_ID DEPARTMENTS.DEPARTMENT_ID%TYPE;
departamentua_Izena DEPARTMENTS.DEPARTMENT_NAME%TYPE := 'INFORMATIKA';

 begin
 Select MAX(DEPARTMENT_ID) into departamentua_ID from DEPARTMENTS;
 Delete from DEPARTMENTS where DEPARTMENT_NAME =departamentua_Izena;
 commit;

 end;

