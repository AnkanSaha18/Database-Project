-- DECLARE
-- BEGIN
-- END
-- SELECT
-- INSERT
-- BEFORE 
-- CREATE
-- REPLACE
-- UPDATE
-- FOR EACH ROW
-- elsif
-- else
-- if 
-- LOOP
-- REVERSE
-- CURSOR
-- OPEN
-- FETCH
-- CLOSE
-- %ROWTYPE
-- %ROWCOUNT
-- INTO
-- IS 
-- PROCEDURE
-- FUNCTION
-- SHOW ERROR
-- RETURN
-- DBMS_OUTPUT.PUT_LINE
-- DBMS_OUTPUT.PUT
-- TYPE
-- OR  


SET SERVEROUTPUT ON
CREATE OR REPLACE PROCEDURE test_pro(var number) IS

BEGIN
    DECLARE
    num number;
    BEGIN
    num := &test;
    DBMS_OUTPUT.PUT_LINE(num);
    DBMS_OUTPUT.PUT_LINE(var);

    END;
DBMS_OUTPUT.PUT_LINE('in Test_pro');
END;
/
SHOW ERROR




DECLARE
user_id client.id%TYPE;
service_division Division.division_name%type;
service_id number;

BEGIN
test_pro(60);
user_id := &ClientID;


DBMS_OUTPUT.PUT_LINE('Our service area:');
DBMS_OUTPUT.PUT_LINE('1. Dhaka');
DBMS_OUTPUT.PUT_LINE('2. Chittagong');
DBMS_OUTPUT.PUT_LINE('3. Sylhet');
DBMS_OUTPUT.PUT_LINE('4. Barisal');
DBMS_OUTPUT.PUT_LINE('5. Rajshahi');
DBMS_OUTPUT.PUT_LINE('6. Khulna');
DBMS_OUTPUT.PUT_LINE('7. Rangpur');
DBMS_OUTPUT.PUT_LINE('8. Mymensingh');


service_id := &ServiceArea;

END;
/
