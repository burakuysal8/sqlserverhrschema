/* *************************************************************** 
***************************CREATING TABLES************************
**************************************************************** */

CREATE TABLE regions (
    region_id INT PRIMARY KEY,
    region_name VARCHAR (25) DEFAULT NULL
);

 
CREATE TABLE countries (
    country_id CHAR (2) PRIMARY KEY,
    country_name VARCHAR (40) DEFAULT NULL,
    region_id INT NOT NULL
);

 
CREATE TABLE locations (
    location_id INT PRIMARY KEY,
    street_address VARCHAR (40) DEFAULT NULL,
    postal_code VARCHAR (12) DEFAULT NULL,
    city VARCHAR (30) NOT NULL,
    state_province VARCHAR (25) DEFAULT NULL,
    country_id CHAR (2) NOT NULL
);


CREATE TABLE jobs (
    job_id VARCHAR (10) PRIMARY KEY,
    job_title VARCHAR (35) NOT NULL,
    min_salary DECIMAL (8, 0) DEFAULT NULL,
    max_salary DECIMAL (8, 0) DEFAULT NULL
);

 
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR (30) NOT NULL,
    manager_id INT DEFAULT NULL,
    location_id INT DEFAULT NULL
);


CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR (20) DEFAULT NULL,
    last_name VARCHAR (25) NOT NULL,
    email VARCHAR (25) NOT NULL,
    phone_number VARCHAR (20) DEFAULT NULL,
    hire_date DATE NOT NULL,
    job_id VARCHAR (10) NOT NULL,
    salary DECIMAL (8, 2) NOT NULL,
    commission_pct DECIMAL(2, 2) DEFAULT NULL,
    manager_id INT DEFAULT NULL,
    department_id INT DEFAULT NULL
);


CREATE TABLE job_history (
	employee_id INT NOT NULL,
	start_date DATE NOT NULL,
	end_date DATE NOT NULL,
	job_id VARCHAR(10) NOT NULL,
	department_id INT NOT NULL,
	PRIMARY KEY (employee_id, start_date)
);


CREATE VIEW emp_details_view
AS
SELECT e.employee_id,
	e.job_id,
	e.manager_id,
	e.department_id,
	d.location_id,
	l.country_id,
	e.first_name,
	e.last_name,
	e.salary,
	e.commission_pct,
	d.department_name,
	j.job_title,
	l.city,
	l.state_province,
	c.country_name,
	r.region_name
FROM employees e,
	departments d,
	jobs j,
	locations l,
	countries c,
	regions r
WHERE e.department_id = d.department_id
	AND d.location_id = l.location_id
	AND l.country_id = c.country_id
	AND c.region_id = r.region_id
	AND j.job_id = e.job_id;


/* *************************************************************** 
***************************INSERTING DATA*************************
**************************************************************** */

/*Data for the table regions */
INSERT INTO 
    dbo.regions 
values 
    (1, 'Europe'),
    (2, 'Americas'),
    (3, 'Asia'),
    (4, 'Middle East and Africa');
 
 
/*Data for the table countries */
INSERT INTO dbo.countries
VALUES (
	'IT',
	'Italy',
	1
	);

INSERT INTO dbo.countries
VALUES (
	'JP',
	'Japan',
	3
	);

INSERT INTO dbo.countries
VALUES (
	'US',
	'United States of America',
	2
	);

INSERT INTO dbo.countries
VALUES (
	'CA',
	'Canada',
	2
	);

INSERT INTO dbo.countries
VALUES (
	'CN',
	'China',
	3
	);

INSERT INTO dbo.countries
VALUES (
	'IN',
	'India',
	3
	);

INSERT INTO dbo.countries
VALUES (
	'AU',
	'Australia',
	3
	);

INSERT INTO dbo.countries
VALUES (
	'ZW',
	'Zimbabwe',
	4
	);

INSERT INTO dbo.countries
VALUES (
	'SG',
	'Singapore',
	3
	);

INSERT INTO dbo.countries
VALUES (
	'UK',
	'United Kingdom',
	1
	);

INSERT INTO dbo.countries
VALUES (
	'FR',
	'France',
	1
	);

INSERT INTO dbo.countries
VALUES (
	'DE',
	'Germany',
	1
	);

INSERT INTO dbo.countries
VALUES (
	'ZM',
	'Zambia',
	4
	);

INSERT INTO dbo.countries
VALUES (
	'EG',
	'Egypt',
	4
	);

INSERT INTO dbo.countries
VALUES (
	'BR',
	'Brazil',
	2
	);

INSERT INTO dbo.countries
VALUES (
	'CH',
	'Switzerland',
	1
	);

INSERT INTO dbo.countries
VALUES (
	'NL',
	'Netherlands',
	1
	);

INSERT INTO dbo.countries
VALUES (
	'MX',
	'Mexico',
	2
	);

INSERT INTO dbo.countries
VALUES (
	'KW',
	'Kuwait',
	4
	);

INSERT INTO dbo.countries
VALUES (
	'IL',
	'Israel',
	4
	);

INSERT INTO dbo.countries
VALUES (
	'DK',
	'Denmark',
	1
	);

INSERT INTO dbo.countries
VALUES (
	'HK',
	'HongKong',
	3
	);

INSERT INTO dbo.countries
VALUES (
	'NG',
	'Nigeria',
	4
	);

INSERT INTO dbo.countries
VALUES (
	'AR',
	'Argentina',
	2
	);

INSERT INTO dbo.countries
VALUES (
	'BE',
	'Belgium',
	1
	);

/*Data for the table locations */
INSERT INTO dbo.locations
VALUES (
	1000,
	'1297 Via Cola di Rie',
	'00989',
	'Roma',
	NULL,
	'IT'
	);

INSERT INTO dbo.locations
VALUES (
	1100,
	'93091 Calle della Testa',
	'10934',
	'Venice',
	NULL,
	'IT'
	);

INSERT INTO dbo.locations
VALUES (
	1200,
	'2017 Shinjuku-ku',
	'1689',
	'Tokyo',
	'Tokyo Prefecture',
	'JP'
	);

