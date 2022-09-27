DROP TABLE IF EXISTS nvpoliticalparties_JM;

CREATE TABLE nvpoliticalparties_JM (
partyID VARCHAR(3) PRIMARY KEY,
partyname VARCHAR(25)
);

INSERT INTO nvpoliticalparties_JM VALUES 
('C','Citizens'),
('D','Democratic'),
('D-S','Democrat-Silver'),
('E','Emigration'),
('F','Fusion'),
('G','Green'),
('IA','Independent American'),
('Ind','Independent'),
('Lib','Libertarian'),
('NL','Natural Law'),
('NA','New Alliance'),
('P','Peoples'),
('Pop','Populist'),
('Pr','Progressive'),
('Rep','Republican'),
('Ref','Reform'),
('S','Silver'),
('S-D','Silver-Democrat'),
('Soc','Socialist'),
('U','Union'),
('USC','U.S Constitution'),
('V','Veterans');

DROP TABLE IF EXISTS states_JM;

CREATE TABLE states_JM (
statecode CHAR(2),
statename VARCHAR(20) PRIMARY KEY,
statehoodyear smallint,
capital VARCHAR(20),
regionname VARCHAR(10),
divisionname VARCHAR(20)
);

INSERT INTO states_JM VALUES 
('AK','Alaska',1959,'Juneau','West','Pacific'),
('AL','Alabama',1819,'Montgomery','South','East South Central'),
('AR','Arkansas',1836,'Little Rock','South','West South Central'),
('AZ','Arizona',1912,'Phoenix','West','Mountain'),
('CA','California',1850,'Sacramento','West','Pacific'),
('CO','Colorado',1876,'Denver','West','Mountain'),
('CT','Connecticut',1788,'Hartford','Northeast','New England'),
('DE','Delaware',1787,'Dover','South','South Atlantic'),
('FL','Florida',1845,'Tallahassee','South','South Atlantic'),
('GA','Georgia',1788,'Atlanta','South','South Atlantic'),
('HI','Hawaii',1959,'Honolulu','West','Pacific'),
('IA','Iowa',1846,'Des Moines','Midwest','West North Central'),
('ID','Idaho',1890,'Boise','West','Mountain'),
('IL','Illinois',1818,'Springfield','Midwest','East North Central'),
('IN','Indiana',1816,'Indianapolis','Midwest','East North Central'),
('KS','Kansas',1861,'Topeka','Midwest','West North Central'),
('KY','Kentucky',1792,'Frankfort','South','East South Central'),
('LA','Louisiana',1812,'Baton Rouge','South','West South Central'),
('MA','Massachusetts',1788,'Boston','Northeast','New England'),
('MD','Maryland',1788,'Annapolis','South','South Atlantic'),
('ME','Maine',1820,'Augusta','Northeast','New England'),
('MI','Michigan',1837,'Lansing','Midwest','East North Central'),
('MN','Minnesota',1858,'St. Paul','Midwest','West North Central'),
('MO','Missouri',1821,'Jefferson City','Midwest','West North Central'),
('MS','Mississippi',1817,'Jackson','South','East South Central'),
('MT','Montana',1889,'Helena','West','Mountain'),
('NC','North Carolina',1789,'Raleigh','South','South Atlantic'),
('ND','North Dakota',1889,'Bismark','Midwest','West North Central'),
('NE','Nebraska',1867,'Lincoln','Midwest','West North Central'),
('NH','New Hampshire',1788,'Concord','Northeast','New England'),
('NJ','New Jersey',1787,'Trenton','Northeast','Middle Atlantic'),
('NM','New Mexico',1912,'Santa Fe','West','Mountain'),
('NV','Nevada',1864,'Carson City','West','Mountain'),
('NY','New York',1788,'Albany','Northeast','Middle Atlantic'),
('OH','Ohio',1803,'Columbus','Midwest','East North Central'),
('OK','Oklahoma',1907,'Oklahoma City','South','West South Central'),
('OR','Oregon',1859,'Salem','West','Pacific'),
('PA','Pennsylvania',1787,'Harrisburg','Northeast','Middle Atlantic'),
('RI','Rhode Island',1790,'Providence','Northeast','New England'),
('SC','South Carolina',1788,'Columbia','South','South Atlantic'),
('SD','South Dakota',1889,'Pierre','Midwest','West North Central'),
('TN','Tennessee',1796,'Nashville','South','East South Central'),
('TX','Texas',1845,'Austin','South','West South Central'),
('UT','Utah',1896,'Salt Lake City','West','Mountain'),
('VA','Virginia',1788,'Richmond','South','South Atlantic'),
('VT','Vermont',1791,'Montpelier','Northeast','New England'),
('WA','Washington',1889,'Olympia','West','Pacific'),
('WI','Wisconsin',1848,'Madison','Midwest','East North Central'),
('WV','West Virginia',1863,'Charleston','South','South Atlantic'),
('WY','Wyoming',1890,'Cheyenne','West','Mountain');


