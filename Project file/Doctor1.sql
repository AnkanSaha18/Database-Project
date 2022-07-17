SET SERVEROUTPUT ON
DECLARE
BEGIN
    show_division('Doctor');
END;
/


SELECT division_name, id DoctorID, name DoctorName, phone, address
from Services
where type = 'Doctor'
ORDER BY division_name;