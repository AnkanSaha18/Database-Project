SET SERVEROUTPUT ON
DECLARE
BEGIN
    show_division('Blood_Bank');
END;
/


SELECT division_name, name BloodBankName, phone, address, A_P APositive, A_N ANegative
from Blood_Bank_Info JOIN Services
USING(id);



-- SELECT division_name, name BloodBankName, phone, address
-- from Services
-- where id in (SELECT id from Blood_Bank_Info)
-- ORDER by division_name;

