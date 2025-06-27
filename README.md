Burak UYSAL
burakuysal@oratekbilisim.com
0532 525 45 36

Döküman: https://github.com/burakuysal8/sqlserverhrschema 
https://github.com/burakuysal8/sqlserverhrschema/blob/main/hr.sql
+
https://pastepool.com/#-querying_sqlserver


SQL (Structured Query Language) :

DML (Data Manupulation Language) - İnsert Update Delete Merge Select
DDL (Data Definition Language) - Create Alter Drop Rename Truncate
DCL (Data Control Language) - grant revoke deny
TCL (Transaction Control Language) - commit rollback savepoint
retrieval - SELECT


BEGIN TRAN
UPDATE;
SELECT;
COMMIT; / ROLLBACK;


RDBMS


OLTP (Online Transactional Processing) - DML
DWH (Datawarehouse) - Select


5-SELECT kolon_ismi1,kolon_ismi2,....
1-FROM    tablo_ismi1,tablo_ismi2,.....
2-WHERE kosul1 and/or kosul2 and/or ....
3-GROUP BY kolon_ismi1,kolon_ismi2,....
4-HAVING grup_kosulu1 and/or grup_kosulu2 and/or ....
6-ORDER BY kolon_ismi1,kolon_ismi2,....


SELECT kolon_ismi1,kolon_ismi2,....
FROM    tablo_ismi1,tablo_ismi2,.....
WHERE kosul1 and/or kosul2 and/or .... ın (SELECT kolon_ismi1,kolon_ismi2,....
FROM    tablo_ismi1,tablo_ismi2,.....
WHERE kosul1 and/or kosul2 and/or ....
GROUP BY kolon_ismi1,kolon_ismi2,....
HAVING grup_kosulu1 and/or grup_kosulu2 and/or ....
ORDER BY kolon_ismi1,kolon_ismi2,....)
GROUP BY kolon_ismi1,kolon_ismi2,....
HAVING grup_kosulu1 and/or grup_kosulu2 and/or ....
ORDER BY kolon_ismi1,kolon_ismi2,....



SoftwareDistribution
https://www.microsoft.com/tr-tr/sql-server/sql-server-downloads
https://go.microsoft.com/fwlink/p/?linkid=2215158&clcid=0x41f&culture=tr-tr&country=tr


https://dbeaver.io/

https://aka.ms/ssms/21/release/vs_SSMS.exe

https://sqlserverbuilds.blogspot.com/2018/01/sql-server-management-studio-ssms.html



SELECT *
FROM employees e 


SELECT EMP.FIRST_NAME
FROM employees EMP 


SELECT FIRST_NAME
FROM employees


SELECT EMP.first_name,EMP.last_name -- PROJECTION
FROM EMPLOYEES EMP


SELECT department_id, location_id
FROM   departments;


SELECT department_id, location_id FROM departments;

SELECT *
FROM DEPARTMENTS


SELECT 5*8

SELECT GETDATE() --2025-06-23 14:45:43.467


SELECT getdate()


SELECT last_name,salary,salary+300
from employees

select last_name,salary,salary*2
from employees


SELECT last_name, salary, 12*salary+100
FROM   employees;

SELECT last_name, salary, 12*(salary+100)
FROM   employees;


SELECT last_name, salary, 12*salary+100, 12*(salary+100), ((12*(salary+100)) - (12*salary+100))
FROM   employees;


SELECT last_name,   ((12*(salary+100)) - (12*salary+100)), salary, 12*salary+100,12*(salary+100)
FROM   employees;


SELECT last_name, job_id, salary, commission_pct
FROM   employees;


SELECT last_name, salary, commission_pct, 12*salary*commission_pct
FROM   employees;


SELECT last_name, salary, commission_pct, (salary*12) + (12*salary*commission_pct)
FROM   employees;


SELECT last_name, salary, commission_pct, (salary*12) + (12*salary* isnull(commission_pct,0))
FROM   employees;


SELECT last_name, salary, commission_pct, 
(salary*12) + (12*salary* isnull(commission_pct,0)) Yıllık_Maaş
FROM   employees;


SELECT last_name Soyad, salary Maaş, commission_pct Komisyon, 
(salary*12) + (12*salary* isnull(commission_pct,0)) "Yıllık Maaş"
FROM   employees;


SELECT last_name AS Soyad, commission_pct Komisyon
FROM   employees;


SELECT last_name Name , salary*12 "Annual Salary"
FROM   employees;



SELECT EMP.last_name Name , EMP.salary*12 "Annual Salary"
FROM   employees EMP;

SELECT EMP.hire_date,EMP.manager_id
FROM   employees EMP;


SELECT FIRST_NAME,LAST_NAME
FROM EMPLOYEES

SELECT FIRST_NAME + LAST_NAME + JOB_ID  AS INFO
FROM EMPLOYEES


SELECT 'bENİM ADIM bURAK'

SELECT ' '

SELECT FIRST_NAME + ' ' + LAST_NAME + ' ' + JOB_ID  AS INFO
FROM EMPLOYEES


Last Name: King (last_name) , Departmanı: 90(department_id), Salary: 24000(salary) .

Last Name: King, Departmanı: 90, Salary: 24000.


SELECT ' FIRST_NAME ' + ' ' + LAST_NAME + ' ' + JOB_ID  AS INFO
FROM EMPLOYEES


select 'Last Name: '+ e.last_name + ' Departmanı: ' + e.department_id + ', Salary: '+ e.salary
from employees e 


SELECT 'Last Name:' + e.last_name + ' Departman:' + CAST(e.department_id as varchar) + ' Salary:' + CAST(e.salary as varchar)
from employees e


Last Name: King, Departmanı: 90, Salary: 24000.


select 'Last Name: ' + last_name + ',  Departmanı: ' + cast(department_id as varchar) +
', Salary: ' + cast(salary as varchar)
from employees

---------------------------------------------------------------------------------------------------------------------------------


select 'Last Name: ' + last_name + ',  Departmanı: ' + cast(department_id as varchar) +
', Salary: ' + cast(salary as varchar)
from employees



select * from employees


select 'Last Name: ' + last_name
from employees


SELECT last_name + ' is a ' + job_id AS "Employee Details"
FROM   employees;


select department_id 
from employees


select DISTINCT department_id 
from employees

select department_id,JOB_ID
from employees


select DISTINCT department_id,JOB_ID
from employees

select DISTINCT department_id,JOB_ID,LAST_NAME
from employees


SELECT first_name, last_name, job_id, salary*12 AS "Yearly Sal"
FROM   employees; 


SELECT first_name, last_name, job_id, salary*12 "yearly sal"
FROM   employees; 

SELECT first_name, last_name, job_id, salary*12 AS "yearly sal"
FROM   employees; 

SELECT first_name, last_name, job_id, salary AS "yearly sal"
FROM   employees;

SELECT first_name + last_name AS name, job_Id, salary*12 "yearly sal"
FROM   employees;


SELECT first_name + last_name AS first_name, job_Id, salary*12 "yearly sal"
FROM   employees;

Projection - where koşulu yok


select department_id as "Dept",hire_date as "İşe Giriş",last_name "Soyad"
from employees
where department_id=90


select * from employees


select department_id as "Dept",hire_date as "İşe Giriş",last_name "Soyad"
from employees
where department_id='90'


select last_name,JOB_ID, manager_id
from employees
where last_name='kochhar'

select last_name,JOB_ID, manager_id,email
from employees
where email='sking'

select last_name,JOB_ID, manager_id,email
from employees
where email='skıng'

select last_name,JOB_ID, manager_id,email,hire_date
from employees
where hire_date='1987-06-17'


