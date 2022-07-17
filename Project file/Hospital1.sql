SET SERVEROUTPUT ON
DECLARE
BEGIN
    show_division('Hospital');
END;
/


SELECT division_name, id, name HospitalName, phone, address
from Services
where type = 'Hospital'
ORDER BY division_name;