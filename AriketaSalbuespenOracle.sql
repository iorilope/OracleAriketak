--Salbuespenak
--Ariekta 1



SET SERVEROUTPUT ON
 declare
 Langile_izen Employees.FIRST_NAME%TYPE;
 Langile_Id Employees.EMPLOYEE_ID%TYPE := 99;

 begin
 Select Employees.FIRST_NAME  into Langile_izen from Employees where Employees.EMPLOYEE_ID= Langile_Id;
 DBMS_OUTPUT.PUT_LINE(Langile_izen);
 EXCEPTION
 when NO_DATA_FOUND THEN
 DBMS_OUTPUT.PUT_LINE('Errorea , langile hori  ez da existitzen ');
 when others then
  DBMS_OUTPUT.PUT_LINE('Errore ezezaguna');
 end;
 
 --Ariketa2
 


SET SERVEROUTPUT ON
 declare
 Langile_izen Employees.FIRST_NAME%TYPE;
 Langile_Id Employees.EMPLOYEE_ID%TYPE := 100;

 begin
 Select Employees.FIRST_NAME  into Langile_izen from Employees where Employees.EMPLOYEE_ID > Langile_Id;
 DBMS_OUTPUT.PUT_LINE(Langile_izen);
 EXCEPTION
 when NO_DATA_FOUND THEN
 DBMS_OUTPUT.PUT_LINE('Errorea , langile hori  ez da existitzen ');
 when TOO_MANY_ROWS THEN
 DBMS_OUTPUT.PUT_LINE('Langile gehiegi kontsultan');
 when others then
  DBMS_OUTPUT.PUT_LINE('Errore ezezaguna');
 end;
 
 --Ariketa 3
 


SET SERVEROUTPUT ON
 declare
 Langile_Soldata Employees.Salary%TYPE;
 Langile_Id Employees.EMPLOYEE_ID%TYPE := 100;
 Zatiketa NUMBER;

 begin
 Select Employees.Salary  into Langile_Soldata from Employees where Employees.EMPLOYEE_ID = Langile_Id;
 Zatiketa := Langile_Soldata / 0;
 
 DBMS_OUTPUT.PUT_LINE(Zatiketa);
 EXCEPTION
 when NO_DATA_FOUND THEN
 DBMS_OUTPUT.PUT_LINE('Errorea , langile hori  ez da existitzen ');
 when TOO_MANY_ROWS THEN
 DBMS_OUTPUT.PUT_LINE('Langile gehiegi kontsultan');
 when others then

 raise_application_error(-20001,'Errore bat aurkitu da - '||SQLCODE||' -ERROR- '||SQLERRM);

 end;
 
 --Ariketa 4
 


SET SERVEROUTPUT ON
DECLARE
bikoiztua EXCEPTION;
PRAGMA EXCEPTION_INIT(bikoiztua,-00001);
regn NUMBER; 
regt varchar2(200);
BEGIN
Select REGIONS.REGION_ID into regn from REGIONS where REGIONS.REGION_ID = 2;
regt:='ASIA';
IF regn > 1 THEN
RAISE bikoiztua; 
ELSE
insert into regions values (regn,regt);
commit;
END IF;
EXCEPTION
WHEN bikoiztua THEN
DBMS_OUTPUT.PUT_LINE('Gako bikoiztua, saia zaitez beste bat');
WHEN OTHERS THEN
DBMS_OUTPUT.PUT_LINE('Zehaztu gabeko errorea');
END;
/

--Erabiltzaile Salbuespenak

--Ariekta 1

SET SERVEROUTPUT ON
DECLARE
KONTROL_ESKUALDEAK EXCEPTION;
regn NUMBER; 
regt varchar2(200);

BEGIN
regn := 201;
regt:='ASIA';
IF regn > 200 THEN
raise KONTROL_ESKUALDEAK;
else
insert into REGIONS values(regn,regt);
END IF;
EXCEPTION

when KONTROL_ESKUALDEAK THEN

DBMS_OUTPUT.PUT_LINE('Kode ez baimendua. 200 baino txikiagoa izan behar du');
WHEN OTHERS THEN
DBMS_OUTPUT.PUT_LINE('Zehaztu gabeko errorea');

END;



--RAISE ENUNTZIATUA

 --Ariekta 1

SET SERVEROUTPUT ON
DECLARE
KONTROL_ESKUALDEAK EXCEPTION;
regn NUMBER; 
regt varchar2(200);

BEGIN
regn := 201;
regt:='ASIA';
IF regn > 200 THEN
raise KONTROL_ESKUALDEAK;
else
insert into REGIONS values(regn,regt);
END IF;
EXCEPTION

when KONTROL_ESKUALDEAK THEN

DBMS_OUTPUT.PUT_LINE('Kode ez baimendua. 200 baino txikiagoa izan behar du');
WHEN OTHERS THEN
DBMS_OUTPUT.PUT_LINE('Zehaztu gabeko errorea');

END;

