-- CREATE TABLE Hospital_Book
-- (
--     id number(6),
--     client_id number(6) NOT NULL,
--     hospital_id number(6) CHECK (hospital_id BETWEEN 4001 AND 5000),
--     check_in date NOT NULL,
--     check_out date,
--     PRIMARY KEY(id),
--     FOREIGN KEY(client_id) REFERENCES Client(id) ON DELETE CASCADE,
--     FOREIGN KEY(hospital_id) REFERENCES Services(id) ON DELETE CASCADE
-- );

SET SERVEROUTPUT ON

DECLARE
clientID Hospital_Book.client_id%TYPE;
hospitalID Hospital_Book.hospital_id%TYPE;
checkIN Hospital_Book.check_in%TYPE;
checkOUT Hospital_Book.check_out%TYPE;

BEGIN
    clientID := &clientID;
    hospitalID := &hospitalID;
    -- checkIN := &;
    checkOUT := '&CheckOutDate';

    insert into Hospital_Book values (NULL, clientID, hospitalID, sysdate, to_date(checkOUT, 'dd-mon-yy'));
    commit;

    DBMS_OUTPUT.PUT_LINE('Your Medicine Order Request has been saved on our database. Thank You.');

END;
/

SELECT * from Hospital_Book;