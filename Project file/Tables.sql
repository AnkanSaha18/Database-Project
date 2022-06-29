DROP TABLE Blood_Bank_Info;
DROP TABLE Services;
DROP TABLE District;
DROP TABLE Division;
DROP TABLE Client;

CREATE TABLE Division (
    division_name varchar(50),
    PRIMARY KEY(division_name)
    );


CREATE TABLE District(
    district_name varchar(50) NOT NULL UNIQUE,
    division_name varchar(50) NOT NULL,
    CONSTRAINT location PRIMARY KEY(district_name, division_name),
    FOREIGN KEY(division_name) REFERENCES Division (division_name) ON DELETE CASCADE
    );

Create TABLE Client(
    id number(6) NOT NULL,
    name varchar(50) NOT NULL,
    gender varchar(10),
    age number(3),
    notes varchar(100),
    PRIMARY KEY (id)
    );


CREATE TABLE Services(
    id number(6) NOT NULL,
    name varchar(50) NOT NULL,
    phone varchar(50) NOT NULL UNIQUE,
    type varchar(50) CHECK (type in ('doctor', 'Doctor', 'hospital', 'Hospital', 'ambulance', 'Ambulance', 'blood_bank', 'Blood_Bank', 'pharmacy', 'Pharmacy')),
    address varchar(50) NOT NULL,
    district_name varchar(50) NOT NULL,
    division_name varchar(50) NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(district_name, division_name) REFERENCES District (district_name, division_name) ON DELETE CASCADE
    );

CREATE TABLE Blood_Bank_Info(
    id number(6), 
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


