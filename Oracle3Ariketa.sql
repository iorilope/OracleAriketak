--If ariketak
--Ariketa 1
set SERVEROUTPUT ON
DECLARE Zenbakia number := 2;
Bikoitia         number := 2;
Emaitza          VARCHAR(30);
        BEGIN
                IF
                         (MOD(Zenbakia,Bikoitia)) = 0
                THEN
                        DBMS_OUTPUT.PUT_LINE('Zenbakia bikoitia da');
                else
                        DBMS_OUTPUT.PUT_LINE('Zenbakia bakoitia da');
                END IF;
        END;
--Ariketa 2
set SERVEROUTPUT ON
DECLARE TIPO_PRODUKTU char(1) := UPPER('A');
Emaitza               VARCHAR(30);
        BEGIN
                IF
                         (TIPO_PRODUKTU = 'A')
                THEN
                        DBMS_OUTPUT.PUT_LINE('Elektronika');
                elsif
                        (TIPO_PRODUKTU = 'B')
                then
                        DBMS_OUTPUT.PUT_LINE('Informatika');
                elsif
                        (TIPO_PRODUKTU = 'C')
                then
                        DBMS_OUTPUT.PUT_LINE('Musika');
                elsif
                        (TIPO_PRODUKTU = 'D')
                then
                        DBMS_OUTPUT.PUT_LINE('Liburua');
                else
                        DBMS_OUTPUT.PUT_LINE('Kodea ez da zuzena');
                END IF;
        END;
--Case Ariketak
--Ariketa 1
set SERVEROUTPUT ON
DECLARE Erabiltzailea VARCHAR(30) := USER;
        BEGIN
                CASE
                        Erabiltzailea
                WHEN
                        'SYS'
                THEN
                        DBMS_OUTPUT.PUT_LINE('Superadministratzailea zara');
                WHEN
                        'SYSTEM'
                THEN
                        DBMS_OUTPUT.PUT_LINE('Administratzaile arrunta zara');
                WHEN
                        'HR'
                THEN
                        DBMS_OUTPUT.PUT_LINE('Giza baliabideetakoa zara');
                else
                        DBMS_OUTPUT.PUT_LINE('Baimenik gabeko erabiltzailea');
                END CASE;
        END;
--Begizta ariketak
--1 Ariketa LOOP
SET SERVEROUTPUT ON
DECLARE Z1 NUMBER := 1;
Z2         NUMBER := 1;
Biderketa  NUMBER;
        BEGIN
                LOOP Biderketa := Z1 * Z2;
                        DBMS_OUTPUT.PUT_LINE(Z1 || ' * ' || Z2 || ' = ' || Biderketa );
                        Z2 := Z2 + 1;
                        IF
                                Z2 = 11
                        THEN
                                Z2 := 1;
                                Z1 := Z1 + 1;
                        END IF;
                        EXIT WHEN Z1 = 11;
                END LOOP;
        END;
--1 Ariketa WHILE
SET SERVEROUTPUT ON
DECLARE Z1 NUMBER := 1;
Z2         NUMBER := 1;
Biderketa  NUMBER;
        BEGIN
                While Z2 <= 10
                LOOP Biderketa := Z1 * Z2;
                        DBMS_OUTPUT.PUT_LINE(Z1 || ' * ' || Z2 || ' = ' || Biderketa );
                        Z2 := Z2 + 1;
                        IF
                                Z2 = 11
                        THEN
                                Z2 := 1;
                                Z1 := Z1 + 1;
                        END IF;
                        EXIT WHEN Z1 = 11;
                END LOOP;
        END;
--1 Ariketa For
SET SERVEROUTPUT ON
DECLARE Z1 NUMBER := 1;
Z2         NUMBER := 1;
Biderketa  NUMBER;
        BEGIN
                FOR Z1 IN 1..10
                LOOP
                        FOR Z2               IN 1..10
                        LOOP Biderketa := Z1 * Z2;
                                DBMS_OUTPUT.PUT_LINE(Z1 || ' * ' || Z2 || ' = ' || Biderketa );
                        END LOOP;
                END LOOP;
        END;
--2 Ariketa
SET SERVEROUTPUT ON
declare Testua varchar2(100):='Kaixo Zer moduz';
Emaitza        varchar2(100);
x              number;
        begin
                x := length(Testua);
                while x <> 0
                loop Emaitza := Emaitza || substr(Testua,x,1); --Testua alderantziz idatzi
                        x    := x -1;
                END LOOP;
                dbms_output.put_line(Emaitza);
        end;
--3 Ariketa
SET SERVEROUTPUT ON
declare Testua varchar2(100):='Kaixo Zer moduz';
Emaitza        varchar2(100);
x              number;
        begin
                x := length(Testua);
                while x <> 0
                loop Emaitza := Emaitza || substr(Testua,x,1);
                        x    := x -1;
                        EXIT WHEN INSTR(Emaitza, 'x'
                        or 'X') > 0; --Konprobatu ea Testuak X letra duen
                END LOOP;
                dbms_output.put_line(Emaitza);
        end;
--4 Ariketa
SET SERVEROUTPUT ON
declare Izena varchar2(100):='Ioritz';
Emaitza       varchar2(100);
x             number;
        begin
                x := length(Izena);
                for i in 1..x
                loop Emaitza := Emaitza || '*';
                end loop;
                dbms_output.put_line(Izena || ' ----> ' || Emaitza);
        end;
--5 Ariketa
SET SERVEROUTPUT ON
declare Z1 number := 4;
Z2         number := 101;
emaitza    number;
        BEGIN
                FOR i IN Z1 .. Z2
                LOOP emaitza := Mod (i,4);
                        if
                                emaitza = 0
                        then
                                dbms_output.put_line(i || ' da 4ren multiploa');
                        END IF;
                END LOOP;
        END;