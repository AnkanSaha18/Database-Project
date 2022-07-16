DROP TABLE Blood_Bank_Info;
DROP TABLE Check_Up;
DROP TABLE Ambulance_Book;
DROP TABLE Medicine_Order;
DROP TABLE Hospital_Book;
DROP TABLE Services;
DROP TABLE District;
DROP TABLE Division;
DROP TABLE Client;

CREATE TABLE Division (
    division_name varchar(20),
    PRIMARY KEY(division_name)
);


CREATE TABLE District(
    district_name varchar(20) NOT NULL UNIQUE,
    division_name varchar(20) NOT NULL,
    CONSTRAINT location PRIMARY KEY(district_name, division_name),
    FOREIGN KEY(division_name) REFERENCES Division (division_name) ON DELETE CASCADE
);

CREATE TABLE Client(
    id number(6) NOT NULL,
    name varchar(20) NOT NULL,
    gender varchar(10),
    age number(3),
    notes varchar(100),
    PRIMARY KEY (id)
);


CREATE TABLE Services(
    id number(6) NOT NULL,
    name varchar(20) NOT NULL,
    phone varchar(20) NOT NULL UNIQUE,
    type varchar(20) CHECK (type in ('doctor', 'Doctor', 'hospital', 'Hospital', 'ambulance', 'Ambulance', 'blood_bank', 'Blood_Bank', 'pharmacy', 'Pharmacy')),
    address varchar(20) NOT NULL,
    district_name varchar(20) NOT NULL,
    division_name varchar(20) NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(district_name, division_name) REFERENCES District (district_name, division_name) ON DELETE CASCADE
);




CREATE TABLE Check_Up(
    id number(6),
    client_id number(6) NOT NULL,
    doctor_id number(6) CHECK (doctor_id BETWEEN 1001 AND 2000),
    schedule date not null,
    PRIMARY KEY(id),
    FOREIGN KEY(client_id) REFERENCES Client(id) ON DELETE CASCADE,
    FOREIGN KEY(doctor_id) REFERENCES Services(id) ON DELETE CASCADE
);


CREATE TABLE Ambulance_Book 
(
    id number(6),
    client_id number(6) NOT NULL,
    ambulance_id number(6) CHECK (ambulance_id BETWEEN 2001 AND 3000),
    pick_up varchar(20) NOT NULL, 
    drop_off varchar(20) NOT NULL, 
    PRIMARY KEY(id),
    FOREIGN KEY(client_id) REFERENCES Client(id) ON DELETE CASCADE,
    FOREIGN KEY(ambulance_id) REFERENCES Services(id) ON DELETE CASCADE
);


CREATE TABLE Medicine_Order 
(
    id number(6),
    client_id number(6) NOT NULL,
    pharmacy_id number(6) CHECK (pharmacy_id BETWEEN 3001 AND 4000),
    medicine_name varchar(20), 
    quantity number(6),
    PRIMARY KEY(id),
    FOREIGN KEY(client_id) REFERENCES Client(id) ON DELETE CASCADE,
    FOREIGN KEY(pharmacy_id) REFERENCES Services(id) ON DELETE CASCADE
);

CREATE TABLE Hospital_Book
(
    id number(6),
    client_id number(6) NOT NULL,
    hospital_id number(6) CHECK (hospital_id BETWEEN 4001 AND 5000),
    check_in date NOT NULL,
    check_out date,
    PRIMARY KEY(id),
    FOREIGN KEY(client_id) REFERENCES Client(id) ON DELETE CASCADE,
    FOREIGN KEY(hospital_id) REFERENCES Services(id) ON DELETE CASCADE
);


CREATE TABLE Blood_Bank_Info(
    id number(6) CHECK (id BETWEEN 5001 AND 6000), 
    A_P number(6) DEFAULT 0,
    A_N number(6) DEFAULT 0,
    B_P number(6) DEFAULT 0,
    B_N number(6) DEFAULT 0,
    O_P number(6) DEFAULT 0,
    O_N number(6) DEFAULT 0,
    AB_P number(6) DEFAULT 0,
    AB_N number(6) DEFAULT 0,
    PRIMARY KEY(id),
    FOREIGN KEY(id) REFERENCES Services(id) ON DELETE CASCADE
);

