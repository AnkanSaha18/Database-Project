-- OUTER JOIN

SELECT check_up.id, Services.name DoctorName
from check_up LEFT OUTER JOIN Services
ON check_up.doctor_id = Services.id;

SELECT check_up.id, Services.name DoctorName
from check_up RIGHT OUTER JOIN Services
ON check_up.doctor_id = Services.id;


SELECT check_up.id, Services.name DoctorName
from check_up FULL OUTER JOIN Services
ON check_up.doctor_id = Services.id;



-- SET OPERATION

SELECT doctor_id
from check_up
union
SELECT pharmacy_id
from Medicine_Order;


SELECT doctor_id
from check_up
INTERSECT
SELECT pharmacy_id
from Medicine_Order;


SELECT doctor_id
from check_up
MINUS
SELECT pharmacy_id
from Medicine_Order;


-- Aggregate Function

select count(id) ServiceCount, type
from services
group by type;




