
-- for Division TABLE
insert INTO Division VALUES ('Dhaka');
insert INTO Division VALUES ('Chittagong');
insert INTO Division VALUES ('Sylhet');
insert INTO Division VALUES ('Barisal');
insert INTO Division VALUES ('Rajshahi');
insert INTO Division VALUES ('Khulna');
insert INTO Division VALUES ('Rangpur');
insert INTO Division VALUES ('Mymensingh');


-- for District TABLE
INSERT INTO District VALUES ('Narayangonj', 'Dhaka');
INSERT INTO District VALUES ('Dhanmondi', 'Dhaka');
INSERT INTO District VALUES ('Gulshan', 'Dhaka');
INSERT INTO District VALUES ('Manikgonj', 'Dhaka');
INSERT INTO District VALUES ('Saver', 'Dhaka');
INSERT INTO District VALUES ('Tangail', 'Dhaka');
INSERT INTO District VALUES ('Gazipur', 'Dhaka');

INSERT INTO District VALUES ('Bagerhat', 'Khulna');
INSERT INTO District VALUES ('Jashore', 'Khulna');
INSERT INTO District VALUES ('Kustia', 'Khulna');
INSERT INTO District VALUES ('Narail', 'Khulna');
INSERT INTO District VALUES ('Taligati', 'Khulna');


-- for Table Client
INSERT INTO Client VALUES (1, 'Alex', 'Male', 45, null);
INSERT INTO Client VALUES (2, 'Max', 'Male', 45, 'Very week');
INSERT INTO Client VALUES (3, 'Flory', 'Female', 45, null);
INSERT INTO Client VALUES (4, 'Lorem', 'Male', 45, 'better');
INSERT INTO Client VALUES (5, 'Horton', 'Feale', 45, 'Teeth Pain');
INSERT INTO Client VALUES (6, 'Any', 'Female', 45, 'Back Pain');
INSERT INTO Client VALUES (7, 'Solax', 'Male', 45, null);
INSERT INTO Client VALUES (8, 'Dom', 'Female', 45, 'Headich');


-- for Table Services
INSERT INTO Services VALUES (1001, 'Dr. Osim', '013325', 'Doctor', '36/37 BIT, KUET', 'Taligati', 'Khulna');
INSERT INTO Services VALUES (1002, 'Dr. Anton', '01425', 'Doctor', '334 k.b road', 'Saver', 'Dhaka');
INSERT INTO Services VALUES (1003, 'Dr. Raisa', '01525', 'Doctor', '45/37 Amlapara', 'Narayangonj', 'Dhaka');
INSERT INTO Services VALUES (1004, 'Dr. Otaum', '01625', 'Doctor', '556 gulshan', 'Gulshan', 'Dhaka');

INSERT INTO Services VALUES (2001, 'Sohug', '0132325', 'Ambulance', '36/37 BIT, KUET', 'Bagerhat', 'Khulna');
INSERT INTO Services VALUES (2002, 'Harun', '014251', 'Ambulance', '334 k.b road', 'Saver', 'Dhaka');
INSERT INTO Services VALUES (2003, 'Karim', '015254', 'Ambulance', '45/37 Amlapara', 'Narail', 'Khulna');
INSERT INTO Services VALUES (2004, 'Raton', '016257', 'Ambulance', '556 gulshan', 'Manikgonj', 'Dhaka');

INSERT INTO Services VALUES (3001, 'Medicine Plue', '0614251', 'Pharmacy', '334 k.b road', 'Taligati', 'Khulna');
INSERT INTO Services VALUES (3002, 'Larze Farma', '0152754', 'Pharmacy', '45/37 Amlapara', 'Narail', 'Khulna');
INSERT INTO Services VALUES (3003, 'Popular Medicine', '9016257', 'Pharmacy', '556 gulshan','Bagerhat', 'Khulna');

INSERT INTO Services VALUES (4001, 'Abu Nasir', '01527544', 'Hospital', '45/37 Amlapara', 'Taligati', 'Khulna');
INSERT INTO Services VALUES (4002, 'PG Hospital', '90162657', 'Hospital', '556 gulshan', 'Gulshan', 'Dhaka');

INSERT INTO Services VALUES (5001, 'Blood Solution', '01528754', 'Blood_Bank', '45/37 Amlapara', 'Manikgonj', 'Dhaka');
INSERT INTO Services VALUES (5002, 'Life', '90176257', 'Blood_Bank', '556 gulshan', 'Narail', 'Khulna');



-- for Table Check_Up
insert into Check_up values (1, 2, 1003, to_date('22-Jun-22', 'dd-mon-yy'));
insert into Check_up values (2, 7, 1002, to_date('19-May-22 12:00 A.M.' , 'dd-mon-yy hh:mi A.M.'));
insert into Check_up values (3, 1, 1004, to_date('08-Apr-22 12:00 A.M.' , 'dd-mon-yy hh:mi A.M.'));
insert into Check_up values (4, 3, 1001, to_date('08-Dec-22 12:00 A.M.' , 'dd-mon-yy hh:mi A.M.'));
insert into Check_up values (5, 7, 1002, to_date('08-Jan-22 12:00 A.M.' , 'dd-mon-yy hh:mi A.M.'));

-- Just a testing quuery 
-- SELECT u.id,  c.name as client, s.name as doctor from check_up u,  Client c, Services s where c.id = u.client_id AND s.id= u.doctor_id;


-- for Table Ambulance_Book
insert into Ambulance_Book values (1, 5, 2003, '34/44 kb road, Khulna', 'Abu Nasir');
insert into Ambulance_Book values (2, 2, 2002, 'PG hospital', '44 road, Dhanmondi');
insert into Ambulance_Book values (3, 7, 2001, 'Khulna Medical', '56/33 Dakbangla');
insert into Ambulance_Book values (4, 1, 2001, '34/4 kk road, Gulashan', 'Solimolla');
insert into Ambulance_Book values (5, 3, 2002, 'Khulna Medical', 'PG Hospital');


-- for Table Medicine_Order
insert into Medicine_Order values (1, 2, 3003, 'Napa', 10);
insert into Medicine_Order values (2, 7, 3002, 'Gendrin', 5);
insert into Medicine_Order values (3, 1, 3003, 'Flazin', 8);
insert into Medicine_Order values (4, 3, 3001, 'Amodis', 7);
insert into Medicine_Order values (5, 7, 3002, 'Aladiba', 2);


-- for Table Hospital_Book
insert into Hospital_Book values (1, 1, 4001, to_date('22-Jun-22', 'dd-mon-yy'), to_date('26-Jun-22', 'dd-mon-yy'));
insert into Hospital_Book values (2, 3, 4002, to_date('02-May-22', 'dd-mon-yy'), to_date('03-May-22', 'dd-mon-yy'));
insert into Hospital_Book values (3, 8, 4002, to_date('07-Dec-22', 'dd-mon-yy'), to_date('12-Dec-22', 'dd-mon-yy'));
insert into Hospital_Book values (4, 6, 4001, to_date('20-Mar-22', 'dd-mon-yy'), to_date('27-Mar-22', 'dd-mon-yy'));
insert into Hospital_Book values (5, 4, 4002, to_date('19-Apr-22', 'dd-mon-yy'), to_date('02-May-22', 'dd-mon-yy'));


-- for Table Blood_Bank_Info
INSERT INTO Blood_Bank_Info VALUES(5001, 20, 5, 0, 7, 58, 9, 23, NULL);
INSERT INTO Blood_Bank_Info VALUES(5002, NULL, 5, 10, 4, 8, 7, 2, 6);