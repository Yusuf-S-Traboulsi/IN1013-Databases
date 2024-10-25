-- PART 1: Definition Part

-- Create table petPet
CREATE TABLE petPet (
    petname VARCHAR(20) PRIMARY KEY,
    owner VARCHAR(45),
    species CHAR(1) CHECK (species IN ('M', 'F')),
    gender CHAR(1),
    birth DATE,
    death DATE
);

-- Create table petEvent
CREATE TABLE petEvent (
    petname VARCHAR(20),
    eventdate DATE,
    eventtype VARCHAR(15),
    remark VARCHAR(255),
    FOREIGN KEY (petname) REFERENCES petPet(petname),
    PRIMARY KEY (petname, eventdate)
);