INSERT INTO dbo.locations
VALUES (
	1300,
	'9450 Kamiya-cho',
	'6823',
	'Hiroshima',
	NULL,
	'JP'
	);

INSERT INTO dbo.locations
VALUES (
	1400,
	'2014 Jabberwocky Rd',
	'26192',
	'Southlake',
	'Texas',
	'US'
	);

INSERT INTO dbo.locations
VALUES (
	1500,
	'2011 Interiors Blvd',
	'99236',
	'South San Francisco',
	'California',
	'US'
	);

INSERT INTO dbo.locations
VALUES (
	1600,
	'2007 Zara St',
	'50090',
	'South Brunswick',
	'New Jersey',
	'US'
	);

INSERT INTO dbo.locations
VALUES (
	1700,
	'2004 Charade Rd',
	'98199',
	'Seattle',
	'Washington',
	'US'
	);

INSERT INTO dbo.locations
VALUES (
	1800,
	'147 Spadina Ave',
	'M5V 2L7',
	'Toronto',
	'Ontario',
	'CA'
	);

INSERT INTO dbo.locations
VALUES (
	1900,
	'6092 Boxwood St',
	'YSW 9T2',
	'Whitehorse',
	'Yukon',
	'CA'
	);

INSERT INTO dbo.locations
VALUES (
	2000,
	'40-5-12 Laogianggen',
	'190518',
	'Beijing',
	NULL,
	'CN'
	);

INSERT INTO dbo.locations
VALUES (
	2100,
	'1298 Vileparle (E)',
	'490231',
	'Bombay',
	'Maharashtra',
	'IN'
	);

INSERT INTO dbo.locations
VALUES (
	2200,
	'12-98 Victoria Street',
	'2901',
	'Sydney',
	'New South Wales',
	'AU'
	);

INSERT INTO dbo.locations
VALUES (
	2300,
	'198 Clementi North',
	'540198',
	'Singapore',
	NULL,
	'SG'
	);

INSERT INTO dbo.locations
VALUES (
	2400,
	'8204 Arthur St',
	NULL,
	'London',
	NULL,
	'UK'
	);

INSERT INTO dbo.locations
VALUES (
	2500,
	'Magdalen Centre, The Oxford Science Park',
	'OX9 9ZB',
	'Oxford',
	'Oxford',
	'UK'
	);

INSERT INTO dbo.locations
VALUES (
	2600,
	'9702 Chester Road',
	'09629850293',
	'Stretford',
	'Manchester',
	'UK'
	);

INSERT INTO dbo.locations
VALUES (
	2700,
	'Schwanthalerstr. 7031',
	'80925',
	'Munich',
	'Bavaria',
	'DE'
	);

INSERT INTO dbo.locations
VALUES (
	2800,
	'Rua Frei Caneca 1360 ',
	'01307-002',
	'Sao Paulo',
	'Sao Paulo',
	'BR'
	);

INSERT INTO dbo.locations
VALUES (
	2900,
	'20 Rue des Corps-Saints',
	'1730',
	'Geneva',
	'Geneve',
	'CH'
	);

INSERT INTO dbo.locations
VALUES (
	3000,
	'Murtenstrasse 921',
	'3095',
	'Bern',
	'BE',
	'CH'
	);

INSERT INTO dbo.locations
VALUES (
	3100,
	'Pieter Breughelstraat 837',
	'3029SK',
	'Utrecht',
	'Utrecht',
	'NL'
	);

INSERT INTO dbo.locations
VALUES (
	3200,
	'Mariano Escobedo 9991',
	'11932',
	'Mexico City',
	'Distrito Federal,',
	'MX'
	);
 
/*Data for the table jobs */
INSERT INTO dbo.jobs
VALUES (
	'AD_PRES',
	'President',
	20000,
	40000
	);

INSERT INTO dbo.jobs
VALUES (
	'AD_VP',
	'Administration Vice President',
	15000,
	30000
	);

INSERT INTO dbo.jobs
VALUES (
	'AD_ASST',
	'Administration Assistant',
	3000,
	6000
	);

INSERT INTO dbo.jobs
VALUES (
	'FI_MGR',
	'Finance Manager',
	8200,
	16000
	);

INSERT INTO dbo.jobs
VALUES (
	'FI_ACCOUNT',
	'Accountant',
	4200,
	9000
	);

INSERT INTO dbo.jobs
VALUES (
	'AC_MGR',
	'Accounting Manager',
	8200,
	16000
	);

INSERT INTO dbo.jobs
VALUES (
	'AC_ACCOUNT',
	'Public Accountant',
	4200,
	9000
	);

INSERT INTO dbo.jobs
VALUES (
	'SA_MAN',
	'Sales Manager',
	10000,
	20000
	);

INSERT INTO dbo.jobs
VALUES (
	'SA_REP',
	'Sales Representative',
	6000,
	12000
	);

INSERT INTO dbo.jobs
VALUES (
	'PU_MAN',
	'Purchasing Manager',
	8000,
	15000
	);

INSERT INTO dbo.jobs
VALUES (
	'PU_CLERK',
	'Purchasing Clerk',
	2500,
	5500
	);

INSERT INTO dbo.jobs
VALUES (
	'ST_MAN',
	'Stock Manager',
	5500,
	8500
	);

INSERT INTO dbo.jobs
VALUES (
	'ST_CLERK',
	'Stock Clerk',
	2000,
	5000
	);

INSERT INTO dbo.jobs
VALUES (
	'SH_CLERK',
	'Shipping Clerk',
	2500,
	5500
	);

INSERT INTO dbo.jobs
VALUES (
	'IT_PROG',
	'Programmer',
	4000,
	10000
	);

INSERT INTO dbo.jobs
VALUES (
	'MK_MAN',
	'Marketing Manager',
	9000,
	15000
	);

INSERT INTO dbo.jobs
VALUES (
	'MK_REP',
	'Marketing Representative',
	4000,
	9000
	);

INSERT INTO dbo.jobs
VALUES (
	'HR_REP',
	'Human Resources Representative',
	4000,
	9000
	);

INSERT INTO dbo.jobs
VALUES (
	'PR_REP',
	'Public Relations Representative',
	4500,
	10500
	);
 
