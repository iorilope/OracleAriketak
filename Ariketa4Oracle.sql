--Ariketa 1
SET SERVEROUTPUT ON
declare gehinezko_soldata EMPLOYEES.SALARY%type;
        begin
                select
                        max(SALARY)
                INTO
                        gehinezko_soldata
                from
                        EMPLOYEES;
                dbms_output.put_line(gehinezko_soldata);
        end;
--Ariketa 2
SET SERVEROUTPUT ON
declare Lan_Mota EMPLOYEES.JOB_ID%type;
        begin
                select
                        job_id
                into
                        Lan_Mota
                from
                        employees
                where
                        employee_id = 100;
                dbms_output.put_line(Lan_Mota);
        end;
--Ariketa 3
SET SERVEROUTPUT ON
declare Sail_Izena DEPARTMENTS.DEPARTMENT_NAME%type;
Zenbat_Langile     number;
DEPARTMENT_IDa     DEPARTMENTS.DEPARTMENT_ID%type := 10; --Departemnt_ID ez erabili deparment-eko id hartzen baitu eta ez aldagia
        begin
                select
                        DEPARTMENT_NAME
                into
                        Sail_Izena
                from
                        DEPARTMENTS
                where
                        DEPARTMENT_ID = DEPARTMENT_IDa;
                Select
                        COUNT(EMPLOYEE_id)
                INTO
                        Zenbat_Langile
                FROM
                        EMPLOYEES
                WHERE
                        DEPARTMENT_ID = DEPARTMENT_IDa;
                dbms_output.put_line('Sail Izena : ' || Sail_Izena || ' ren langile kopurua : ' || Zenbat_Langile || ' da');
        end;
--Ariketa 4
SET SERVEROUTPUT ON
declare Soldata_MAX EMPLOYEES.SALARY%type;
Soldata_MIN         EMPLOYEES.SALARY%type;
Aldea               EMPLOYEES.SALARY%type;
        begin
                select
                        MAX(salary)
                into
                        Soldata_MAX
                from
                        EMPLOYEES;
                Select
                        MIN(salary)
                INTO
                        Soldata_MIN
                FROM
                        EMPLOYEES;
                Aldea := soldata_max - soldata_min;
                dbms_output.put_line('Soldata Maximoa : ' || soldata_max);
                dbms_output.put_line('Soldata Minimoa : ' || soldata_min);
                dbms_output.put_line('Aldea : ' || Aldea);
        end;