select last_name,JOB_ID, manager_id,email,hire_date
from employees
where hire_date='1987-JUNE-17'


select last_name,JOB_ID, manager_id,email,hire_date
from employees
where hire_date='1990-1-3'

select last_name,JOB_ID, manager_id,email,hire_date
from employees
where hire_date='1990/1/3'


select first_name,last_name,salary
from employees
where salary<5000

select first_name,last_name,salary
from employees
where salary>5000


select first_name,last_name,salary
from employees
where salary<=5000

select first_name,last_name,salary
from employees
where salary>=5000

select first_name,last_name,salary
from employees
where salary>=5000 and salary<=10000

select first_name,last_name,salary
from employees
where salary>=5000 or salary<=10000


select first_name,last_name,salary
from employees
where salary between 5000 and 10000
=
select first_name,last_name,salary
from employees
where salary>=5000 and salary<=10000


select first_name,last_name,salary
from employees
where last_name between 'A' and 'B'


select first_name,last_name,salary,hire_date
from employees
where hire_date between '1989-01-01' and '1999-01-01'


SELECT last_name, salary
FROM   employees
WHERE  salary <= 3000 ;

SELECT *
FROM   employees
WHERE  last_name = 'Abel';

SELECT last_name, salary
FROM   employees
WHERE  salary BETWEEN 2500 AND 3500 ;


select e.first_name,e.last_name,e.manager_id
from employees e
where manager_id=100 or manager_id=101 or manager_id=102
=
select e.first_name,e.last_name,e.manager_id
from employees e
where manager_id IN (100,101,102)


select e.first_name,e.last_name,E.salary
from employees e
where e.last_name IN ('king','russell','zlotkey')


LIKE
%   _


SELECT EMP.last_name,EMP.department_id,EMP.salary
FROM EMPLOYEES EMP
WHERE EMP.last_name LIKE 'K%'

SELECT EMP.last_name,EMP.department_id,EMP.salary
FROM EMPLOYEES EMP
WHERE EMP.last_name LIKE '%K%'

SELECT EMP.last_name,EMP.department_id,EMP.salary
FROM EMPLOYEES EMP
WHERE EMP.last_name LIKE '%K'

SELECT EMP.last_name,EMP.department_id,EMP.salary
FROM EMPLOYEES EMP
WHERE EMP.last_name LIKE '%%K%'


SELECT EMP.last_name,EMP.department_id,EMP.salary
FROM EMPLOYEES EMP
WHERE EMP.last_name LIKE '__K%'

SELECT EMP.last_name,EMP.department_id,EMP.salary
FROM EMPLOYEES EMP
WHERE EMP.last_name LIKE '__K__'

SELECT EMP.last_name,EMP.department_id,EMP.salary
FROM EMPLOYEES EMP
WHERE EMP.last_name LIKE '__K__%'

Mikkilineni
Atkinson

SELECT EMP.last_name,EMP.department_id,EMP.salary
FROM EMPLOYEES EMP
WHERE EMP.last_name LIKE '%__K__%'

SELECT EMP.last_name,EMP.department_id,EMP.salary
FROM EMPLOYEES EMP
WHERE EMP.last_name LIKE '%_K_%'

SELECT last_name
FROM   employees
WHERE  last_name LIKE '_o%' ;


SELECT last_name,job_id
FROM EMPLOYEES
where job_id LIKE '__/_/%%' ESCAPE '/'

AD_PRES
IT_PROG
FI_ACCOUNT


select first_name,last_name,salary
from employees
where salary NOT between 5000 and 10000

SELECT EMP.last_name,EMP.department_id,EMP.salary
FROM EMPLOYEES EMP
WHERE EMP.last_name NOT LIKE '__K%'


select e.first_name,e.last_name,e.manager_id
from employees e
where manager_id NOT IN (100,101,102)


select e.first_name,e.last_name,e.manager_id
from employees e
where manager_id IN (100,101,102)


select e.first_name,e.last_name,e.manager_id
from employees e
where manager_id is NULL


select e.first_name,e.last_name,ISNULL(e.manager_id,0) AS MngID
from employees e
where manager_id is NULL


select e.first_name,e.last_name,e.manager_id
from employees e
where manager_id NOT IN (100,101,102) or manager_id is NULL


select e.first_name,e.last_name,e.manager_id
from employees e
where isnull(manager_id,0) not in (100,101,102,0)


select e.first_name,e.last_name,e.manager_id
from employees e
where isnull(manager_id,0) not in (100,101,102)
=
select e.first_name,e.last_name,e.manager_id
from employees e
where manager_id NOT IN (100,101,102) or manager_id is NULL

SELECT employee_id, last_name, job_id, salary
FROM   employees
WHERE  salary >= 10000 AND  job_id LIKE '%MAN%' ;


SELECT employee_id, last_name, job_id, salary
FROM   employees
WHERE  salary >= 10000 OR job_id LIKE '%MAN%' ;


SELECT last_name, job_id
FROM   employees
WHERE  job_id NOT IN ('IT_PROG', 'ST_CLERK', 'SA_REP');
=
SELECT last_name, job_id
FROM   employees
WHERE  job_id <>'IT_PROG' and job_id <>'ST_CLERK' and job_id <> 'SA_REP'


SELECT last_name, department_id, salary
FROM   employees
WHERE  department_id = 60 OR department_id = 80 AND salary > 10000;

SELECT last_name, department_id, salary
FROM   employees
WHERE (department_id = 60 OR (department_id = 80 AND salary > 10000))

SELECT last_name, department_id, salary
FROM   employees
WHERE  ((department_id = 60 OR department_id = 80) AND salary > 10000);
=
SELECT last_name, department_id, salary
FROM   employees
WHERE  department_id IN (60,80) AND salary > 10000


SELECT first_name,last_name,salary
from employees
where department_id=100
ORDER BY SALARY 


SELECT first_name,last_name,salary
from employees
where department_id=100
ORDER BY SALARY DESC


SELECT e.hire_date,e.department_id,e.job_id,salary
from employees e
order by e.hire_date


SELECT e.hire_date,e.department_id,e.job_id,salary
from employees e
order by e.hire_date desc,e.salary desc, department_id


SELECT e.hire_date hdate,e.department_id did,e.job_id jid,salary sal
from employees e
order by hdate


SELECT e.hire_date hdate,e.department_id did,e.job_id jid,salary sal
from employees e
order by 1 desc,4 desc,2 asc
=
SELECT e.hire_date,e.department_id,e.job_id,salary
from employees e
order by e.hire_date desc,e.salary desc, department_id asc


SELECT   last_name, job_id, department_id, hire_date
FROM     employees
ORDER BY department_id DESC ;

SELECT   last_name, job_id, isnull(department_id,0) as did, hire_date
FROM     employees
ORDER BY department_id ;

SELECT employee_id, last_name, salary*12 annsal
FROM   employees
ORDER BY annsal ;


SELECT employee_id, last_name, salary*12 annsal
FROM   employees
ORDER BY salary*12 ;

SELECT   last_name, job_id, department_id, hire_date
FROM     employees
ORDER BY 3 (--department_id);

SELECT last_name, department_id, salary
FROM   employees
ORDER BY department_id, salary DESC;


select top 20 e.employee_id , e.last_name ,e.job_id  from employees e;


select e.employee_id EMPLOYEE_ID, e.last_name LAST_NAME, e.job_id JOB_ID, 
FORMAT(e.hire_date, 'dd-MMM-yyyy') AS FormattedDate 
from employees e


select TOP 20 e.employee_id,e.last_name,e.job_id,e.hire_date as STARTDATE
from employees e 
ORDER BY employee_id


