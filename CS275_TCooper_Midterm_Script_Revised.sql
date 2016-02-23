--4
--foreign key constraints
ALTER TABLE Assignment
ADD CONSTRAINT fk_empnum
FOREIGN KEY (Emp_Num)
REFERENCES Employee(Emp_Num);

ALTER TABLE Assignment
ADD CONSTRAINT fk_projnum
FOREIGN KEY (Proj_Num)
REFERENCES Project(Proj_Num);

ALTER TABLE Employee
ADD CONSTRAINT fk_jobcode
FOREIGN KEY (Job_Code)
REFERENCES Job(Job_Code);

ALTER TABLE Project
ADD CONSTRAINT fk_empnum2
FOREIGN KEY (Emp_Num)
REFERENCES Employee(Emp_Num);

--5
-- Construct Database, Insert the data into the 4 tables
--5.a 
--set date format to use: 2 digits of the month, followed by 2 digits of the day, followed by 4 digits of the year
--separated by forward slashes
ALTER SESSION SET NLS_DATE_FORMAT = 'MM/DD/YYYY';

--5.b
--Job table values added first, as it does not reference anything, but is referenced by employee
INSERT INTO JOB VALUES('500','Programmer','35.75','11/20/2009');
INSERT INTO JOB VALUES('501','Systems Analyst','96.75','11/20/2009');
INSERT INTO JOB VALUES('502','Database Designer','125','3/24/2010');
INSERT INTO JOB VALUES('503','Electrical Engineer','84.5','11/20/2009');
INSERT INTO JOB VALUES('504','Mechanical Engineer','67.9','11/20/2009');
INSERT INTO JOB VALUES('505','Civil Engineer','55.78','11/20/2009');
INSERT INTO JOB VALUES('506','Clerical Support','26.87','11/20/2009');
INSERT INTO JOB VALUES('507','DSS Analyst','45.95','11/20/2009');
INSERT INTO JOB VALUES('508','Applications Designer','48.1','3/24/2010');
INSERT INTO JOB VALUES('509','Bio Technician','34.55','11/20/2009');
INSERT INTO JOB VALUES('510','General Support','18.36','11/20/2009');

--5.b
--Employee table values added after job table values, but before assignment and project
--changed job code to 502 from 522
INSERT INTO EMPLOYEE VALUES('101','News','John','G','11/8/2000','502',8);
INSERT INTO EMPLOYEE VALUES('102','Senior','David','H','7/12/1989','501',19);
INSERT INTO EMPLOYEE VALUES('103','Arbough','June','E','12/1/1996','503',12);
--changted job code to 501 from 521
INSERT INTO EMPLOYEE VALUES('104','Ramoras','Anne','K','11/15/1987','501',21);
INSERT INTO EMPLOYEE VALUES('105','Johnson','Alice','K','2/1/1993','502',16);
INSERT INTO EMPLOYEE VALUES('106','Smithfield','William','','6/22/2004','500',4);
INSERT INTO EMPLOYEE VALUES('107','Alonzo','Maria','D','10/10/1993','500',15);
INSERT INTO EMPLOYEE VALUES('108','Washington','Ralph','B','8/22/1991','501',17);
INSERT INTO EMPLOYEE VALUES('109','Smith','Larry','W','7/18/1997','501',11);
INSERT INTO EMPLOYEE VALUES('110','Olenko','Gerald','A','12/11/1995','505',13);
INSERT INTO EMPLOYEE VALUES('111','Wabash','Geoff','B','4/4/1991','506',18);
INSERT INTO EMPLOYEE VALUES('112','Smithson','Darlene','M','10/23/1994','507',14);
INSERT INTO EMPLOYEE VALUES('113','Joenbrood','Delbert','K','11/15/1996','508',12);
INSERT INTO EMPLOYEE VALUES('114','Jones','Annelise','','8/20/1993','508',15);
INSERT INTO EMPLOYEE VALUES('115','Bawangi','Travis','B','1/25/1992','501',17);
INSERT INTO EMPLOYEE VALUES('116','Pratt','Gerald','L','3/5/1997','510',12);
INSERT INTO EMPLOYEE VALUES('117','Williamson','Angie','H','6/19/1996','509',12);
INSERT INTO EMPLOYEE VALUES('118','Frommer','James','J','1/4/2005','510',4);

--5.b
--relocated insertion of project table values to comply with foreign key constraints
--project is referenced by assignment, and references employee
--project values must be inserted after employee values, but before assignment values
--changed employee number to 103 from 123
INSERT INTO PROJECT VALUES('15','Evergreen','1453500','1002350','103');
INSERT INTO PROJECT VALUES('18','Amber Wave','3500500','2110346','108');
INSERT INTO PROJECT VALUES('22','Rolling Tide','805000','500345.2','102');
INSERT INTO PROJECT VALUES('25','Starflight','2650500','2309880','107');

