CREATE TABLE Fall22Customers
(CustomerID smallint,
CustomerFName VARCHAR(15),
CustomerLName VARCHAR(15),
CustomerStreetAddress VARCHAR(20),
CustomerCity VARCHAR(21),
CustomerState CHAR(2),
CurrentBalance DECIMAL(7,2),
CreditLimit DECIMAL(8,2),
SalesRepNO tinyint unsigned,
CONSTRAINT customers_pk PRIMARY KEY (CustomerID));

INSERT INTO Fall22Customers VALUES 
(124,'Sally', 'Adams','481 Oak','Lansing','MI',418.75,500,3),
(256,'Ann', 'Samuels','215 Pete','Grant','MI',10.75,800,6),
(311,'Don', 'Charles','48 College','Ira','MI',200.1,300,12),
(315,'Tom', 'Daniels','914 Cherry','Kent','MI',320.75,300,6),
(405,'Al', 'Williams','519 Watson','Grant','MI',201.75,800,12),
(412,'Sally', 'Adams','16 Elm','Lansing','MI',908.75,1000,3),
(522,'Mary', 'Nelson','108 Pine','Ada','MI',49.5,800,12),
(567,'Joe', 'Baker','808 Ridge','Harper','MI',201.2,300,6),
(587,'Judy', 'Roberts','512 Pine','Ada','MI',57.75,500,6),
(622,'Dan', 'Martin','17 Wild Winds','Grant','MI',575.5,500,3),
(682,'Sahara', 'Martin','107 Wild West','Detroit','MI',0,500,15);


CREATE TABLE Fall22Suppliers
(SupplierID CHAR(2),
SupplierName VARCHAR(20),
SupplierAddress VARCHAR(20),
SupplierCity VARCHAR(20),
SupplierState CHAR(2),
CONSTRAINT suppliers_pk PRIMARY KEY (SupplierID));


INSERT INTO Fall22Suppliers VALUES 
('AB','Abbot','123 Terry','Sacramento','CA'),
('NU','New Utensils','986 Bonita','Lansing','MI'),
('PO','Polar','9864 George','Lansing','MI'),
('QV','Quail and Vine','9450 Vine','Detroit','MI'),
('RO','Reed Only','129 Callahan','Las Vegas','NV'),
('TY','Tyson','5212 Broadway','Las Vegas','NM'),
('VB','Victor Bruno','9876 Springburn','Portland','OR'),
('WX','Weights Extra','87 W. Liverpool','Ada','MI');


CREATE TABLE Fall22SalesReps
(SalesRepID tinyint unsigned,
SalesRepFName VARCHAR(15),
SalesRepLName VARCHAR(15),
StreetAddress VARCHAR(20),
SalesRepCity VARCHAR(20),
SalesRepState CHAR(2),
CommissionRate decimal(2,2),
CONSTRAINT salesreps_pk PRIMARY KEY (SalesRepID));

INSERT INTO Fall22SalesReps VALUES 
(3,'Mary', 'Jones','123 Main','Grant','MI',0.05),
(6,'William', 'Smith','102 Raymond','Ada','MI',0.07),
(12,'Sam', 'Brown','419 Harper','Lansing','MI',0.05),
(18,'Stan', 'Bower','4522 Main','Ada','MI',0.02);


CREATE TABLE Fall22Orders
(OrderID int unsigned,
OrderDate DATE,
CustomerID smallint,
CONSTRAINT orderID_pk PRIMARY KEY (OrderID));

INSERT INTO Fall22Orders VALUES 
(12489,'2022-06-22',124),
(12491,'2022-06-23',311),
(12494,'2022-07-03',315),
(12495,'2022-07-03',256),
(12498,'2022-07-03',522),
(12500,'2022-07-09',124),
(12504,'2022-07-10',522);


CREATE TABLE Fall22Orderlines 
(OrderID int unsigned,
PartNO CHAR(4),
NumberOrdered smallint unsigned,
CONSTRAINT orderlines_pk PRIMARY KEY (orderid, partno));

INSERT INTO Fall22Orderlines VALUES 
(12489,'AX12',11),
(12491,'BT04',1),
(12491,'BZ66',1),
(12494,'CB03',4),
(12495,'CX11',2),
(12498,'AZ52',2),
(12498,'BA74',4),
(12498,'CZ81',5),
(12500,'BT04',10),
(12504,'CZ81',2),
(12504,'CA14',25);


CREATE TABLE Fall22Parts
(PartNO CHAR(4),
PartDescription VARCHAR(20),
ItemClass CHAR(2),
UnitPrice decimal(6,2),
SupplierID CHAR(2),
CONSTRAINT parts_pk PRIMARY KEY (PartNo));

INSERT INTO Fall22Parts VALUES 
('AX12','IRON','HW',17.95,'AB'),
('AZ52','SKATES','SG',24.95,'AB'),
('BA74','BASEBALL','SG',4.95,'TY'),
('BH22','TOASTER','HW',34.95,'TY'),
('BT04','STOVE','AP',402.99,'WX'),
('BZ66','WASHER','AP',311.95,'AB'),
('CA14','SKILLET','HW',19.95,'WX'),
('CB03','BIKE','SG',187.5,'NU'),
('CX11','MIXER','HW',57.95,'VB'),
('CZ81','WEIGHTS','SG',108.99,'WX');

