drop table if exists listings;
drop table if exists agents;
drop table if exists agencies;

CREATE TABLE agencies (
  agencyno tinyint,
  agencyname varchar(50),
  agencystreet varchar(50),
  agencycity varchar(50),
  agencystate char(2),
  agencyzip varchar(10),
  PRIMARY KEY (agencyno)
);

INSERT INTO agencies (agencyno, agencyname, agencystreet, agencycity, agencystate, agencyzip) VALUES
(1, 'Three Lakes Realtors', '123 First Street', 'Kimberling City', 'MO', '77889'),
(2, 'Camden and Camden Realtors', '7878 Washington Avenue', 'Branson', 'MO', '77770'),
(3, 'Sun and Ski Realtors', '9900 West Sunset Blvd.', 'West Branson', 'MO', '77990'),
(4, 'High Performers Real Estate', '223 Main Street', 'Kimberling City', 'MO', '77889'),
(5, 'Smith''s Agency','1156 Shadie Lane', 'West Branson', 'MO', '77990');

CREATE TABLE agents (
  agentno tinyint,
  agentfirst varchar(25),
  agentlast varchar(25),
  agentphone varchar(20),
  agencyno tinyint,
  PRIMARY KEY (agentno),
  FOREIGN KEY (agencyno) REFERENCES agencies (agencyno)
);

INSERT INTO agents (agentno, agentfirst, agentlast, agentphone, agencyno) VALUES
(1, 'Gordon', 'Hughes', '555-222-8877', 1),
(2, 'Phil', 'Kirkpatrick', '555-111-9900', 1),
(3, 'Jessica', 'Polar', '555-333-3344', 3),
(4, 'Michelle', 'Litten', '555-444-7788', 3),
(5, 'Jane Ann', 'Welch', '555-223-0044', 2),
(6, 'Shari', 'Pledge', '555-228-5577', 4),
(7, 'Donna', 'Fye', '555-220-4466', 2),
(8, 'Mary', 'Overbye', '555-888-7777', 1),
(9, 'Deb', 'Seiler', '555-333-0123', 4),
(10, 'Jose', 'Martinez', '555-227-0097', 1);
 
CREATE TABLE listings (
  listingno tinyint,
  style varchar(20),
  location varchar(20),
  sqft int,
  lakeft smallint,
  br tinyint,
  baths decimal(3,1),
  garage tinyint,
  pool ENUM('y','n'),
  asking int,
  agentno tinyint,
  PRIMARY KEY (listingno),
  FOREIGN KEY (agentno) REFERENCES agents (agentno)
);

INSERT INTO listings (listingno, style, location, sqft, lakeft, br, baths, garage, pool, asking, agentno) VALUES
(1, 'Ranch', 'Ozark Mountain', 3400, 150, 4, 4.0, 2, 'n', 90000, 1),
(2, 'New', '50 MM', 3000, 65, 2, 3.0, 0, 'n', 129000, 1),
(3, 'New', '73 MM', 2900, 180, 3, 2.5, 2, 'n', 135000, 2),
(4, 'Cabin', 'Horseshoe Bend', 1200, 102, 4, 3.0, 2, 'n', 150000, 3),
(5, 'Cabin', '40 MM', 1400, 100, 2, 1.0, 0, 'n', 58999, 2),
(6, 'Two Story', 'Shell Knob', 3000, 110, 4, 4.0, 2, 'n', 276000, 4),
(7, 'Two Story', 'Shell Knob', 1800, 112, 3, 3.0, 2, 'n', 138000, 4),
(8, 'Ranch', 'Horseshoe Bend', 2000, 120, 3, 3.5, 0, 'n', 105000, 1),
(9, 'Ranch', '80 MM', 2000, 80, 3, 3.0, 2, 'n', 250000, 1),
(10, 'Ranch', '80 MM', 1215, 80, 3, 2.0, 0, 'n', 85000, 2),
(11, 'Ranch', 'Greenview', 2200, 200, 3, 3.0, 2, 'n', 395613, 3),
(12, 'Two Story', 'Blue Eye', 3000, 100, 4, 3.0, 2, 'n', 199950, 4),
(13, 'Two Story', 'Galena', 3500, 250, 4, 2.5, 3, 'y', 194500, 5),
(14, 'Two Story', 'Branson West', 2500, 100, 3, 2.0, 2, 'n', 189900, 5),
(15, 'Ranch', 'Branson', 2700, 85, 4, 3.0, 2, 'n', 189900, 6),
(16, 'Log Cabin', 'Cape Fair', 2000, 300, 3, 2.0, 0, 'n', 189900, 6),
(17, 'Ranch', 'Kimberling City', 2500, 100, 3, 4.0, 2, 'n', 189900, 6),
(18, 'Two Story', 'Shell Knob', 3200, 110, 3, 4.5, 0, 'n', 187500, 7),
(19, 'Two Story', 'Kimberling City', 2700, 121, 3, 3.0, 2, 'n', 147900, 7),
(20, 'Patio Home', 'Kimberling City', 2200, 0, 2, 2.0, 1, 'y', 139900, 8),
(21, 'Cabin', 'Kimberling City', 1350, 50, 2, 2.0, 2, 'n', 127900, 8),
(22, 'Two Story', 'Galena', 2000, 75, 4, 1.0, 0, 'n', 124900, 10),
(23, 'Mobile Home', 'Galena', 1200, 120, 3, 2.0, 0, 'n', 120000, 10),
(24, 'Cabin', 'Kimberling City', 1900, 80, 3, 1.0, 0, 'n', 111900, 1);