/*Data for the table departments */
INSERT INTO dbo.departments
VALUES (
	10,
	'Administration',
	200,
	1700
	);

INSERT INTO dbo.departments
VALUES (
	20,
	'Marketing',
	201,
	1800
	);

INSERT INTO dbo.departments
VALUES (
	30,
	'Purchasing',
	114,
	1700
	);

INSERT INTO dbo.departments
VALUES (
	40,
	'Human Resources',
	203,
	2400
	);

INSERT INTO dbo.departments
VALUES (
	50,
	'Shipping',
	121,
	1500
	);

INSERT INTO dbo.departments
VALUES (
	60,
	'IT',
	103,
	1400
	);

INSERT INTO dbo.departments
VALUES (
	70,
	'Public Relations',
	204,
	2700
	);

INSERT INTO dbo.departments
VALUES (
	80,
	'Sales',
	145,
	2500
	);

INSERT INTO dbo.departments
VALUES (
	90,
	'Executive',
	100,
	1700
	);

INSERT INTO dbo.departments
VALUES (
	100,
	'Finance',
	108,
	1700
	);

INSERT INTO dbo.departments
VALUES (
	110,
	'Accounting',
	205,
	1700
	);

INSERT INTO dbo.departments
VALUES (
	120,
	'Treasury',
	NULL,
	1700
	);

INSERT INTO dbo.departments
VALUES (
	130,
	'Corporate Tax',
	NULL,
	1700
	);

INSERT INTO dbo.departments
VALUES (
	140,
	'Control And Credit',
	NULL,
	1700
	);

INSERT INTO dbo.departments
VALUES (
	150,
	'Shareholder Services',
	NULL,
	1700
	);

INSERT INTO dbo.departments
VALUES (
	160,
	'Benefits',
	NULL,
	1700
	);

INSERT INTO dbo.departments
VALUES (
	170,
	'Manufacturing',
	NULL,
	1700
	);

INSERT INTO dbo.departments
VALUES (
	180,
	'Construction',
	NULL,
	1700
	);

INSERT INTO dbo.departments
VALUES (
	190,
	'Contracting',
	NULL,
	1700
	);

INSERT INTO dbo.departments
VALUES (
	200,
	'Operations',
	NULL,
	1700
	);

INSERT INTO dbo.departments
VALUES (
	210,
	'IT Support',
	NULL,
	1700
	);

INSERT INTO dbo.departments
VALUES (
	220,
	'NOC',
	NULL,
	1700
	);

INSERT INTO dbo.departments
VALUES (
	230,
	'IT Helpdesk',
	NULL,
	1700
	);

INSERT INTO dbo.departments
VALUES (
	240,
	'vernment Sales',
	NULL,
	1700
	);

INSERT INTO dbo.departments
VALUES (
	250,
	'Retail Sales',
	NULL,
	1700
	);

INSERT INTO dbo.departments
VALUES (
	260,
	'Recruiting',
	NULL,
	1700
	);

INSERT INTO dbo.departments
VALUES (
	270,
	'Payroll',
	NULL,
	1700
	);
 
/*Data for the table employees */
INSERT INTO dbo.employees
VALUES (
	100,
	'Steven',
	'King',
	'SKING',
	'515.123.4567',
	CONVERT(datetime, '17-JUN-1987'),
	'AD_PRES',
	24000,
	NULL,
	NULL,
	90
	);

INSERT INTO dbo.employees
VALUES (
	101,
	'Neena',
	'Kochhar',
	'NKOCHHAR',
	'515.123.4568',
	CONVERT(datetime, '21-SEP-1989'),
	'AD_VP',
	17000,
	NULL,
	100,
	90
	);

INSERT INTO dbo.employees
VALUES (
	102,
	'Lex',
	'De Haan',
	'LDEHAAN',
	'515.123.4569',
	CONVERT(datetime, '13-JAN-1993'),
	'AD_VP',
	17000,
	NULL,
	100,
	90
	);

INSERT INTO dbo.employees
VALUES (
	103,
	'Alexander',
	'Hunold',
	'AHUNOLD',
	'590.423.4567',
	CONVERT(datetime, '03-JAN-1990'),
	'IT_PROG',
	9000,
	NULL,
	102,
	60
	);

INSERT INTO dbo.employees
VALUES (
	104,
	'Bruce',
	'Ernst',
	'BERNST',
	'590.423.4568',
	CONVERT(datetime, '21-MAY-1991'),
	'IT_PROG',
	6000,
	NULL,
	103,
	60
	);

INSERT INTO dbo.employees
VALUES (
	105,
	'David',
	'Austin',
	'DAUSTIN',
	'590.423.4569',
	CONVERT(datetime, '25-JUN-1997'),
	'IT_PROG',
	4800,
	NULL,
	103,
	60
	);

INSERT INTO dbo.employees
VALUES (
	106,
	'Valli',
	'Pataballa',
	'VPATABAL',
	'590.423.4560',
	CONVERT(datetime, '05-FEB-1998'),
	'IT_PROG',
	4800,
	NULL,
	103,
	60
	);

INSERT INTO dbo.employees
VALUES (
	107,
	'Diana',
	'Lorentz',
	'DLORENTZ',
	'590.423.5567',
	CONVERT(datetime, '07-FEB-1999'),
	'IT_PROG',
	4200,
	NULL,
	103,
	60
	);

INSERT INTO dbo.employees
VALUES (
	108,
	'Nancy',
	'Greenberg',
	'NGREENBE',
	'515.124.4569',
	CONVERT(datetime, '17-AUG-1994'),
	'FI_MGR',
	12000,
	NULL,
	101,
	100
	);

INSERT INTO dbo.employees
VALUES (
	109,
	'Daniel',
	'Faviet',
	'DFAVIET',
	'515.124.4169',
	CONVERT(datetime, '16-AUG-1994'),
	'FI_ACCOUNT',
	9000,
	NULL,
	108,
	100
	);

INSERT INTO dbo.employees
VALUES (
	110,
	'John',
	'Chen',
	'JCHEN',
	'515.124.4269',
	CONVERT(datetime, '28-SEP-1997'),
	'FI_ACCOUNT',
	8200,
	NULL,
	108,
	100
	);