--5.b
--assignment values inserted last as it references both the employee and project tables
INSERT INTO ASSIGNMENT VALUES('1001','3/22/2010','18','103','503','84.5','3.5','295.75');
INSERT INTO ASSIGNMENT VALUES('1002','3/22/2010','22','117','509','34.55','4.2','145.11');
INSERT INTO ASSIGNMENT VALUES('1003','3/22/2010','18','117','509','34.55','2','69.10');
INSERT INTO ASSIGNMENT VALUES('1004','3/22/2010','18','103','503','84.5','5.9','498.55');
INSERT INTO ASSIGNMENT VALUES('1005','3/22/2010','25','108','501','96.75','2.2','212.85');
INSERT INTO ASSIGNMENT VALUES('1006','3/22/2010','22','104','501','96.75','4.2','406.35');
INSERT INTO ASSIGNMENT VALUES('1007','3/22/2010','25','113','508','50.75','3.8','192.85');
INSERT INTO ASSIGNMENT VALUES('1008','3/22/2010','18','103','503','84.5','0.9','76.05');
INSERT INTO ASSIGNMENT VALUES('1009','3/23/2010','15','115','501','96.75','5.6','541.80');
INSERT INTO ASSIGNMENT VALUES('1010','3/23/2010','15','117','509','34.55','2.4','82.92');
INSERT INTO ASSIGNMENT VALUES('1011','3/23/2010','25','105','502','105','4.3','451.5');
INSERT INTO ASSIGNMENT VALUES('1012','3/23/2010','18','108','501','96.75','3.4','328.95');
INSERT INTO ASSIGNMENT VALUES('1013','3/23/2010','25','115','501','96.75','2','193.5');
INSERT INTO ASSIGNMENT VALUES('1014','3/23/2010','22','104','501','96.75','2.8','270.9');
INSERT INTO ASSIGNMENT VALUES('1015','3/23/2010','15','103','503','84.5','6.1','515.45');
INSERT INTO ASSIGNMENT VALUES('1016','3/23/2010','22','105','502','105','4.7','493.5');
INSERT INTO ASSIGNMENT VALUES('1017','3/23/2010','18','117','509','34.55','3.8','131.29');
INSERT INTO ASSIGNMENT VALUES('1018','3/23/2010','25','117','509','34.55','2.2','76.01');
INSERT INTO ASSIGNMENT VALUES('1019','3/24/2010','25','104','501','110.5','4.9','541.45');
INSERT INTO ASSIGNMENT VALUES('1020','3/24/2010','15','101','502','125','3.1','387.5');
INSERT INTO ASSIGNMENT VALUES('1021','3/24/2010','22','108','501','110.5','2.7','298.35');
INSERT INTO ASSIGNMENT VALUES('1022','3/24/2010','22','115','501','110.5','4.9','541.45');
INSERT INTO ASSIGNMENT VALUES('1023','3/24/2010','22','105','502','125','3.5','437.5');
INSERT INTO ASSIGNMENT VALUES('1024','3/24/2010','15','103','503','84.5','3.3','278.85');
INSERT INTO ASSIGNMENT VALUES('1025','3/24/2010','18','117','509','34.55','4.2','145.11');

--6
SELECT Emp_FName, Emp_LName, Emp_HireDate
FROM Employee
WHERE Emp_Years > 15;

--7
SELECT *
FROM Job
ORDER BY Job_Chg_Hour DESC;

--8
SELECT Emp_FName, Emp_LName, Emp_Initial
FROM Employee
WHERE Emp_FName LIKE 'A%';

--9
SELECT *
FROM Job
WHERE Job_Description LIKE '%Analyst%'
OR Job_Description LIKE '%Engineer%';

--10
SELECT Proj_Name, Proj_Value, Proj_Balance, Emp_FName, Emp_LName
FROM Project, Employee
WHERE Project.Emp_Num = Employee.Emp_Num;

--11
SELECT Emp_FName, Emp_LName, Emp_HireDate, Job_Description
FROM Employee, Job
WHERE Employee.Job_Code = Job.Job_Code
ORDER BY Job_Description;

--12
SELECT Proj_Num, Proj_Name, Proj_Value, Proj_Balance, Employee.Emp_Num, Emp_FName, Emp_LName
FROM Project, Employee
WHERE Project.Emp_Num = Employee.Emp_Num
ORDER BY Proj_Name;

--13
SELECT Assign_Num, Assign_Date, Proj_Name, Emp_LName, Emp_FName, Job_Description, Assign_Chg_Hr, Assign_Hours
FROM Assignment, Employee, Job, Project
WHERE Assignment.Emp_Num = Employee.Emp_Num
AND Assignment.Proj_Num = Project.Proj_Num
AND Employee.Job_Code = Job.Job_Code
AND Employee.Emp_Num IN (103, 104, 105)
ORDER BY Proj_Name;

--14
SELECT Job.Job_Code, Job_Description, COUNT(Emp_Num)
FROM Job, Employee
WHERE Employee.Job_Code = Job.Job_Code
GROUP BY Job.Job_Code, Job_Description
ORDER BY Job_Description;

--15
SELECT Job.Job_Code, Job_Description, COUNT(Emp_Num)
FROM Job, Employee
WHERE Employee.Job_Code = Job.Job_Code
GROUP BY Job.Job_Code, Job_Description
HAVING COUNT(Emp_Num) > 2
ORDER BY COUNT(Emp_Num) DESC;

--16
SELECT Job_Code, Job_Description
FROM Job
WHERE Job_Code NOT IN (SELECT Job_Code FROM EMPLOYEE)
ORDER BY Job_Description;

--17
UPDATE Job
SET Job_Description = 'Database Developer'
WHERE Job_Description = 'Database Designer';

SELECT * FROM Job;

--18
SELECT AVG(Job_Chg_Hour)
FROM Job;

--19
SELECT Job_Description, Job_Chg_Hour
FROM Job
WHERE Job_Chg_Hour > (SELECT AVG(Job_Chg_Hour) FROM Job)
ORDER BY Job_Description;

--20
ALTER TABLE Employee
ADD Expertise char(5);

--21
--change length of field to fit "Carpenter"
ALTER TABLE Employee
MODIFY Expertise char(10);

UPDATE Employee
SET Expertise = 'Carpenter'
WHERE Emp_Num = 109;

DELETE FROM Job
WHERE Job_Code = 504;

SELECT * FROM Job;

--23
--re-insert record
INSERT INTO JOB VALUES('504','Mechanical Engineer','67.9','11/20/2009');

SELECT * FROM Job;