select TOP 20 e.employee_id,e.last_name,e.job_id,
FORMAT(e.hire_date, 'dd-MMM-yyyy') as STARTDATE
from employees e 
ORDER BY employee_id

select e.employee_id,e.last_name,e.job_id,e.hire_date as STARTDATE
from employees e 

select DISTINCT e.job_id AS "JOB_ID"
from employees e


SELECT last_name + ', ' + job_id as "Employee and Title"
from employees
order by last_name



select cast(employee_id as varchar) + ', ' + first_name + ', ' + last_name + ', ' +
email + ', ' + phone_number + ', ' + job_id + ', ' + cast(isnull(manager_id,0) as varchar) 
+ ', ' + cast(hire_date as varchar) + ', ' + cast(salary as varchar) + ', ' + 
isnull(cast(commission_pct as varchar),'Yok') + ', ' + cast(isnull(department_id,0) as varchar) 
as "THE_OUTPUT"
from employees


SELECT LAST_NAME,SALARY
FROM EMPLOYEES
WHERE SALARY > 12000


SELECT LAST_NAME,DEPARTMENT_ID
FROM EMPLOYEES
WHERE employee_id=176

SELECT LAST_NAME,SALARY 
FROM EMPLOYEES
WHERE SALARY NOT BETWEEN 5000 AND 12000
=
SELECT LAST_NAME,SALARY 
FROM EMPLOYEES
WHERE SALARY<5000 OR SALARY>12000


SELECT LAST_NAME, JOB_ID, HIRE_DATE
FROM EMPLOYEES
WHERE LAST_NAME IN ('Matos','Taylor')
order by hire_date asc
=
SELECT LAST_NAME, JOB_ID, HIRE_DATE
FROM EMPLOYEES
WHERE LAST_NAME ='Matos' or last_name='Taylor'
order by hire_date asc


select last_name,department_id
from employees
where department_id IN (20,50) 
ORDER BY LAST_NAME ASC


SELECT last_name AS Employee, salary as "Monthly Salary"
FROM employees
where salary between 5000 and 12000 and department_id IN (20,50)

SELECT last_name AS Employee, salary as "Monthly Salary"
FROM employees
where ((salary >= 5000 AND SALARY <= 12000) and (department_id =20 OR DEPARTMENT_ID=50))


---------------------------------------------------------------------------------------------------------------------------------


int
varchar
date


select * from employees
select first_name + ' ' + cast(salary as varchar)
from employees


1
'1'

SELECT CAST(1 AS VARCHAR)

select *
from employees
order by 1
offset 0 rows fetch first 5 rows only;


select top 5 *
from employees

select *
from employees
order by 1
OFFSET 5 ROWS FETCH NEXT 5 ROWS ONLY;


select top 5 *
from employees
order by salary desc

select *
from employees
order by salary desc
offset 0 rows fetch first 5 rows only;

SELECT LAST_NAME, UPPER(LAST_NAME)
FROM EMPLOYEES


SELECT FIRST_NAME,UPPER(LAST_NAME) AS UPPER
FROM EMPLOYEES
WHERE UPPER(LAST_NAME)='ATKINSON'


SELECT LAST_NAME,LOWER(LAST_NAME) AS LOWER
FROM EMPLOYEES


SELECT FIRST_NAME,LOWER(LAST_NAME) AS LOWER
FROM EMPLOYEES
WHERE LOWER(LAST_NAME)='ernst'

SELECT FIRST_NAME,LOWER(LAST_NAME) AS LOWER
FROM EMPLOYEES
WHERE LOWER(LAST_NAME)='ERNST'

SELECT FIRST_NAME,LOWER(LAST_NAME) AS LOWER
FROM EMPLOYEES
WHERE LOWER(LAST_NAME)=LOWER('ERNST')

SELECT FIRST_NAME,LAST_NAME,LOWER(LAST_NAME) AS LOWER
FROM EMPLOYEES
WHERE LAST_NAME='ERNST'

SELECT FIRST_NAME,LAST_NAME,LOWER(LAST_NAME) AS LOWER
FROM EMPLOYEES
WHERE LAST_NAME='aUSTIN'


SELECT FIRST_NAME,LAST_NAME,(LAST_NAME) AS LOWER
FROM EMPLOYEES
WHERE LAST_NAME='ERNST'


CONCAT

SELECT FIRST_NAME + ' ' + LAST_NAME
FROM employees

SELECT CONCAT(FIRST_NAME,LAST_NAME)
FROM EMPLOYEES

SELECT CONCAT(FIRST_NAME,' ' ,LAST_NAME)
FROM EMPLOYEES

SELECT CONCAT(FIRST_NAME,' ' , LAST_NAME, ' ' ,DEPARTMENT_ID)
FROM EMPLOYEES
=
SELECT CONCAT_WS(' ',FIRST_NAME,LAST_NAME,DEPARTMENT_ID)
FROM EMPLOYEES


SELECT CONCAT_WS(', ',FIRST_NAME,LAST_NAME,DEPARTMENT_ID)
FROM EMPLOYEES


SELECT LAST_NAME,SUBSTRING(LAST_NAME,1,3) AS SUBSTR
FROM EMPLOYEES

Kochhar
1234567


SELECT LAST_NAME,SUBSTRING(LAST_NAME,5,1) AS SUBSTR
FROM EMPLOYEES

SELECT LAST_NAME,SUBSTRING(LAST_NAME,1,1) AS SUBSTR
FROM EMPLOYEES


SELECT LAST_NAME
FROM EMPLOYEES
WHERE SUBSTRING(LAST_NAME,1,1)='a'


SELECT LAST_NAME
FROM EMPLOYEES
WHERE LOWER(SUBSTRING(LAST_NAME,1,1))='a'
=
SELECT LAST_NAME
FROM EMPLOYEES
WHERE LAST_NAME LIKE 'A%'


select last_name,len(last_name)
from employees


select last_name
from employees
where SUBSTRING(last_name,len(last_name),1)='a'
=
select last_name
from employees
where RIGHT(last_name,1)='a'
=
select last_name
from employees
where last_name like '%a'

select CHARINDEX('W','HelloWorld')


select charindex('a',last_name),last_name
from employees

select *
from employees
where charindex('a',last_name)<>0
=
select *
from employees
where last_name like '%a%'

SELECT last_name, CONCAT('Job category is ', job_id) "Job" 
FROM employees
WHERE SUBSTRING (job_id, 4,3) = 'REP';

AD_VP
IT_PROG
SA_REP


SELECT employee_id, CONCAT(first_name, last_name) NAME,
LEN (last_name) "Last Name Length", CHARINDEX('a',last_name) "Contains 'a'?"
FROM   employees
WHERE  SUBSTRING (last_name, len(last_name),1) = 'n';



SELECT last_name,
  UPPER(CONCAT(SUBSTRING(LAST_NAME, 1, 5), '_US'))
FROM   employees
WHERE  department_id = 60;


SELECT last_name,
  UPPER(CONCAT(SUBSTRING(LAST_NAME, 1, 5),'_US'))
FROM   employees
WHERE  department_id = 60;


select last_name
from employees
where RIGHT(last_name,1)='a'

select last_name
from employees
where LEFT(last_name,1)='a'

SELECT REPLACE (LAST_NAME,'Austin','Burak')
from employees
where last_name='Austin'

select replicate('a',5) --aaaaa

select '..........' + last_name + replicate('.', 20-len(last_name))
from employees

King......
Kochhar...
De Haan...
Hunold....
Ernst.....


select last_name, reverse(last_name)
from employees

King	gniK


TRIM

SELECT RTRIM('SQL TEST                         ')  AS TEST

SELECT LTRIM(RTRIM('              SQL TEST                         '))  AS TEST

SELECT TRIM('SQL TEST                         ')  AS TEST