INSERT INTO dbo.employees
VALUES (
	111,
	'Ismael',
	'Sciarra',
	'ISCIARRA',
	'515.124.4369',
	CONVERT(datetime, '30-SEP-1997'),
	'FI_ACCOUNT',
	7700,
	NULL,
	108,
	100
	);

INSERT INTO dbo.employees
VALUES (
	112,
	'Jose Manuel',
	'Urman',
	'JMURMAN',
	'515.124.4469',
	CONVERT(datetime, '07-MAR-1998'),
	'FI_ACCOUNT',
	7800,
	NULL,
	108,
	100
	);

INSERT INTO dbo.employees
VALUES (
	113,
	'Luis',
	'Popp',
	'LPOPP',
	'515.124.4567',
	CONVERT(datetime, '07-DEC-1999'),
	'FI_ACCOUNT',
	6900,
	NULL,
	108,
	100
	);

INSERT INTO dbo.employees
VALUES (
	114,
	'Den',
	'Raphaely',
	'DRAPHEAL',
	'515.127.4561',
	CONVERT(datetime, '07-DEC-1994'),
	'PU_MAN',
	11000,
	NULL,
	100,
	30
	);

INSERT INTO dbo.employees
VALUES (
	115,
	'Alexander',
	'Khoo',
	'AKHOO',
	'515.127.4562',
	CONVERT(datetime, '18-MAY-1995'),
	'PU_CLERK',
	3100,
	NULL,
	114,
	30
	);

INSERT INTO dbo.employees
VALUES (
	116,
	'Shelli',
	'Baida',
	'SBAIDA',
	'515.127.4563',
	CONVERT(datetime, '24-DEC-1997'),
	'PU_CLERK',
	2900,
	NULL,
	114,
	30
	);

INSERT INTO dbo.employees
VALUES (
	117,
	'Sigal',
	'Tobias',
	'STOBIAS',
	'515.127.4564',
	CONVERT(datetime, '24-JUL-1997'),
	'PU_CLERK',
	2800,
	NULL,
	114,
	30
	);

INSERT INTO dbo.employees
VALUES (
	118,
	'Guy',
	'Himuro',
	'GHIMURO',
	'515.127.4565',
	CONVERT(datetime, '15-NOV-1998'),
	'PU_CLERK',
	2600,
	NULL,
	114,
	30
	);

INSERT INTO dbo.employees
VALUES (
	119,
	'Karen',
	'Colmenares',
	'KCOLMENA',
	'515.127.4566',
	CONVERT(datetime, '10-AUG-1999'),
	'PU_CLERK',
	2500,
	NULL,
	114,
	30
	);

INSERT INTO dbo.employees
VALUES (
	120,
	'Matthew',
	'Weiss',
	'MWEISS',
	'650.123.1234',
	CONVERT(datetime, '18-JUL-1996'),
	'ST_MAN',
	8000,
	NULL,
	100,
	50
	);

INSERT INTO dbo.employees
VALUES (
	121,
	'Adam',
	'Fripp',
	'AFRIPP',
	'650.123.2234',
	CONVERT(datetime, '10-APR-1997'),
	'ST_MAN',
	8200,
	NULL,
	100,
	50
	);

INSERT INTO dbo.employees
VALUES (
	122,
	'Payam',
	'Kaufling',
	'PKAUFLIN',
	'650.123.3234',
	CONVERT(datetime, '01-MAY-1995'),
	'ST_MAN',
	7900,
	NULL,
	100,
	50
	);

INSERT INTO dbo.employees
VALUES (
	123,
	'Shanta',
	'Vollman',
	'SVOLLMAN',
	'650.123.4234',
	CONVERT(datetime, '10-OCT-1997'),
	'ST_MAN',
	6500,
	NULL,
	100,
	50
	);

INSERT INTO dbo.employees
VALUES (
	124,
	'Kevin',
	'Mours',
	'KMOURS',
	'650.123.5234',
	CONVERT(datetime, '16-NOV-1999'),
	'ST_MAN',
	5800,
	NULL,
	100,
	50
	);

INSERT INTO dbo.employees
VALUES (
	125,
	'Julia',
	'Nayer',
	'JNAYER',
	'650.124.1214',
	CONVERT(datetime, '16-JUL-1997'),
	'ST_CLERK',
	3200,
	NULL,
	120,
	50
	);

INSERT INTO dbo.employees
VALUES (
	126,
	'Irene',
	'Mikkilineni',
	'IMIKKILI',
	'650.124.1224',
	CONVERT(datetime, '28-SEP-1998'),
	'ST_CLERK',
	2700,
	NULL,
	120,
	50
	);

INSERT INTO dbo.employees
VALUES (
	127,
	'James',
	'Landry',
	'JLANDRY',
	'650.124.1334',
	CONVERT(datetime, '14-JAN-1999'),
	'ST_CLERK',
	2400,
	NULL,
	120,
	50
	);

INSERT INTO dbo.employees
VALUES (
	128,
	'Steven',
	'Markle',
	'SMARKLE',
	'650.124.1434',
	CONVERT(datetime, '08-MAR-2000'),
	'ST_CLERK',
	2200,
	NULL,
	120,
	50
	);

INSERT INTO dbo.employees
VALUES (
	129,
	'Laura',
	'Bissot',
	'LBISSOT',
	'650.124.5234',
	CONVERT(datetime, '20-AUG-1997'),
	'ST_CLERK',
	3300,
	NULL,
	121,
	50
	);

INSERT INTO dbo.employees
VALUES (
	130,
	'Mozhe',
	'Atkinson',
	'MATKINSO',
	'650.124.6234',
	CONVERT(datetime, '30-OCT-1997'),
	'ST_CLERK',
	2800,
	NULL,
	121,
	50
	);

INSERT INTO dbo.employees
VALUES (
	131,
	'James',
	'Marlow',
	'JAMRLOW',
	'650.124.7234',
	CONVERT(datetime, '16-FEB-1997'),
	'ST_CLERK',
	2500,
	NULL,
	121,
	50
	);

