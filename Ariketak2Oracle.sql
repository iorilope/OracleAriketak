set SERVEROUTPUT ON
DECLARE
Zerga constant number(5,2) := 0.21;
Prezioa Number(5,2) := 2.33;
Emaitza  Prezioa%type;

BEGIN

DBMS_OUTPUT.PUT_LINE('Zerga : ' || Zerga || ' da');
DBMS_OUTPUT.PUT_LINE('Prezioa : ' || Prezioa || ' da');
Emaitza := prezioa * Zerga;
DBMS_OUTPUT.PUT_LINE('Emaitza : ' || Emaitza || ' da');

END;
