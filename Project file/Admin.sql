SET SERVEROUTPUT ON

BEGIN
DBMS_OUTPUT.PUT_LINE('*********************************************************');
DBMS_OUTPUT.PUT_LINE('*                                                       *');
DBMS_OUTPUT.PUT_LINE('*                     Check_Up Table                    *');
DBMS_OUTPUT.PUT_LINE('*                                                       *');
DBMS_OUTPUT.PUT_LINE('*********************************************************');
END;
/

SELECT check_up.id, client.name ClientName, Services.name DoctorName
from check_up, client, Services
where check_up.client_id = client.id AND check_up.doctor_id = Services.id;



BEGIN
DBMS_OUTPUT.PUT_LINE('*********************************************************');
DBMS_OUTPUT.PUT_LINE('*                                                       *');
DBMS_OUTPUT.PUT_LINE('*                  Ambulance_Book Table                 *');
DBMS_OUTPUT.PUT_LINE('*                                                       *');
DBMS_OUTPUT.PUT_LINE('*********************************************************');
END;
/
SELECT Ambulance_Book.id, client.name ClientName, Services.name DriverName
from Ambulance_Book, client, Services
where Ambulance_Book.client_id = client.id AND Ambulance_Book.ambulance_id = Services.id;





BEGIN
DBMS_OUTPUT.PUT_LINE('*********************************************************');
DBMS_OUTPUT.PUT_LINE('*                                                       *');
DBMS_OUTPUT.PUT_LINE('*                  Medicine_Order Table                 *');
DBMS_OUTPUT.PUT_LINE('*                                                       *');
DBMS_OUTPUT.PUT_LINE('*********************************************************');
END;
/
SELECT Medicine_Order.id, client.name ClientName, Services.name PharmacyName
from Medicine_Order, client, Services
where Medicine_Order.client_id = client.id AND Medicine_Order.pharmacy_id = Services.id;







BEGIN
DBMS_OUTPUT.PUT_LINE('*********************************************************');
DBMS_OUTPUT.PUT_LINE('*                                                       *');
DBMS_OUTPUT.PUT_LINE('*                   Hospital_Book Table                 *');
DBMS_OUTPUT.PUT_LINE('*                                                       *');
DBMS_OUTPUT.PUT_LINE('*********************************************************');
END;
/
SELECT Hospital_Book.id, client.name ClientName, Services.name HospitalName
from Hospital_Book, client, Services
where Hospital_Book.client_id = client.id AND Hospital_Book.hospital_id = Services.id;





BEGIN
DBMS_OUTPUT.PUT_LINE('*********************************************************');
DBMS_OUTPUT.PUT_LINE('*                                                       *');
DBMS_OUTPUT.PUT_LINE('*                  Blood_Bank_Info Table                *');
DBMS_OUTPUT.PUT_LINE('*                                                       *');
DBMS_OUTPUT.PUT_LINE('*********************************************************');
END;
/
SELECT id, name BloodBankName, A_P APositive, A_N ANegative
from Blood_Bank_Info NATURAL JOIN Services;
