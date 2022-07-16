-- CREATE TABLE Ambulance_Book 
-- (
--     id number(6),
--     client_id number(6) NOT NULL,
--     ambulance_id number(6) CHECK (ambulance_id BETWEEN 2001 AND 3000),
--     pick_up varchar(20) NOT NULL, 
--     drop_off varchar(20) NOT NULL, 
--     PRIMARY KEY(id),
--     FOREIGN KEY(client_id) REFERENCES Client(id) ON DELETE CASCADE,
--     FOREIGN KEY(ambulance_id) REFERENCES Services(id) ON DELETE CASCADE
-- );

SET SERVEROUTPUT ON

DECLARE
clientID Ambulance_Book.client_id%TYPE;
ambulanceID Ambulance_Book.ambulance_id%TYPE;
pickUP Ambulance_Book.pick_up%TYPE;
dropOFF Ambulance_Book.drop_off%TYPE;

BEGIN
    clientID := &clientID;
    ambulanceID := &ambulanceID;
    pickUP := '&pickUpZone';
    dropOFF := '&dropOFFZone';

    insert into Ambulance_Book values (NULL, clientID, ambulanceID, pickUP, dropOFF);
    commit;

    DBMS_OUTPUT.PUT_LINE('Your Request has been saved on our database.Thank You.');

END;
/

SELECT * from Ambulance_Book;