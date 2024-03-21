--Ariketa 0
set SERVEROUTPUT ON
DECLARE
Izena varchar(20) := 'Ioritz';
Abizena varchar(20) := 'Lopetegi';
BEGIN

DBMS_OUTPUT.PUT_LINE('IZENA : ' || Izena || ' da');
DBMS_OUTPUT.PUT_LINE('Abizena : ' || Abizena || ' da');

END;

--1 Ariketa

--D ondo dago 

--2 Ariketa

set SERVEROUTPUT ON
DECLARE
Zenb1 number := 1;
Zenb2 number := 2;
Emaitza number;
BEGIN
Emaitza := zenb1 + zenb2;
DBMS_OUTPUT.PUT_LINE('Lehen zenbakia : ' || Zenb1 || ' da');
DBMS_OUTPUT.PUT_LINE('Bigarren zenbakia : ' || Zenb2 || ' da');
DBMS_OUTPUT.PUT_LINE('Zenbakien batura : ' || Emaitza || ' da');

END;
--3 ariketa

set SERVEROUTPUT ON
DECLARE
Zenb1 number := Null;
Zenb2 number := 2;
Emaitza number;
BEGIN
Emaitza := zenb1 + zenb2;
DBMS_OUTPUT.PUT_LINE('Lehen zenbakia : ' || Zenb1 || ' da');
DBMS_OUTPUT.PUT_LINE('Bigarren zenbakia : ' || Zenb2 || ' da');
DBMS_OUTPUT.PUT_LINE('Zenbakien batura : ' || Emaitza || ' da');
END;
--Ez du emaitzik erakutsiko 2zenbakia null denez ezin baitu gehitu Null zerbaitekin

--4 ariketa


set SERVEROUTPUT ON
DECLARE
Zenb1 number := 1;
Zenb2 number := 2;
Zenb3 CONSTANT NUMBER := 3;

BEGIN
zenb3 := zenb1 + zenb2 + zenb3 ;
DBMS_OUTPUT.PUT_LINE('Lehen zenbakia : ' || Zenb1 || ' da');
DBMS_OUTPUT.PUT_LINE('Bigarren zenbakia : ' || Zenb2 || ' da');
DBMS_OUTPUT.PUT_LINE('Zenbakien batura : ' || Zenb3 || ' da');
END;
--Ezin dugu Zenb3 konstantea aldatu bere baloreak beti 3 izan behar duelako

--5 Ariketa

set SERVEROUTPUT ON
DECLARE
Izena varchar(20) := 'Ioritz';
Abizena varchar(20) := 'Lopetegi';
Adina  NUMBER := 21;
Data date := '26-10-2002';

BEGIN

DBMS_OUTPUT.PUT_LINE('Izena : ' || Izena || ' da');
DBMS_OUTPUT.PUT_LINE('Abizena : ' || Abizena || ' da');
DBMS_OUTPUT.PUT_LINE('Adina : ' || Adina || ' da');
DBMS_OUTPUT.PUT_LINE('Jaiotze Data : ' || Data || ' da');
DBMS_OUTPUT.PUT_LINE('Izena : ' || Izena || ' da, ' || ' Abizena : ' || Abizena || ' da' ||' Adina : ' || Adina || ' da' || ' Jaiotze Data : ' || Data || ' da' );
END;