4   5  .  9 2 6
-2 -1  0  1 2 3 

SELECT ROUND(45.926, 2)  45.930

0,1,2,3,4 = 0
5,6,7,8,9,10=1

SELECT ROUND(45.923, 2)  45.920

SELECT ROUND(45.953, 1)  46.000

SELECT ROUND(45.923, 1)  45.900

SELECT ROUND(45.953, 0)  46.000

SELECT ROUND(45.953, -1) 50.000

SELECT ROUND(42.953, -1) 40.000

SELECT ROUND(42.953, -2) 0.000

SELECT ROUND(52.953, -2) Arithmetic overflow error converting expression to data type numeric.

SELECT ceiling(45.923),floor(45.923)

SELECT ceiling(45.111),floor(45.923)

SELECT ceiling(45.111),floor(45.111)


SELECT ceiling(45.923),floor(45.923),ROUND(45.953, 0) 

select power(5,3)

select pi() 3.14159265358979

select SQUARE(16)

select SQRT(16)

select log(2)  0.693147180559945

select rand()

select rand(3)

select rand()*(10-5)+5

select rand()*(10-5+1)+5

select min(salary),max(salary),avg(salary),count(salary)
from employees


select count(*) from employees

select count(salary) from employees

select count(commission_pct) from employees

select count(isnull(commission_pct,0)) from employees


select getdate() -- 2025-06-25 13:54:27.163

select CURRENT_TIMESTAMP --2025-06-25 13:55:19.350

select getdate()-hire_date
from employees

select CURRENT_TIMESTAMP-hire_date
from employees

select last_name,datediff(day,hire_date,getdate())
from employees
order by 2 desc

select last_name,datediff(week,hire_date,getdate())
from employees
order by 2 desc

select last_name,datediff(month,hire_date,getdate())
from employees
order by 2 desc

select last_name,datediff(year,hire_date,getdate())
from employees
order by 2 desc

select datediff(year,'1999-01-01','2025-01-01')


select last_name,datediff(second,hire_date,getdate())
from employees
order by 2 desc


year
quarter
month
week
weekday
day
dayofyear
hour
minute
second
millisecond

select DATEADD(day,1,'31-JAN-16') --2016-02-01 00:00:00.000

select DATEADD(month,1,'31-JAN-16') --2016-02-29 00:00:00.000

select DATEPART(month,GETDATE())

select DATEPART(weekday,GETDATE())

select *
from employees
where DATEPART(day,hire_date)=25

select *
from employees
where right(hire_date,2)=25

select SYSDATETIME() --2025-06-25 14:08:42.3332872


select month(getdate()) --6
select year(getdate()) --2025
select day(getdate()) --25

select EOMONTH('01-APR-16') --2016-04-30

SELECT employee_id, format(hire_date, 'dd-MM-yyyy') Month_Hired
FROM   employees
WHERE  last_name = 'Higgins'; --07-06-1994


SELECT employee_id, hire_date,format(hire_date, 'dd/MM/yyyy') Month_Hired
FROM   employees
WHERE  last_name = 'Higgins';

select format(123456789, '##-##-#####') -- 12-34-56789


select commission_pct,ISNULL(commission_pct,0) from employees

select commission_pct,ISNULL(cast(commission_pct as varchar),'Yok') from employees

select ISNULL(job_id,'No Job Yet')
from employees

select ISNULL(hire_date,'01-JAN-97')
from employees

SELECT last_name, salary, ISNULL(commission_pct, 0),
   (salary*12) + (salary*12* ISNULL (commission_pct, 0)) AN_SAL
FROM employees;

SELECT last_name, salary, ISNULL(commission_pct, 0),
   (salary*12) + (salary*12* commission_pct) AN_SAL
FROM employees;


SELECT first_name, LEN(first_name) "expr1", 
       last_name,  LEN(last_name)  "expr2",
       NULLIF(LEN(first_name), LEN(last_name)) result
FROM   employees;


SELECT first_name, LEN(first_name) "expr1", 
       last_name,  LEN(last_name)  "expr2"
from employees
where LEN(first_name)=LEN(last_name)


select last_name,salary,commission_pct,department_id,
coalesce(department_id,commission_pct,salary)
from employees


select last_name,salary,manager_id,department_id,
coalesce(department_id,manager_id,salary)
from employees

select last_name,salary,manager_id,commission_pct,
coalesce(manager_id,commission_pct,salary)
from employees


select last_name,job_id,salary,
    CASE job_id 
        WHEN 'IT_PROG' THEN SALARY*1.1
        WHEN 'ST_CLERK' THEN SALARY*1.2
        WHEN 'SA_REP' THEN SALARY*1.3
    ELSE SALARY
    END AS SALARIES,
    department_id
from employees


select last_name,job_id,salary,
    CASE  
        WHEN job_id='IT_PROG' THEN SALARY*1.1
        WHEN job_id='ST_CLERK' THEN SALARY*1.2
        WHEN job_id='SA_REP' THEN SALARY*1.3
    ELSE SALARY
    END AS SALARIES,
    department_id
from employees


SELECT DEPARTMENT_ID,SALARY,
    CASE
    WHEN DEPARTMENT_ID=10 THEN SALARY*1.1
    WHEN DEPARTMENT_ID IN (20,30,40,50) THEN SALARY*1.2
    WHEN DEPARTMENT_ID>60 THEN SALARY*1.3
    ELSE SALARY
    END
FROM employees


SELECT last_name,salary, 
(CASE WHEN salary<5000 THEN 'Low' 
      WHEN salary<10000 THEN 'Medium' 
      WHEN salary<20000 THEN 'Good' 
      ELSE 'Excellent' 
END) qualified_salary 
FROM employees;


SELECT LAST_NAME,HIRE_DATE
FROM EMPLOYEES
WHERE HIRE_DATE LIKE '2000%'
=
SELECT LAST_NAME,HIRE_DATE
FROM EMPLOYEES
WHERE YEAR(HIRE_DATE)=2000
=
SELECT LAST_NAME,HIRE_DATE
FROM EMPLOYEES
WHERE DATEPART(YEAR,HIRE_DATE)=2000


SELECT LAST_NAME, JOB_ID
FROM EMPLOYEES
WHERE MANAGER_ID IS NULL

select last_name,salary,commission_pct
from employees
where commission_pct is NOT NULL
order by salary desc, commission_pct desc

select last_name
from employees
where last_name like '__a%'
=
select last_name
from employees
where SUBSTRING(last_name,3,1)='a'

select last_name
from employees
where last_name like '%a%' and last_name like '%e%'

select last_name
from employees
where last_name like '%a%e%' or last_name like '%e%a%'

select last_name,job_id,salary
from employees
where job_id IN ('ST_CLERK','SA_REP') AND SALARY NOT IN (2500,3500,7000)


select employee_id,last_name,salary, salary*1.155 as "New Salary",
salary*1.155 - salary as Increase
from employees

select last_name ,datediff(MONTH,hire_date,getdate()) from employees

---------------------------------------------------------------------------------------------------------------------------------


select
from
where
group by 
having
order by 


select avg(salary)
from employees

SELECT cast(round(AVG(salary),0) as int), MAX(salary),MIN(salary), SUM(salary),count(salary)
FROM   employees
WHERE  job_id LIKE '%REP%';

SELECT MIN(hire_date), MAX(hire_date)  --1987-06-17	2000-04-21
FROM	  employees;


SELECT COUNT(*)
FROM   employees
WHERE  department_id = 50;


SELECT COUNT(commission_pct)
FROM   employees
WHERE  department_id = 50;


SELECT COUNT(isnull(commission_pct,0))
FROM   employees
WHERE  department_id = 50;


