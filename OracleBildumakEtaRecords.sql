--Ariketa 1

DECLARE
    TYPE LANGILEA IS RECORD (
        NAME VARCHAR2(100), 
        SAL EMPLOYEES.SALARY%TYPE, 
        COD_DEPT EMPLOYEES.DEPARTMENT_ID%TYPE
        
    ); 

    TYPE LANGILEAK IS TABLE OF LANGILEA INDEX BY PLS_INTEGER;

    langile1 LANGILEAK;
BEGIN
    FOR i IN 100..206 LOOP
        SELECT FIRST_NAME || ' ' || LAST_NAME, SALARY,DEPARTMENT_ID INTO langile1(i) FROM employees WHERE EMPLOYEE_ID = (i);
        
        DBMS_OUTPUT.PUT_LINE(langile1(I).NAME);
        
        
    END LOOP;
     DBMS_OUTPUT.PUT_LINE(langile1(langile1.FIRST).NAME);
     DBMS_OUTPUT.PUT_LINE(langile1(langile1.LAST).NAME);
     DBMS_OUTPUT.PUT_LINE(langile1.COUNT);
     
     
     FOR i IN 100..206 LOOP
     if langile1(i).SAL < 7000 then
        langile1.delete(i);
        
        end if;
    END LOOP;
      DBMS_OUTPUT.PUT_LINE(langile1.COUNT);
     
    
END;