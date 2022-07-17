SET SERVEROUTPUT ON

CREATE OR REPLACE PROCEDURE show_division(type Services.type%TYPE) IS
CURSOR div IS SELECT * FROM Division;
divName div%ROWTYPE;

BEGIN
if type = 'Doctor' then
    DBMS_OUTPUT.PUT_LINE('Called For Doctor');
elsif type = 'Ambulance' then
    DBMS_OUTPUT.PUT_LINE('Called For Ambulance');
elsif type = 'Pharmacy' then
    DBMS_OUTPUT.PUT_LINE('Called For Pharmacy');
elsif type = 'Hospital' then
    DBMS_OUTPUT.PUT_LINE('Called For Hospital');
elsif type = 'Blood_Bank' then
    DBMS_OUTPUT.PUT_LINE('Called For Blood Bank');
END if;




DBMS_OUTPUT.PUT_LINE(type || ' Services Area are: ');
OPEN div;
    while div%ROWCOUNT <=7
    LOOP
        FETCH div into divName;
        DBMS_OUTPUT.PUT_LINE(div%ROWCOUNT || '. ' ||  divName.division_name);
    END loop;
END;
/
SHOW ERROR





DECLARE
BEGIN
show_division('Doctor');
END;
/