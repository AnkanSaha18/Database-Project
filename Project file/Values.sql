
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
INSERT INTO Services VALUES (1, 'Dr. Osim', '013325', 'Doctor', '36/37 BIT, KUET', 'Taligati', 'Khulna');
INSERT INTO Services VALUES (2, 'Dr. Anton', '01425', 'Doctor', '334 k.b road', 'Saver', 'Dhaka');
INSERT INTO Services VALUES (3, 'Dr. Raisa', '01525', 'Doctor', '45/37 Amlapara', 'Narayangonj', 'Dhaka');
INSERT INTO Services VALUES (4, 'Dr. Otaum', '01625', 'Doctor', '556 gulshan', 'Gulshan', 'Dhaka');

INSERT INTO Services VALUES (5, 'Sohuug', '0132325', 'Ambulance', '36/37 BIT, KUET', 'Bagerhat', 'Khulna');
INSERT INTO Services VALUES (6, 'Harun', '014251', 'Ambulance', '334 k.b road', 'Saver', 'Dhaka');
INSERT INTO Services VALUES (7, 'Karim', '015254', 'Ambulance', '45/37 Amlapara', 'Narail', 'Khulna');
INSERT INTO Services VALUES (8, 'Raton', '016257', 'Ambulance', '556 gulshan', 'Manikgonj', 'Dhaka');

INSERT INTO Services VALUES (9, 'Medicine Plue', '0614251', 'Pharmacy', '334 k.b road', 'Taligati', 'Khulna');
INSERT INTO Services VALUES (10, 'Larze Farma', '0152754', 'Pharmacy', '45/37 Amlapara', 'Narail', 'Khulna');
INSERT INTO Services VALUES (11, 'Popular Medicine', '9016257', 'Pharmacy', '556 gulshan','Bagerhat', 'Khulna');

INSERT INTO Services VALUES (12, 'Abu Nasir', '01527544', 'Hospital', '45/37 Amlapara', 'Taligati', 'Khulna');
INSERT INTO Services VALUES (13, 'PG Hospital', '90162657', 'Hospital', '556 gulshan', 'Gulshan', 'Dhaka');

INSERT INTO Services VALUES (14, 'Blood Solution', '01528754', 'Blood_Bank', '45/37 Amlapara', 'Manikgonj', 'Dhaka');
INSERT INTO Services VALUES (15, 'Life', '90176257', 'Blood_Bank', '556 gulshan', 'Narail', 'Khulna');


-- for Table Blood_Bank_Info
INSERT INTO Blood_Bank_Info VALUES(14, 20, 5, 0, 7, 58, 9, 23, NULL);
INSERT INTO Blood_Bank_Info VALUES(15, NULL, 5, 10, 4, 8, 7, 2, 6);