SELECT COUNT(DISTINCT department_id)
FROM   employees


SELECT DISTINCT department_id
FROM   employees;


SELECT COUNT(DISTINCT department_id)
FROM   departments


SELECT AVG(commission_pct)
FROM   employees;


SELECT AVG(isnull(commission_pct,0))
FROM   employees;


select department_id,avg(salary)
from employees

select department_id,cast(avg(salary) as int) as avg
from employees
group by department_id
order by 2 desc


select department_id,cast(avg(salary) as int) as avg
from employees
group by department_id
order by 1 asc


select avg(salary)
from employees
group by department_id


select avg(salary) avg,MAX(salary) max,MIN(salary) min, SUM(salary) sum,count(salary) cnt
from employees
group by department_id
order by 5 desc


select department_id,avg(salary) avg,MAX(salary) max,
MIN(salary) min, SUM(salary) sum,count(salary) cnt
from employees
group by department_id
order by 1 


select department_id,avg(salary) avg,MAX(salary) max,
MIN(salary) min, SUM(salary) sum,count(salary) cnt
from employees
group by department_id
order by CASE WHEN department_id IS NULL 
			THEN 0 ELSE 1 END DESC


select department_id,JOB_ID,avg(salary),count(*)
from employees
group by department_id,JOB_ID
order by department_id


select department_id,JOB_ID,HIRE_DATE,avg(salary),count(*)
from employees
group by department_id,JOB_ID,HIRE_DATE
order by department_id


select department_id,JOB_ID,format(HIRE_DATE,'yyyy'),avg(salary),count(*)
from employees
group by department_id,JOB_ID,format(HIRE_DATE,'yyyy')
order by department_id


select department_id,JOB_ID,format(HIRE_DATE,'yyyy'),format(HIRE_DATE,'MM'),
													avg(salary),count(*)
from employees
group by department_id,JOB_ID,format(HIRE_DATE,'yyyy'),format(HIRE_DATE,'MM')
order by department_id


SELECT   department_id, job_id, SUM(salary)
FROM     employees
WHERE	 department_id > 40
GROUP BY department_id, job_id 
ORDER BY department_id;


SELECT department_id, COUNT(last_name)
FROM   employees;


SELECT department_id, job_id, COUNT(last_name)
FROM   employees
GROUP BY department_id;


SELECT department_id, job_id, COUNT(last_name)
FROM   employees
GROUP BY department_id, job_id
ORDER BY department_id, job_id;


SELECT   department_id, AVG(salary)
FROM     employees
WHERE    AVG(salary) > 8000
GROUP BY department_id;


SELECT   department_id, AVG(salary)
FROM     employees
GROUP BY department_id
HAVING AVG(salary) > 8000


SELECT   department_id, AVG(salary)
FROM     employees
WHERE SALARY>8000
GROUP BY department_id
HAVING AVG(salary) > 8000


5.SELECT   job_id, SUM(salary) PAYROLL
1.FROM     employees
2.WHERE    job_id NOT LIKE '%REP%'
3.GROUP BY job_id
4.HAVING   SUM(salary) > 13000
6.ORDER BY SUM(salary);


SELECT   job_id, SUM(salary) PAYROLL
FROM     employees
WHERE    job_id NOT LIKE '%REP%'
GROUP BY job_id
HAVING   SUM(salary) > 13000
ORDER BY SUM(salary);


SELECT   MAX(AVG(salary))
FROM     employees
GROUP BY department_id;


SELECT 
last_name,
RIGHT(REPLICATE('$', 15) + CAST(salary AS VARCHAR), 15) AS Salary
FROM employees

$$$$$$$17000.00
$$$$$$$$9000.00


select last_name as LAST_NAME, 
replicate('$',15-len(cast(salary as int)))+cast(cast(salary as int)as varchar) as SALARY
from employees

$$$$$$$$$$17000
$$$$$$$$$$$9000

SELECT LAST_NAME, 
REPLICATE('$',15-LEN(FLOOR(SALARY)))+CAST(FLOOR(SALARY) as varchar)   AS SALARY
FROM employees

$$$$$$$$$$17000
$$$$$$$$$$$9000

SELECT LAST_NAME,
right(REPLICATE('$', 15) + CAST(CAST(SALARY AS INT) AS varchar), 15) AS SALARY
FROM employees;

$$$$$$$$$$17000
$$$$$$$$$$$9000

select last_name, 
RIGHT(REPLICATE('$$$$$$$$$$',15)+ CAST (salary as varchar),15) as salary
from employees

$$$$$$$17000.00
$$$$$$$$9000.00


select cast(floor(salary) as varchar) from employees

select salary from employees

SELECT last_name,salary,
REPLICATE('*', ROUND(salary / 1000,0)) AS Salaries_in_asterisk
FROM employees
order by 3 desc

select last_name,salary,cast(salary/1000 as int) as '*_sayısı',
replicate('*', cast(salary / 1000 AS INT))
from employees

select last_name as LAST_NAME,SALARY,
replicate('*',floor(salary/1000)) as SALARIES_IN_ASTERISK
from employees
order by SALARIES_IN_ASTERISK desc

SELECT LAST_NAME,
    right(REPLICATE('$', 15) + CAST(CAST(SALARY AS INT) AS varchar), 15) AS SALARY
FROM employees;

select last_name,
 REPLICATE('*', salary / 1000) AS salary
 from employees
 order by salary Desc


select last_name,SALARY,
left('*' + replicate('*',round(salary/1000, 0)),round(salary/1000, 0)) 
from employees


SELECT CONCAT(last_name, ' earns $', 
cast(salary as int),' monthly but wants',' $',cast((salary*3) as int)) AS dreamsalary
FROM employees;

King earns $24000 monthly but wants $72000

SELECT last_name + ' earns ' +
    CAST(floor(salary) AS VARCHAR) + ' monthly but wants ' + 
    CAST(floor(salary) * 3 AS VARCHAR) AS "Dream Salaries" ,
      (salary * 3 - salary) AS Beklenti 
FROM employees  

select
last_name+' earns $'+cast(floor(salary) as varchar)+' monthly but wants $'+cast((floor(salary)*3) as varchar)
from employees



SELECT LAST_NAME, ISNULL(cast(commission_pct AS VARCHAR),'No Commission')   AS COMM
FROM employees

select job_id,
	CASE JOB_ID 
	WHEN 'AD_PRES' THEN 'A'
	WHEN 'ST_MAN' THEN 'B'
	WHEN 'IT_PROG' THEN 'C'
	WHEN 'SA_REP' THEN 'D'
	WHEN 'ST_CLERK' THEN 'E'
	ELSE '0'
	END
FROM employees


select job_id,
	CASE  
	WHEN JOB_ID='AD_PRES' THEN 'A'
	WHEN JOB_ID='ST_MAN' THEN 'B'
	WHEN JOB_ID IN ('IT_PROG','FI_ACCOUNT') THEN 'C'
	WHEN JOB_ID='SA_REP' THEN 'D'
	WHEN JOB_ID='ST_CLERK' THEN 'E'
	ELSE '0'
	END
FROM employees


select max(floor(salary)) "Maximum",min(floor(salary)) "Minimum",
		sum(floor(salary)) as Sum, floor(round(avg(salary),0)) as Average
from employees


select job_id AS JOB_ID,max(floor(salary)) "Maximum",min(floor(salary)) "Minimum",
		sum(floor(salary)) as Sum, floor(round(avg(salary),0)) as Average
from employees
group by job_id
		

SELECT job_id,count(*)
from employees
group by job_id

select count(distinct manager_id)
from employees

select max(salary)-min(salary) from employees

select manager_id,min(salary)
from employees
--where salary>6000
group by manager_id
having min(salary)>6000
order by min(salary) desc


