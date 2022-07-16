-- CREATE TABLE Medicine_Order 
-- (
--     id number(6),
--     client_id number(6) NOT NULL,
--     pharmacy_id number(6) CHECK (pharmacy_id BETWEEN 3001 AND 4000),
--     medicine_name varchar(20), 
--     quantity number(6),
--     PRIMARY KEY(id),
--     FOREIGN KEY(client_id) REFERENCES Client(id) ON DELETE CASCADE,
--     FOREIGN KEY(pharmacy_id) REFERENCES Services(id) ON DELETE CASCADE
-- );



SET SERVEROUTPUT ON

DECLARE
clientID Medicine_Order.client_id%TYPE;
pharmacyID Medicine_Order.pharmacy_id%TYPE;
medicineName Medicine_Order.medicine_name%TYPE;
quantity Medicine_Order.quantity%TYPE;

BEGIN
    clientID := &clientID;
    pharmacyID := &pharmacyID;
    medicineName := '&NameOfMedicine';
    quantity := &Quantity;

    insert into Medicine_Order values (NULL, clientID, pharmacyID, medicineName, quantity);
    commit;

    DBMS_OUTPUT.PUT_LINE('Your Medicine Order Request has been saved on our database. Thank You.');

END;
/

SELECT * from Medicine_Order;