--ariketa 1

create or replace function  Bistaratzeasaila( departamentuid in departments.department_id%type)  return number

is
kopurua departments.DEPARTMENT_ID%type := 0;
bestesaila hr.departments.department_id%type;
lang_zenb number;

Begin

select DEPARTMENT_ID into bestesaila from hr.departments where DEPARTMENT_ID = departamentuid;
select sum(salary) into lang_zenb from hr.employees where department_id = bestesaila;

return lang_zenb;


END;

--BEGIRATU VARIABLES DE SALIDA EMAITZA IKUSTEKO

 --Ariketa 2

create or replace function  Bistaratzeasaila2( departamentuid in departments.DEPARTMENT_ID%type, langile_kopurua out number)  return number

is
soldata number;
sail number;




Begin


select department_id into sail from hr.departments  where department_id = departamentuid;
select count(salary),sum(salary) into langile_kopurua,soldata from hr.employees where department_id = departamentuid;


return soldata;
EXCEPTION
when NO_DATA_FOUND then raise_application_error (-20730, 'Ez dago departamendurik' || departamentuid);

END;

--Ariketa 3

create or replace function  ESKUALDE_SORTU( eskualdeizen in varchar2)  return number

is

azkenid number := 0;
lang_zenb number;

Begin

select max(REGION_ID) into azkenid from REGIONS;
azkenid := azkenid +1;




insert into REGIONS(REGION_ID,REGION_NAME) values (azkenid,eskualdeizen);


return azkenid;
exception
when no_data_found THEN RAISE_APPLICATION_ERROR (-20730, 'Errorea Eskualdea Sartzerakoan');

END;
