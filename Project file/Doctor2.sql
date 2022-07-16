-- CREATE TABLE Check_Up(
--     id number(6),
--     client_id number(6) NOT NULL,
--     doctor_id number(6) CHECK (doctor_id BETWEEN 1001 AND 2000),
--     schedule date not null,
--     PRIMARY KEY(id),
--     FOREIGN KEY(client_id) REFERENCES Client(id) ON DELETE CASCADE,
--     FOREIGN KEY(doctor_id) REFERENCES Services(id) ON DELETE CASCADE
-- );

SET SERVEROUTPUT ON
DECLARE
clientID check_Up.client_id%TYPE;
doctorID check_Up.doctor_id%TYPE;
schedule Check_Up.schedule%TYPE;

BEGIN
    clientID := &clientID;
    doctorID := &doctorID;
    schedule := '&MeetingDate';

    insert into Check_up values (NULL, clientID, doctorID, to_date(schedule, 'dd-mon-yy'));
    commit;

    DBMS_OUTPUT.PUT_LINE('Your Appoinment has been saved on our database. Thank You.');

END;
/

SELECT * from check_Up;