select count(*) Total,
SUM(case when year(hire_date)='1997' then 1 else 0 end) AS "1997",
SUM(case when year(hire_date)='1998' then 1 else 0 end) AS "1998",
SUM(case when year(hire_date)='1999' then 1 else 0 end) AS "1999",
SUM(case when year(hire_date)='2000' then 1 else 0 end) AS "2000"
FROM EMPLOYEES
=
select count(*) Total,
count(case when year(hire_date)='1997' then 1  end) AS "1997",
count(case when year(hire_date)='1998' then 1  end) AS "1998",
count(case when year(hire_date)='1999' then 1  end) AS "1999",
count(case when year(hire_date)='2000' then 1  end) AS "2000"
FROM EMPLOYEES



Joins
-----

Primary Key - Unique + not null
Foreign Key


SELECT * FROM EMPLOYEES WHERE employee_id=100


SELECT employees.last_name,employees.salary,departments.department_name
FROM employees JOIN departments
on employees.department_id=departments.department_id
=
SELECT employees.last_name,employees.salary,departments.department_name
FROM employees INNER JOIN departments
on employees.department_id=departments.department_id
=
SELECT employees.last_name,employees.salary,departments.department_name
FROM employees , departments
where employees.department_id=departments.department_id


SELECT emp.last_name,emp.salary,dept.department_name
FROM employees emp JOIN departments dept
on emp.department_id=dept.department_id


SELECT emp.last_name,emp.salary,dept.department_name,dept.department_id
FROM employees emp JOIN departments dept
on emp.department_id=dept.department_id


SELECT last_name,salary,department_name,dept.department_id
FROM employees emp JOIN departments dept
on emp.department_id=dept.department_id


SELECT last_name,salary,department_name,dept.department_id,city
FROM employees emp JOIN departments dept
on emp.department_id=dept.department_id
JOIN locations loc 
on dept.location_id=loc.location_id


SELECT last_name,salary,department_name,dept.department_id,city,country_name,region_name
FROM employees emp JOIN departments dept
on emp.department_id=dept.department_id
JOIN locations loc 
on dept.location_id=loc.location_id


SELECT last_name,salary,department_name,dept.department_id,city,country_name,region_name
FROM employees emp JOIN departments dept
on emp.department_id=dept.department_id
JOIN locations loc 
on dept.location_id=loc.location_id
JOIN countries coun
ON coun.country_id=loc.country_id
JOIN regions reg
ON reg.region_id=coun.region_id


SELECT last_name,salary,department_name,dept.department_id,city,country_name,region_name
FROM employees emp , departments dept,locations loc ,countries coun,regions reg
where emp.department_id=dept.department_id and dept.location_id=loc.location_id
and coun.country_id=loc.country_id and reg.region_id=coun.region_id


---------------------------------------------------------------------------------------------------------------------------------


Joins
-----

Primary Key - Unique + not null
Foreign Key


SELECT * FROM EMPLOYEES WHERE employee_id=100


SELECT employees.last_name,employees.salary,departments.department_name
FROM employees JOIN departments
on employees.department_id=departments.department_id
=
SELECT employees.last_name,employees.salary,departments.department_name
FROM employees INNER JOIN departments
on employees.department_id=departments.department_id
=
SELECT employees.last_name,employees.salary,departments.department_name
FROM employees , departments
where employees.department_id=departments.department_id


SELECT emp.last_name,emp.salary,dept.department_name
FROM employees emp JOIN departments dept
on emp.department_id=dept.department_id


SELECT emp.last_name,emp.salary,dept.department_name,dept.department_id
FROM employees emp JOIN departments dept
on emp.department_id=dept.department_id


SELECT last_name,salary,department_name,dept.department_id
FROM employees emp JOIN departments dept
on emp.department_id=dept.department_id


SELECT last_name,salary,department_name,dept.department_id,city
FROM employees emp JOIN departments dept
on emp.department_id=dept.department_id
JOIN locations loc 
on dept.location_id=loc.location_id


SELECT last_name,salary,department_name,dept.department_id,city,country_name,region_name
FROM employees emp JOIN departments dept
on emp.department_id=dept.department_id
JOIN locations loc 
on dept.location_id=loc.location_id


SELECT last_name,salary,department_name,dept.department_id,city,country_name,region_name
FROM employees emp JOIN departments dept
on emp.department_id=dept.department_id
JOIN locations loc 
on dept.location_id=loc.location_id
JOIN countries coun
ON coun.country_id=loc.country_id
JOIN regions reg
ON reg.region_id=coun.region_id
=
SELECT last_name,salary,department_name,dept.department_id,city,country_name,region_name
FROM employees emp , departments dept,locations loc ,countries coun,regions reg
where emp.department_id=dept.department_id and dept.location_id=loc.location_id
and coun.country_id=loc.country_id and reg.region_id=coun.region_id


SELECT employee_id, city, department_name
FROM   employees e 
JOIN   departments d
ON     d.department_id = e.department_id 
JOIN   locations l
ON     d.location_id = l.location_id;


n-1


SELECT last_name,salary,department_name,dept.department_id,city,country_name,region_name
FROM employees emp , departments dept,locations loc ,countries coun,regions reg
where emp.department_id=dept.department_id and dept.location_id=loc.location_id
and coun.country_id=loc.country_id --cross join

106*4


SELECT last_name,salary,department_name,dept.department_id,city,country_name,region_name
FROM employees emp , departments dept,locations loc ,countries coun,regions reg --cross join
=
SELECT last_name,salary,department_name,dept.department_id,city,country_name,region_name
FROM employees emp cross join departments dept cross join locations loc 
cross join countries coun cross join regions reg


SELECT e.employee_id, e.last_name, e.department_id, 
       d.department_id, d.location_id
FROM   employees e JOIN departments d
ON     (e.department_id = d.department_id)
AND    e.manager_id = 149 ;
=
SELECT e.employee_id, e.last_name, e.department_id, 
       d.department_id, d.location_id
FROM   employees e JOIN departments d
ON     (e.department_id = d.department_id)
WHERE   e.manager_id = 149 ;



SELECT EMP.LAST_NAME AS "Çalışan Adı", mgr.last_name as "Yöneticisi Adı"
FROM EMPLOYEES EMP JOIN EMPLOYEES MGR
ON EMP.MANAGER_ID=MGR.EMPLOYEE_ID


CREATE TABLE JOB_GRADES(GRADE_LEVEL VARCHAR,LOWEST_SAL INT,HIGHEST_SAL INT)

INSERT INTO JOB_GRADES VALUES ('A',1000,2999);
INSERT INTO JOB_GRADES VALUES ('B',3000,5999);
INSERT INTO JOB_GRADES VALUES ('C',6000,9999);
INSERT INTO JOB_GRADES VALUES ('D',10000,14999);
INSERT INTO JOB_GRADES VALUES ('E',15000,24999);
INSERT INTO JOB_GRADES VALUES ('F',25000,40000);

COMMIT;


SELECT * FROM JOB_GRADES

--Lookup
SELECT E.last_name,E.SALARY,J.GRADE_LEVEL
FROM EMPLOYEES E JOIN JOB_GRADES J
ON E.SALARY BETWEEN J.LOWEST_SAL AND J.HIGHEST_SAL


SELECT employee_id, department_name
FROM   employees e INNER JOIN departments d
ON     d.department_id = e.department_id 


SELECT employee_id, department_name
FROM   employees e LEFT OUTER JOIN departments d
ON     d.department_id = e.department_id 

178	NULL

SELECT employee_id, department_name
FROM   employees e RIGHT OUTER JOIN departments d
ON     d.department_id = e.department_id 


