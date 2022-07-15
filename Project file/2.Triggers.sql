-- For Table Check_Up
DROP SEQUENCE check_seq;
CREATE SEQUENCE check_seq START WITH 1;

CREATE OR REPLACE TRIGGER check_up_inc
BEFORE INSERT ON check_up
FOR EACH ROW
BEGIN
SELECT check_seq.NEXTVAL
INTO   :new.id
FROM   dual;
END;
/
show errors



-- for Table Ambulance_Book
DROP SEQUENCE ambulance_seq;
CREATE SEQUENCE ambulance_seq START WITH 1;

CREATE OR REPLACE TRIGGER ambulance_book_inc
BEFORE INSERT ON Ambulance_Book
FOR EACH ROW
BEGIN
SELECT ambulance_seq.NEXTVAL
INTO   :new.id
FROM   dual;
END;
/
show errors



-- for Table Medicine_Order
DROP SEQUENCE medicine_seq;
CREATE SEQUENCE medicine_seq START WITH 1;

CREATE OR REPLACE TRIGGER medicine_order_inc
BEFORE INSERT ON Ambulance_Book
FOR EACH ROW
BEGIN
SELECT medicine_seq.NEXTVAL
INTO   :new.id
FROM   dual;
END;
/
show errors


-- for Table Hospital_Book
DROP SEQUENCE hospital_seq;
CREATE SEQUENCE hospital_seq START WITH 1;

CREATE OR REPLACE TRIGGER hospital_book_inc
BEFORE INSERT ON Hospital_Book
FOR EACH ROW
BEGIN
SELECT hospital_seq.NEXTVAL
INTO   :new.id
FROM   dual;
END;
/
show errors