DROP TABLE IF EXISTS nvgovernors_JM;

CREATE TABLE nvgovernors_JM (
GovNum tinyint PRIMARY KEY,
GovFName VARCHAR(15),
GovMI VARCHAR(6),
GovLName VARCHAR(15),
YearFrom smallint,
YearTo smallint,
PartyID VARCHAR(3),
birthCity VARCHAR(20),
birthState VARCHAR(20),
birthCountry VARCHAR(10),
Born smallint,
Died smallint
);

INSERT INTO nvgovernors_JM VALUES 
(1,'Henry','G.','Blasdel',1864,1871,'Rep','Lawrenceburg','Indiana','U.S.',1825,1900),
(2,'Lewis','R.','Bradley',1871,1879,'D','Orange County','Virginia','U.S.',1805,1879),
(3,'John','H.','Kinkead',1879,1883,'Rep','Smithfield','Pennsylvania','U.S.',1826,1904),
(4,'Jewett','W.','Adams',1883,1887,'D','South Hero','Vermont','U.S.',1835,1920),
(5,'Charles','C.','Stevenson',1887,1890,'Rep','Phelps','New York','U.S.',1826,1890),
(6,'Frank',Null,'Bell',1890,1891,'Rep','Toronto','Ontario','Canada',1840,1927),
(7,'Roswell','K.','Colcord',1891,1895,'Rep','Searsport','Maine','U.S.',1839,1939),
(8,'John','E.','Jones',1895,1896,'S','Merthyr Tydfil','Wales','U.K.',1840,1896),
(9,'Reinhold',Null,'Sadler',1896,1903,'S','Czarnikau','Posen Province','Prussia',1848,1906),
(10,'John',Null,'Sparks',1903,1908,'S-D','Winston County','Mississippi','U.S.',1843,1908),
(11,'Denver','S.','Dickerson',1908,1911,'S-D','Millville','California','U.S.',1872,1925),
(12,'Tasker','L.','Oddie',1911,1915,'Rep','Brooklyn','New York','U.S.',1870,1950),
(13,'Emmet','D.','Boyle',1915,1923,'D','Gold Hill','Nevada','U.S.',1879,1926),
(14,'James','G.','Scrugham',1923,1927,'D','Lexington','Kentucky','U.S.',1880,1945),
(15,'Fred','B.','Balzar',1927,1934,'Rep','Virginia City','Nevada','U.S.',1880,1934),
(16,'Morley',Null,'Griswold',1934,1935,'Rep','Elko','Nevada','U.S.',1890,1951),
(17,'Richard',Null,'Kirman, Sr.',1935,1939,'D','Virginia City','Nevada','U.S.',1877,1959),
(18,'Edward','P.','Carville',1939,1945,'D','Elko County','Nevada','U.S.',1885,1956),
(19,'Vail','M.','Pittman',1945,1951,'D','Vicksburg','Mississippi','U.S.',1880,1964),
(20,'Charles','H.','Russell',1951,1959,'Rep','Lovelock','Nevada','U.S.',1903,1989),
(21,'Grant',Null,'Sawyer',1959,1967,'D','Twin Falls','Idaho','U.S.',1918,1996),
(22,'Paul',Null,'Laxalt',1967,1971,'Rep','Reno','Nevada','U.S.',1922,2018),
(23,'Mike',Null,'O"callaghan',1971,1979,'D','La Crosse','Wisconsin','U.S.',1929,2004),
(24,'Robert',Null,'List',1979,1983,'Rep','Visalia','California','U.S.',1936,Null),
(25,'Richard',Null,'Bryan',1983,1989,'D','Washington','D.C.','U.S.',1937,Null),
(26,'Bob',Null,'Miller',1989,1999,'D','Chicago','Illinois','U.S.',1945,Null),
(27,'Kenny',Null,'Guinn',1999,2007,'Rep','Garland','Arkansas','U.S.',1936,2010),
(28,'Jim',Null,'Gibbons',2007,2011,'Rep','Sparks','Nevada','U.S.',1944,Null),
(29,'Brian',Null,'Sandoval',2011,2019,'Rep','Redding','California','U.S.',1963,Null),
(30,'Steve',Null,'Sisolak',2019,Null,'D','Milwaukee','Wisconsin','U.S.',1953,Null);