SELECT * FROM departments
,

SELECT employee_id, department_name
FROM   departments d RIGHT OUTER JOIN employees e 
ON     d.department_id = e.department_id 
=
SELECT employee_id, department_name
FROM   employees e LEFT OUTER JOIN departments d
ON     d.department_id = e.department_id 


SELECT last_name,salary,department_name,dept.department_id,city,country_name,region_name
FROM employees emp LEFT OUTER JOIN departments dept
on emp.department_id=dept.department_id
 LEFT OUTER JOIN  locations loc 
on dept.location_id=loc.location_id
 LEFT OUTER JOIN  countries coun
ON coun.country_id=loc.country_id
 LEFT OUTER JOIN  regions reg
ON reg.region_id=coun.region_i



SELECT employee_id, department_name
FROM   employees e FULL OUTER JOIN departments d
ON     d.department_id = e.department_id 
=
SELECT employee_id, department_name
FROM   employees e FULL JOIN departments d
ON     d.department_id = e.department_id 


SELECT employee_id, department_name
FROM   departments d RIGHT OUTER JOIN employees e 
ON     d.department_id = e.department_id 
=
SELECT employee_id, department_name
FROM   departments d RIGHT JOIN employees e 
ON     d.department_id = e.department_id 


SELECT employee_id, department_name
FROM   employees e LEFT OUTER JOIN departments d
ON     d.department_id = e.department_id 
=
SELECT employee_id, department_name
FROM   employees e LEFT JOIN departments d
ON     d.department_id = e.department_id



SELECT location_id,street_address,city, state_province,country_name
from locations loc JOIN countries coun
ON loc.country_id=coun.country_id

select last_name,job_id,d.department_id,department_name
from employees e JOIN departments d
on e.department_id=d.department_id
JOIN locations l 
ON L.location_id=d.location_id
and l.city='Toronto'


select e.department_id as Department,e.last_name as Employee,c.last_name as Colleague
from employees e JOIN employees c
on e.department_id=c.department_id
and e.employee_id<>c.employee_id
order by 1,2,3

select e.department_id as Department,e.last_name as Employee,c.last_name as Colleague
from employees e left JOIN employees c
on e.department_id=c.department_id
and e.employee_id<>c.employee_id
order by 1,2,3



select salary
from employees
where last_name='Abel'

select last_name
from employees
where salary>11000


select last_name
from employees
where salary >	(select salary
				from employees
				where last_name='Abel')


select last_name
from employees
where salary >	(select salary
				from employees
				where last_name='King')


select last_name
from employees
where salary >	(select round(avg(salary),0)
				from employees
				where last_name='King')


select last_name
from employees
where salary >	(select salary
				from employees
				where last_name= (select last_name 
								  from employees
								  where employee_id= (select employee_id 
													  from employees
													  where first_name='Bruce')))
=
select last_name
from employees
where salary > 6000

select * from employees


select last_name
from employees
where salary >	6000



select last_name
from employees
where salary IN (SELECT salary 
				from employees
				where department_id=90)
=
select last_name
from employees
where salary IN (24000,17000,17000)


SELECT last_name, hire_date
FROM   employees 
WHERE  hire_date > (SELECT hire_date 
                    FROM   employees
                    WHERE  last_name = 'Davies');
=
SELECT last_name, hire_date
FROM   employees 
WHERE  hire_date > '1997-01-29';


Subquery returned more than 1 value. This is not permitted when the 
subquery follows =, !=, <, <= , >, >= or when the subquery is used as an expression.


select last_name,salary
from employees
where salary>	(select round(avg(salary),0) 
				from employees)
and 
	 hire_Date> (select max(hire_date)
				from employees
				where salary>10000)


select last_name,salary,department_name
from employees e JOIN departments d
On e.department_id=d.department_id
where salary>	(select round(avg(salary),0) 
				from employees)
and 
	 hire_Date> (select max(hire_date)
				from employees
				where salary>10000)


select *
from	(select last_name,salary,department_name
		from employees e JOIN departments d
		On e.department_id=d.department_id
		where salary>	(select round(avg(salary),0) 
						from employees)
		and 
			 hire_Date> (select max(hire_date)
						from employees
						where salary>15000)) emp
where emp.department_name='Finance'


select e.last_name,d.department_name
from employees e JOIN departments d
on e.department_id = d.department_id
and e.department_id IN (20,30,40,50) AND d.location_id=1800
=
select e.last_name,d.department_name
from 
(select last_name,department_id from employees where department_id IN (20,30,40,50)) e
JOIN 
(select department_id,department_name from departments where location_id=1800) d
on e.department_id=d.department_id



SELECT last_name, job_id, salary
FROM   employees
WHERE  job_id =  
                (SELECT job_id
                 FROM   employees
                 WHERE  last_name = 'Abel')
AND    salary >
                (SELECT salary
                 FROM   employees
                 WHERE  last_name = 'Abel')
=
SELECT last_name, job_id, salary
FROM   employees
WHERE  job_id = 'SA_REP'
AND    salary >11000



SELECT last_name, job_id, salary
FROM   employees
WHERE  salary = 
                (SELECT MIN(salary)
                 FROM   employees);


SELECT   department_id, MIN(salary)
FROM     employees
GROUP BY department_id
HAVING   MIN(salary) >
                       (SELECT MIN(salary)
                        FROM   employees
                        WHERE  department_id = 50);


SELECT employee_id, last_name
FROM   employees
WHERE  salary =
                (SELECT   MIN(salary)
                 FROM     employees
                 GROUP BY department_id);


SELECT last_name, job_id
FROM   employees
WHERE job_id =
                (SELECT job_id
                 FROM   jobs
                 WHERE  job_title = 'Architect');



SELECT employee_id, last_name, job_id, salary
FROM   employees
WHERE  salary <    any  (SELECT salary
                     FROM   employees
                     WHERE  job_id = 'IT_PROG')
AND    job_id <> 'IT_PROG';
=
SELECT employee_id, last_name, job_id, salary
FROM   employees
WHERE  salary <      (SELECT max(salary)
                     FROM   employees
                     WHERE  job_id = 'IT_PROG')
AND    job_id <> 'IT_PROG';

9000 
6000
4800
4200


SELECT employee_id, last_name, job_id, salary
FROM   employees
WHERE  salary <    all  (SELECT salary
                     FROM   employees
                     WHERE  job_id = 'IT_PROG')
AND    job_id <> 'IT_PROG';
=
SELECT employee_id, last_name, job_id, salary
FROM   employees
WHERE  salary <      (SELECT min(salary)
                     FROM   employees
                     WHERE  job_id = 'IT_PROG')
AND    job_id <> 'IT_PROG';


SELECT first_name, department_id, salary
FROM employees
WHERE salary IN (
      SELECT min(salary)
       FROM employees
)


SELECT emp.last_name
FROM   employees emp
WHERE  emp.employee_id NOT IN
                           (SELECT distinct mgr.manager_id
                            FROM   employees mgr);


SELECT E.last_name, e.job_id, e.department_id 
FROM employees e where e.department_id IN 
(select d.department_id from departments d where d.location_id 
IN (select l.location_id from locations l where l.city='Toronto'));


SELECT 
    last_name,job_id,department_id,
    (SELECT department_name 
     FROM departments 
     WHERE departments.department_id = employees.department_id) AS department_name
FROM 
    employees
WHERE 
    department_id = (
        SELECT department_id
        FROM departments
        WHERE location_id = (
            SELECT location_id
            FROM locations
            WHERE city = 'Toronto'
        )
    );


    