INSERT INTO dbo.employees
VALUES (
	132,
	'TJ',
	'Olson',
	'TJOLSON',
	'650.124.8234',
	CONVERT(datetime, '10-APR-1999'),
	'ST_CLERK',
	2100,
	NULL,
	121,
	50
	);

INSERT INTO dbo.employees
VALUES (
	133,
	'Jason',
	'Mallin',
	'JMALLIN',
	'650.127.1934',
	CONVERT(datetime, '14-JUN-1996'),
	'ST_CLERK',
	3300,
	NULL,
	122,
	50
	);

INSERT INTO dbo.employees
VALUES (
	134,
	'Michael',
	'Rogers',
	'MROGERS',
	'650.127.1834',
	CONVERT(datetime, '26-AUG-1998'),
	'ST_CLERK',
	2900,
	NULL,
	122,
	50
	);

INSERT INTO dbo.employees
VALUES (
	135,
	'Ki',
	'Gee',
	'KGEE',
	'650.127.1734',
	CONVERT(datetime, '12-DEC-1999'),
	'ST_CLERK',
	2400,
	NULL,
	122,
	50
	);

INSERT INTO dbo.employees
VALUES (
	136,
	'Hazel',
	'Philtanker',
	'HPHILTAN',
	'650.127.1634',
	CONVERT(datetime, '06-FEB-2000'),
	'ST_CLERK',
	2200,
	NULL,
	122,
	50
	);

INSERT INTO dbo.employees
VALUES (
	137,
	'Renske',
	'Ladwig',
	'RLADWIG',
	'650.121.1234',
	CONVERT(datetime, '14-JUL-1995'),
	'ST_CLERK',
	3600,
	NULL,
	123,
	50
	);

INSERT INTO dbo.employees
VALUES (
	138,
	'Stephen',
	'Stiles',
	'SSTILES',
	'650.121.2034',
	CONVERT(datetime, '26-OCT-1997'),
	'ST_CLERK',
	3200,
	NULL,
	123,
	50
	);

INSERT INTO dbo.employees
VALUES (
	139,
	'John',
	'Seo',
	'JSEO',
	'650.121.2019',
	CONVERT(datetime, '12-FEB-1998'),
	'ST_CLERK',
	2700,
	NULL,
	123,
	50
	);

INSERT INTO dbo.employees
VALUES (
	140,
	'Joshua',
	'Patel',
	'JPATEL',
	'650.121.1834',
	CONVERT(datetime, '06-APR-1998'),
	'ST_CLERK',
	2500,
	NULL,
	123,
	50
	);

INSERT INTO dbo.employees
VALUES (
	141,
	'Trenna',
	'Rajs',
	'TRAJS',
	'650.121.8009',
	CONVERT(datetime, '17-OCT-1995'),
	'ST_CLERK',
	3500,
	NULL,
	124,
	50
	);

INSERT INTO dbo.employees
VALUES (
	142,
	'Curtis',
	'Davies',
	'CDAVIES',
	'650.121.2994',
	CONVERT(datetime, '29-JAN-1997'),
	'ST_CLERK',
	3100,
	NULL,
	124,
	50
	);

INSERT INTO dbo.employees
VALUES (
	143,
	'Randall',
	'Matos',
	'RMATOS',
	'650.121.2874',
	CONVERT(datetime, '15-MAR-1998'),
	'ST_CLERK',
	2600,
	NULL,
	124,
	50
	);

INSERT INTO dbo.employees
VALUES (
	144,
	'Peter',
	'Vargas',
	'PVARGAS',
	'650.121.2004',
	CONVERT(datetime, '09-JUL-1998'),
	'ST_CLERK',
	2500,
	NULL,
	124,
	50
	);

INSERT INTO dbo.employees
VALUES (
	145,
	'John',
	'Russell',
	'JRUSSEL',
	'011.44.1344.429268',
	CONVERT(datetime, '01-OCT-1996'),
	'SA_MAN',
	14000,
	.4,
	100,
	80
	);

INSERT INTO dbo.employees
VALUES (
	146,
	'Karen',
	'Partners',
	'KPARTNER',
	'011.44.1344.467268',
	CONVERT(datetime, '05-JAN-1997'),
	'SA_MAN',
	13500,
	.3,
	100,
	80
	);

INSERT INTO dbo.employees
VALUES (
	147,
	'Alberto',
	'Errazuriz',
	'AERRAZUR',
	'011.44.1344.429278',
	CONVERT(datetime, '10-MAR-1997'),
	'SA_MAN',
	12000,
	.3,
	100,
	80
	);

INSERT INTO dbo.employees
VALUES (
	148,
	'Gerald',
	'Cambrault',
	'GCAMBRAU',
	'011.44.1344.619268',
	CONVERT(datetime, '15-OCT-1999'),
	'SA_MAN',
	11000,
	.3,
	100,
	80
	);

INSERT INTO dbo.employees
VALUES (
	149,
	'Eleni',
	'Zlotkey',
	'EZLOTKEY',
	'011.44.1344.429018',
	CONVERT(datetime, '29-JAN-2000'),
	'SA_MAN',
	10500,
	.2,
	100,
	80
	);

INSERT INTO dbo.employees
VALUES (
	150,
	'Peter',
	'Tucker',
	'PTUCKER',
	'011.44.1344.129268',
	CONVERT(datetime, '30-JAN-1997'),
	'SA_REP',
	10000,
	.3,
	145,
	80
	);

INSERT INTO dbo.employees
VALUES (
	151,
	'David',
	'Bernstein',
	'DBERNSTE',
	'011.44.1344.345268',
	CONVERT(datetime, '24-MAR-1997'),
	'SA_REP',
	9500,
	.25,
	145,
	80
	);

INSERT INTO dbo.employees
VALUES (
	152,
	'Peter',
	'Hall',
	'PHALL',
	'011.44.1344.478968',
	CONVERT(datetime, '20-AUG-1997'),
	'SA_REP',
	9000,
	.25,
	145,
	80
	);

INSERT INTO dbo.employees
VALUES (
	153,
	'Christopher',
	'Olsen',
	'COLSEN',
	'011.44.1344.498718',
	CONVERT(datetime, '30-MAR-1998'),
	'SA_REP',
	8000,
	.2,
	145,
	80
	);

