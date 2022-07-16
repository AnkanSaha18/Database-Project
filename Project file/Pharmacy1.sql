SET SERVEROUTPUT ON
DECLARE
BEGIN
    show_division('Pharmacy');
END;
/


SELECT division_name, id, name StoreName, phone, address
from Services
where type = 'Pharmacy'
ORDER BY division_name;