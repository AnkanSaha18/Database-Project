SET SERVEROUTPUT ON
DECLARE
BEGIN
    show_division('Blood_Bank');
END;
/


SELECT division_name, name BloodBankName, phone, address, A_P APositive, A_N ANegative
from Blood_Bank_Info JOIN Services
USING(id);