INSERT INTO dbo.employees
VALUES (
	154,
	'Nanette',
	'Cambrault',
	'NCAMBRAU',
	'011.44.1344.987668',
	CONVERT(datetime, '09-DEC-1998'),
	'SA_REP',
	7500,
	.2,
	145,
	80
	);

INSERT INTO dbo.employees
VALUES (
	155,
	'Oliver',
	'Tuvault',
	'OTUVAULT',
	'011.44.1344.486508',
	CONVERT(datetime, '23-NOV-1999'),
	'SA_REP',
	7000,
	.15,
	145,
	80
	);

INSERT INTO dbo.employees
VALUES (
	156,
	'Janette',
	'King',
	'JKING',
	'011.44.1345.429268',
	CONVERT(datetime, '30-JAN-1996'),
	'SA_REP',
	10000,
	.35,
	146,
	80
	);

INSERT INTO dbo.employees
VALUES (
	157,
	'Patrick',
	'Sully',
	'PSULLY',
	'011.44.1345.929268',
	CONVERT(datetime, '04-MAR-1996'),
	'SA_REP',
	9500,
	.35,
	146,
	80
	);

INSERT INTO dbo.employees
VALUES (
	158,
	'Allan',
	'McEwen',
	'AMCEWEN',
	'011.44.1345.829268',
	CONVERT(datetime, '01-AUG-1996'),
	'SA_REP',
	9000,
	.35,
	146,
	80
	);

INSERT INTO dbo.employees
VALUES (
	159,
	'Lindsey',
	'Smith',
	'LSMITH',
	'011.44.1345.729268',
	CONVERT(datetime, '10-MAR-1997'),
	'SA_REP',
	8000,
	.3,
	146,
	80
	);

INSERT INTO dbo.employees
VALUES (
	160,
	'Louise',
	'Doran',
	'LDORAN',
	'011.44.1345.629268',
	CONVERT(datetime, '15-DEC-1997'),
	'SA_REP',
	7500,
	.3,
	146,
	80
	);

INSERT INTO dbo.employees
VALUES (
	161,
	'Sarath',
	'Sewall',
	'SSEWALL',
	'011.44.1345.529268',
	CONVERT(datetime, '03-NOV-1998'),
	'SA_REP',
	7000,
	.25,
	146,
	80
	);

INSERT INTO dbo.employees
VALUES (
	162,
	'Clara',
	'Vishney',
	'CVISHNEY',
	'011.44.1346.129268',
	CONVERT(datetime, '11-NOV-1997'),
	'SA_REP',
	10500,
	.25,
	147,
	80
	);

INSERT INTO dbo.employees
VALUES (
	163,
	'Danielle',
	'Greene',
	'DGREENE',
	'011.44.1346.229268',
	CONVERT(datetime, '19-MAR-1999'),
	'SA_REP',
	9500,
	.15,
	147,
	80
	);

INSERT INTO dbo.employees
VALUES (
	164,
	'Mattea',
	'Marvins',
	'MMARVINS',
	'011.44.1346.329268',
	CONVERT(datetime, '24-JAN-2000'),
	'SA_REP',
	7200,
	.10,
	147,
	80
	);

INSERT INTO dbo.employees
VALUES (
	165,
	'David',
	'Lee',
	'DLEE',
	'011.44.1346.529268',
	CONVERT(datetime, '23-FEB-2000'),
	'SA_REP',
	6800,
	.1,
	147,
	80
	);

INSERT INTO dbo.employees
VALUES (
	166,
	'Sundar',
	'Ande',
	'SANDE',
	'011.44.1346.629268',
	CONVERT(datetime, '24-MAR-2000'),
	'SA_REP',
	6400,
	.10,
	147,
	80
	);

INSERT INTO dbo.employees
VALUES (
	167,
	'Amit',
	'Banda',
	'ABANDA',
	'011.44.1346.729268',
	CONVERT(datetime, '21-APR-2000'),
	'SA_REP',
	6200,
	.10,
	147,
	80
	);

INSERT INTO dbo.employees
VALUES (
	168,
	'Lisa',
	'Ozer',
	'LOZER',
	'011.44.1343.929268',
	CONVERT(datetime, '11-MAR-1997'),
	'SA_REP',
	11500,
	.25,
	148,
	80
	);

INSERT INTO dbo.employees
VALUES (
	169,
	'Harrison',
	'Bloom',
	'HBLOOM',
	'011.44.1343.829268',
	CONVERT(datetime, '23-MAR-1998'),
	'SA_REP',
	10000,
	.20,
	148,
	80
	);

INSERT INTO dbo.employees
VALUES (
	170,
	'Tayler',
	'Fox',
	'TFOX',
	'011.44.1343.729268',
	CONVERT(datetime, '24-JAN-1998'),
	'SA_REP',
	9600,
	.20,
	148,
	80
	);

INSERT INTO dbo.employees
VALUES (
	171,
	'William',
	'Smith',
	'WSMITH',
	'011.44.1343.629268',
	CONVERT(datetime, '23-FEB-1999'),
	'SA_REP',
	7400,
	.15,
	148,
	80
	);

INSERT INTO dbo.employees
VALUES (
	172,
	'Elizabeth',
	'Bates',
	'EBATES',
	'011.44.1343.529268',
	CONVERT(datetime, '24-MAR-1999'),
	'SA_REP',
	7300,
	.15,
	148,
	80
	);

INSERT INTO dbo.employees
VALUES (
	173,
	'Sundita',
	'Kumar',
	'SKUMAR',
	'011.44.1343.329268',
	CONVERT(datetime, '21-APR-2000'),
	'SA_REP',
	6100,
	.10,
	148,
	80
	);

INSERT INTO dbo.employees
VALUES (
	174,
	'Ellen',
	'Abel',
	'EABEL',
	'011.44.1644.429267',
	CONVERT(datetime, '11-MAY-1996'),
	'SA_REP',
	11000,
	.30,
	149,
	80
	);

INSERT INTO dbo.employees
VALUES (
	175,
	'Alyssa',
	'Hutton',
	'AHUTTON',
	'011.44.1644.429266',
	CONVERT(datetime, '19-MAR-1997'),
	'SA_REP',
	8800,
	.25,
	149,
	80
	);

