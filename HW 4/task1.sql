CREATE TABLE petPet (
  petname VARCHAR(20) PRIMARY KEY,
  owner VARCHAR(45),
  species ENUM('M', 'F'),
  gender VARCHAR(15),
  birth DATE,
  death DATE
);

CREATE TABLE petEvent (
  petname VARCHAR(20),
  eventdate DATE,
  eventtype VARCHAR(45),
  remark TEXT,
  FOREIGN KEY (petname) REFERENCES petPet(petname),
  PRIMARY KEY (petname, eventdate)
);