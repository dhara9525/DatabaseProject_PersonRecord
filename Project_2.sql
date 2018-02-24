--Database diagram was developed by using online tool, Quick Database Diagrams 
--View Database Diagram.png

CREATE TABLE Persons (
    PersonID int NOT NULL PRIMARY KEY,
    FirstName varchar(255)NOT NULL,
    LastName varchar(255) NOT NULL,
    Age int,
);
INSERT INTO Persons (PersonID, FirstName, LastName, Age) VALUES
  ('1', 'Barry','Hoffman', '34'),
  ('2', 'Todd', 'Murphy', '28'),
  ('3', 'Susan', 'Floyd', '40'),
  ('4', 'Moses', 'Sison', '28');
CREATE TABLE PhoneNumbers (
    PhoneNumberID int NOT NULL PRIMARY KEY,
    Type varchar(255),
    CountryCode varchar(255),
    Extension varchar(255),
    ContactNumber varchar(255),
    PersonID int REFERENCES Persons(PersonID)
);
INSERT INTO PhoneNumbers (PhoneNumberID, Type, CountryCode, Extension, ContactNumber, PersonID) VALUES
  ('1', 'Home','', '31','4671285656','1'),
  ('2', 'Mobile', '01','','4081112222','2'),
  ('3', 'Mobile', '01','' ,'4051669025','3'),
  ('4', 'Home', '','76', '2885656989','4'),
  ('5', 'Mobile', '01','N/A', '3885667927','1'),
  ('6', 'Mobile', '01','N/A', '9090667975','2'),
  ('7', 'Mobile', '01','-', '4985669064','3'),
  ('8', 'Mobile', '01','N/A', '8985660740','4'),
  ('9', 'Work', '','86', '2885656989','1'),
  ('10', 'Work', '','77', '2885656989','2'),
  ('11', 'Work', '','96', '2885656989','3'),
  ('12', 'Work', '','70', '2885656989','4')
  ;
CREATE TABLE Address (
    AddressID int NOT NULL PRIMARY KEY,
    StreetAddress varchar(255),
    HouseNumber varchar(255),
    City varchar(255),
    ZipCode int,
    State varchar(255),
    Country varchar(255),
    PersonID int REFERENCES Persons(PersonID)
);

INSERT INTO Address (AddressID, StreetAddress, HouseNumber, City, ZipCode, State, Country, PersonID) VALUES
  ('1','3241 Stevens Creek', '1509 K','San Diego', '98097','CA','USA','1'),
  ('2','9091 Rodeo Creek', '9 K','Los Angeles', '78097','CA','USA','2'),
  ('3','3041 Huntington Avenue ', '21','South San Francisco', '45091','CA','USA','3'),
  ('4','2240 Rodeo Creek', '19 B','San Francisco', '98197','CA','USA','4'),
  ('5','3241 Stevens Avenue', '109 ','Santa Monica', '96797','CA','USA','1'),
  ('6','6741 Airport  boulevard', '509 L','San Bruno', '67097','CA','USA','2'),
  ('7','3081 Hope boulevard', '159 K','Burlingame', '98050','CA','USA','3'),
  ('8','9241 Huntington Creek', '8509 M','Palo Alto', '12097','CA','USA','4'),
  ('9','8281 Hope Creek', '1589 K','Las Vegas', '38517','NV','USA','1'),
  ('10','5241 Stevens Creek', '89 N','New York', '88790','NY','USA','2'),
  ('11','3248 Rodeo Avenue', '189 Y','Sugar Land', '58086','TX','USA','3'),
  ('12','1281 Stevens Avenue', '1109 O','York', '18077','PA','USA','4'),
  ('13','1981 Fremont Avenue', '1109 O','Belmont', '88611','CA','USA','1'),
  ('14','1981 Fremont Creek', '7809 O','York', '89611','PA','USA','2')
  ;