INSERT INTO dbo.employees
VALUES (
	176,
	'Jonathon',
	'Taylor',
	'JTAYLOR',
	'011.44.1644.429265',
	CONVERT(datetime, '24-MAR-1998'),
	'SA_REP',
	8600,
	.20,
	149,
	80
	);

INSERT INTO dbo.employees
VALUES (
	177,
	'Jack',
	'Livingston',
	'JLIVINGS',
	'011.44.1644.429264',
	CONVERT(datetime, '23-APR-1998'),
	'SA_REP',
	8400,
	.20,
	149,
	80
	);

INSERT INTO dbo.employees
VALUES (
	178,
	'Kimberely',
	'Grant',
	'KGRANT',
	'011.44.1644.429263',
	CONVERT(datetime, '24-MAY-1999'),
	'SA_REP',
	7000,
	.15,
	149,
	NULL
	);

INSERT INTO dbo.employees
VALUES (
	179,
	'Charles',
	'Johnson',
	'CJOHNSON',
	'011.44.1644.429262',
	CONVERT(datetime, '04-JAN-2000'),
	'SA_REP',
	6200,
	.10,
	149,
	80
	);

INSERT INTO dbo.employees
VALUES (
	180,
	'Winston',
	'Taylor',
	'WTAYLOR',
	'650.507.9876',
	CONVERT(datetime, '24-JAN-1998'),
	'SH_CLERK',
	3200,
	NULL,
	120,
	50
	);

INSERT INTO dbo.employees
VALUES (
	181,
	'Jean',
	'Fleaur',
	'JFLEAUR',
	'650.507.9877',
	CONVERT(datetime, '23-FEB-1998'),
	'SH_CLERK',
	3100,
	NULL,
	120,
	50
	);

INSERT INTO dbo.employees
VALUES (
	182,
	'Martha',
	'Sullivan',
	'MSULLIVA',
	'650.507.9878',
	CONVERT(datetime, '21-JUN-1999'),
	'SH_CLERK',
	2500,
	NULL,
	120,
	50
	);

INSERT INTO dbo.employees
VALUES (
	183,
	'Girard',
	'Geoni',
	'GGEONI',
	'650.507.9879',
	CONVERT(datetime, '03-FEB-2000'),
	'SH_CLERK',
	2800,
	NULL,
	120,
	50
	);

INSERT INTO dbo.employees
VALUES (
	184,
	'Nandita',
	'Sarchand',
	'NSARCHAN',
	'650.509.1876',
	CONVERT(datetime, '27-JAN-1996'),
	'SH_CLERK',
	4200,
	NULL,
	121,
	50
	);

INSERT INTO dbo.employees
VALUES (
	185,
	'Alexis',
	'Bull',
	'ABULL',
	'650.509.2876',
	CONVERT(datetime, '20-FEB-1997'),
	'SH_CLERK',
	4100,
	NULL,
	121,
	50
	);

INSERT INTO dbo.employees
VALUES (
	186,
	'Julia',
	'Dellinger',
	'JDELLING',
	'650.509.3876',
	CONVERT(datetime, '24-JUN-1998'),
	'SH_CLERK',
	3400,
	NULL,
	121,
	50
	);

INSERT INTO dbo.employees
VALUES (
	187,
	'Anthony',
	'Cabrio',
	'ACABRIO',
	'650.509.4876',
	CONVERT(datetime, '07-FEB-1999'),
	'SH_CLERK',
	3000,
	NULL,
	121,
	50
	);

INSERT INTO dbo.employees
VALUES (
	188,
	'Kelly',
	'Chung',
	'KCHUNG',
	'650.505.1876',
	CONVERT(datetime, '14-JUN-1997'),
	'SH_CLERK',
	3800,
	NULL,
	122,
	50
	);

INSERT INTO dbo.employees
VALUES (
	189,
	'Jennifer',
	'Dilly',
	'JDILLY',
	'650.505.2876',
	CONVERT(datetime, '13-AUG-1997'),
	'SH_CLERK',
	3600,
	NULL,
	122,
	50
	);

INSERT INTO dbo.employees
VALUES (
	190,
	'Timothy',
	'Gates',
	'TGATES',
	'650.505.3876',
	CONVERT(datetime, '11-JUL-1998'),
	'SH_CLERK',
	2900,
	NULL,
	122,
	50
	);

INSERT INTO dbo.employees
VALUES (
	191,
	'Randall',
	'Perkins',
	'RPERKINS',
	'650.505.4876',
	CONVERT(datetime, '19-DEC-1999'),
	'SH_CLERK',
	2500,
	NULL,
	122,
	50
	);

INSERT INTO dbo.employees
VALUES (
	192,
	'Sarah',
	'Bell',
	'SBELL',
	'650.501.1876',
	CONVERT(datetime, '04-FEB-1996'),
	'SH_CLERK',
	4000,
	NULL,
	123,
	50
	);

INSERT INTO dbo.employees
VALUES (
	193,
	'Britney',
	'Everett',
	'BEVERETT',
	'650.501.2876',
	CONVERT(datetime, '03-MAR-1997'),
	'SH_CLERK',
	3900,
	NULL,
	123,
	50
	);

INSERT INTO dbo.employees
VALUES (
	194,
	'Samuel',
	'McCain',
	'SMCCAIN',
	'650.501.3876',
	CONVERT(datetime, '01-JUL-1998'),
	'SH_CLERK',
	3200,
	NULL,
	123,
	50
	);

INSERT INTO dbo.employees
VALUES (
	195,
	'Vance',
	'Jones',
	'VJONES',
	'650.501.4876',
	CONVERT(datetime, '17-MAR-1999'),
	'SH_CLERK',
	2800,
	NULL,
	123,
	50
	);

INSERT INTO dbo.employees
VALUES (
	196,
	'Alana',
	'Walsh',
	'AWALSH',
	'650.507.9811',
	CONVERT(datetime, '24-APR-1998'),
	'SH_CLERK',
	3100,
	NULL,
	124,
	50
	);