SELECT last_name,job_id,department_id,
       (SELECT department_name 
         FROM departments d 
         WHERE d.department_id = e.department_id) AS department_name,
             (SELECT city 
               FROM locations l 
              WHERE l.location_id = (SELECT location_id 
                                      FROM departments d 
                                      WHERE d.department_id = e.department_id)) AS city 
                                      FROM employees e
                                      WHERE department_id IN (SELECT department_id 
                                      FROM departments 
                                       WHERE location_id IN 
                                  (
                                     SELECT location_id 
                                      FROM locations 
                                    WHERE city = 'Toronto'))


select last_name,salary,hire_date,department_id,
max(salary) over () from employees
=
select last_name,salary,hire_date,department_id,(select max(salary) from employees)
from employees


select last_name,salary,hire_date,department_id,
max(salary) over (partition by department_id) from employees
order by department_id

select last_name,salary,hire_date,department_id,
rank() over(order by salary desc),
dense_rank() over(order by salary desc) from employees
order by 5

King	24000.00	1987-06-17	90	1
Kochhar	17000.00	1989-09-21	90	2
De Haan	17000.00	1993-01-13	90	2

King	24000.00	1987-06-17	90	1	1
Kochhar	17000.00	1989-09-21	90	2	2
De Haan	17000.00	1993-01-13	90	2	2
Russell	14000.00	1996-10-01	80	4	3
Partners13500.00	1997-01-05	80	5	4
Russell	14000.00	1996-10-01	80	4


select last_name,salary,
lag(salary) over (order by salary desc) 
from employees

select last_name,salary,
lead(salary) over (order by salary desc) 
from employees

select last_name, salary, ntile(4) over (order by salary desc)
from employees

select * from (
select last_name, salary, ntile(4) over (order by salary desc) as ntiles
from employees) a
where a.ntiles=4


select * from job_history

select * from employees


select employee_id,department_id,job_id from job_history where employee_id=101
UNION
select employee_id,department_id,job_id from employees where employee_id=101


select employee_id,department_id,job_id,start_date,end_date,'History'
from job_history where employee_id=101
UNION
select employee_id,department_id,job_id,hire_date,cast(null as date),'Emp'
from employees where employee_id=101


101	110	AC_ACCOUNT	1989-09-21	1993-10-27
101	110	AC_MGR		1993-10-28	1997-03-15
101	90	AD_VP		1989-09-21	NULL


A U B

select employee_id,department_id,'History'
from job_history where employee_id=101
UNION 
select employee_id,department_id,'Emp'
from employees where employee_id=101


select employee_id,department_id
from job_history where employee_id=101
UNION ALL
select employee_id,department_id
from employees where employee_id=101


select employee_id
from employees 
INTERSECT
select employee_id
from job_history 



select employee_id,department_id
from employees 
INTERSECT
select employee_id,department_id
from job_history 



A n B

select employee_id
from job_history 
INTERSECT
select employee_id
from employees 


A - B

select employee_id
from employees 
EXCEPT
select employee_id
from job_history 


select employee_id,department_id
from employees 
EXCEPT
select employee_id,department_id
from job_history 


a-b
select last_name,salary,hire_date,department_id,
max(salary) over () from employees
except
select last_name,salary,hire_date,department_id,(select max(salary) from employees)
from employees

b-a
select last_name,salary,hire_date,department_id,(select max(salary) from employees)
from employees
except
select last_name,salary,hire_date,department_id,
max(salary) over () from employees

a-b = b-a    a=b



SELECT location_id, department_name "Department", NULL "Warehouse location"  
FROM departments
UNION
SELECT location_id, NULL "Department",    state_province
FROM locations;


SELECT  employee_id, JOB_ID, hire_date "HIRE_DATE", null,1
FROM employees
UNION
SELECT employee_id, JOB_ID, start_date "HIRE_DATE",end_date,2
FROM job_history;


select department_id from departments
EXCEPT
select department_id from employees
where job_id='ST_CLERK'


select country_id,country_name
from countries
EXCEPT
select c.country_id,country_name
from locations l JOIN countries c
on c.country_id=l.country_id 
JOIN departments d
on d.location_id=l.location_id


SELECT EMPLOYEE_ID
FROM EMPLOYEES
WHERE JOB_ID='SA_REP'
INTERSECT
SELECT EMPLOYEE_ID
FROM EMPLOYEES
WHERE DEPARTMENT_ID=
(SELECT DEPARTMENT_ID
FROM DEPARTMENTS WHERE DEPARTMENT_NAME='SALES')



CREATE DATABASE TESTDB


USE TESTDB

CREATE TABLE testtable
(
ID int PRIMARY KEY identity(1,1),
name varchar(10) NOT NULL,
HDATE date NOT NULL,
price int
)

SELECT * FROM testtable


CREATE TABLE testtable
(
ID int PRIMARY KEY identity(1,1),
name varchar(10) NOT NULL,
HDATE date NOT NULL,
price int
)


CREATE TABLE [dbo].[employees2](
	[employee_id] [int] PRIMARY KEY,
	[first_name] [varchar](20) NULL,
	[last_name] [varchar](25) NOT NULL,
	[email] [varchar](25) NOT NULL,
	[phone_number] [varchar](20) NULL,
	[hire_date] [date] NOT NULL,
	[job_id] [varchar](10) NOT NULL,
	[salary] [decimal](8, 2) NOT NULL,
	[commission_pct] [decimal](2, 2) NULL,
	[manager_id] [int] NULL,
	[department_id] [int] NULL
	)

	ALTER TABLE [dbo].[employees2]  WITH CHECK ADD FOREIGN KEY([department_id])
REFERENCES [dbo].[departments] ([department_id])
GO

ALTER TABLE [dbo].[employees2]  WITH CHECK ADD FOREIGN KEY([job_id])
REFERENCES [dbo].[jobs] ([job_id])
GO

ALTER TABLE [dbo].[employees2]  WITH CHECK ADD FOREIGN KEY([manager_id])
REFERENCES [dbo].[employees] ([employee_id])
GO


ALTER TABLE employees2 ADD NEWCOLUMN INT NOT NULL

SELECT * FROM employees2


ALTER TABLE EMPLOYEES2 ALTER COLUMN NEWCOLUMN VARCHAR(50)


ALTER TABLE EMPLOYEES2 DROP COLUMN NEWCOLUMN


USE [hr]
GO

INSERT INTO [dbo].[employees2]
           ([employee_id]
           ,[first_name]
           ,[last_name]
           ,[email]
           ,[phone_number]
           ,[hire_date]
           ,[job_id]
           ,[salary]
           ,[commission_pct]
           ,[manager_id]
           ,[department_id])
     VALUES
           (200
           ,'bURAK'
           ,'Uysal'
           ,'burakuysal@burak.com'
           ,'555.666.7777'
           ,GETDATE()
           ,'IT_PROG'
           ,10000
           ,NULL
           ,100
           ,90)
GO


SELECT * FROM EMPLOYEES2


INSERT INTO EMPLOYEES2 SELECT * FROM EMPLOYEES


DELETE FROM EMPLOYEES2 WHERE 1=1


SELECT * FROM EMPLOYEES2 WHERE DEPARTMENT_ID=90

UPDATE EMPLOYEES2 SET SALARY=10000 
                WHERE EMPLOYEE_ID=100


ROLLBACK


BEGIN TRANSACTION
UPDATE EMPLOYEES2 SET SALARY=20000 
                WHERE EMPLOYEE_ID=100


                Alter table tablo_2 AS insert tablo (kolon,kolon2) values (@kolon    ,@kolon2)                        

                ALTER TABLE EMPLOYEES3 AS insert into employees 


CREATE TABLE [dbo].employees3
AS
SELECT  *
FROM    [dbo].employees;


truncate table employees2

DROP DATABASE [TESTDB]
