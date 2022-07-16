SET SERVEROUTPUT ON
DECLARE
BEGIN
    show_division('Ambulance');
END;
/


SELECT division_name, id, name DriverName, phone, address
from Services
where type = 'Ambulance'
ORDER BY division_name;