INSERT INTO dbo.employees
VALUES (
	197,
	'Kevin',
	'Feeney',
	'KFEENEY',
	'650.507.9822',
	CONVERT(datetime, '23-MAY-1998'),
	'SH_CLERK',
	3000,
	NULL,
	124,
	50
	);

INSERT INTO dbo.employees
VALUES (
	198,
	'Donald',
	'OConnell',
	'DOCONNEL',
	'650.507.9833',
	CONVERT(datetime, '21-JUN-1999'),
	'SH_CLERK',
	2600,
	NULL,
	124,
	50
	);

INSERT INTO dbo.employees
VALUES (
	199,
	'Douglas',
	'Grant',
	'DGRANT',
	'650.507.9844',
	CONVERT(datetime, '13-JAN-2000'),
	'SH_CLERK',
	2600,
	NULL,
	124,
	50
	);

INSERT INTO dbo.employees
VALUES (
	200,
	'Jennifer',
	'Whalen',
	'JWHALEN',
	'515.123.4444',
	CONVERT(datetime, '17-SEP-1987'),
	'AD_ASST',
	4400,
	NULL,
	101,
	10
	);

INSERT INTO dbo.employees
VALUES (
	201,
	'Michael',
	'Hartstein',
	'MHARTSTE',
	'515.123.5555',
	CONVERT(datetime, '17-FEB-1996'),
	'MK_MAN',
	13000,
	NULL,
	100,
	20
	);

INSERT INTO dbo.employees
VALUES (
	202,
	'Pat',
	'Fay',
	'PFAY',
	'603.123.6666',
	CONVERT(datetime, '17-AUG-1997'),
	'MK_REP',
	6000,
	NULL,
	201,
	20
	);

INSERT INTO dbo.employees
VALUES (
	203,
	'Susan',
	'Mavris',
	'SMAVRIS',
	'515.123.7777',
	CONVERT(datetime, '07-JUN-1994'),
	'HR_REP',
	6500,
	NULL,
	101,
	40
	);

INSERT INTO dbo.employees
VALUES (
	204,
	'Hermann',
	'Baer',
	'HBAER',
	'515.123.8888',
	CONVERT(datetime, '07-JUN-1994'),
	'PR_REP',
	10000,
	NULL,
	101,
	70
	);

INSERT INTO dbo.employees
VALUES (
	205,
	'Shelley',
	'Higgins',
	'SHIGGINS',
	'515.123.8080',
	CONVERT(datetime, '07-JUN-1994'),
	'AC_MGR',
	12000,
	NULL,
	101,
	110
	);

INSERT INTO dbo.employees
VALUES (
	206,
	'William',
	'Gietz',
	'WGIETZ',
	'51hr5.123.8181',
	CONVERT(datetime, '07-JUN-1994'),
	'AC_ACCOUNT',
	8300,
	NULL,
	205,
	110
	);
 
/*Data for the table dependents */
INSERT INTO dbo.job_history
VALUES (
	102,
	CONVERT(datetime, '13-Jan-1993'),
	CONVERT(datetime, '24-Jul-1998'),
	'IT_PROG',
	60
	);

INSERT INTO dbo.job_history
VALUES (
	101,
	CONVERT(datetime, '21-Sep-1989'),
	CONVERT(datetime, '27-Oct-1993'),
	'AC_ACCOUNT',
	110
	);

INSERT INTO dbo.job_history
VALUES (
	101,
	CONVERT(datetime, '28-Oct-1993'),
	CONVERT(datetime, '15-Mar-1997'),
	'AC_MGR',
	110
	);

INSERT INTO dbo.job_history
VALUES (
	201,
	CONVERT(datetime, '27-Feb-1996'),
	CONVERT(datetime, '19-Dec-1999'),
	'MK_REP',
	20
	);

INSERT INTO dbo.job_history
VALUES (
	114,
	CONVERT(datetime, '24-Mar-1998'),
	CONVERT(datetime, '31-Dec-1999'),
	'ST_CLERK',
	50
	);

INSERT INTO dbo.job_history
VALUES (
	122,
	CONVERT(datetime, '01-Jan-1999'),
	CONVERT(datetime, '31-Dec-1999'),
	'ST_CLERK',
	50
	);

INSERT INTO dbo.job_history
VALUES (
	200,
	CONVERT(datetime, '17-Sep-1987'),
	CONVERT(datetime, '17-Jun-1993'),
	'AD_ASST',
	90
	);

INSERT INTO dbo.job_history
VALUES (
	176,
	CONVERT(datetime, '24-Mar-1998'),
	CONVERT(datetime, '31-Dec-1998'),
	'SA_REP',
	80
	);

INSERT INTO dbo.job_history
VALUES (
	176,
	CONVERT(datetime, '01-Jan-1999'),
	CONVERT(datetime, '31-Dec-1999'),
	'SA_MAN',
	80
	);

INSERT INTO dbo.job_history
VALUES (
	200,
	CONVERT(datetime, '01-Jul-1994'),
	CONVERT(datetime, '31-Dec-1998'),
	'AC_ACCOUNT',
	90
	);

/* *************************************************************** 
***************************FOREIGN KEYS***************************
**************************************************************** */

ALTER TABLE countries ADD FOREIGN KEY (region_id) REFERENCES regions(region_id);    
ALTER TABLE locations ADD FOREIGN KEY (country_id) REFERENCES countries(country_id);
ALTER TABLE departments ADD FOREIGN KEY (location_id) REFERENCES locations(location_id);
ALTER TABLE employees ADD FOREIGN KEY (job_id) REFERENCES jobs(job_id);
ALTER TABLE employees ADD FOREIGN KEY (department_id) REFERENCES departments(department_id);
ALTER TABLE employees ADD FOREIGN KEY (manager_id) REFERENCES employees(employee_id);
ALTER TABLE departments ADD FOREIGN KEY (manager_id) REFERENCES employees (employee_id);
ALTER TABLE job_history ADD FOREIGN KEY (employee_id) REFERENCES employees(employee_id);
ALTER TABLE job_history ADD FOREIGN KEY (job_id) REFERENCES jobs(job_id);
ALTER TABLE job_history ADD FOREIGN KEY (department_id) REFERENCES departments(department_id);
