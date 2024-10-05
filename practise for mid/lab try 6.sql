CREATE TABLE Employees (
    TID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Dept VARCHAR(50),
    Age INT,
    Salary DECIMAL(10, 2)
);
create table dept(
  deptID int primary key,
  deptName varchar(50),
  location varchar(50)
)

select * from Employees

INSERT INTO Employees (TID, FirstName, LastName, Dept, Age, Salary) VALUES
(1, 'Mizanur', 'Rahman', 'CSE', 28, 35000),
(2, 'Delwar', 'Hossain', 'CSE', 26, 33000),
(3, 'Shafiul', 'Islam', 'EEE', 24, 30000),
(4, 'Faisal', 'Imran', 'CSE', 30, 50000),
(5, 'Ahsan', 'Habib', 'English', 28, 28000);

insert into dept(deptID,deptName,location) values(
1,'CSE','Talaimari'
),
(2,'EEE','Talaimari'),
(3,'English','Kazla'),
(4,'BBA','Talaimari')

UPDATE Employees
SET Salary = CASE
    WHEN Dept = 'CSE' THEN Salary * 1.15
    ELSE Salary * 1.10
END;

CREATE TABLE DestinationTable (
    TID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Dept VARCHAR(50),
    Age INT,
    Salary DECIMAL(10, 2)
);

INSERT INTO DestinationTable (TID, FirstName, LastName, Dept, Age, Salary)
SELECT TID, FirstName, LastName, Dept, Age, Salary
FROM Employees
WHERE TID IN (SELECT TID FROM Employees WHERE TID between 1 and 5);

drop table DestinationTable
select * from DestinationTable

SELECT 
    CONCAT(FirstName, ' ', LastName) AS FullName,
    Age
FROM 
    Employees
WHERE 
    Salary = (SELECT MAX(Salary) FROM Employees);





	SELECT 
    FirstName, 
    Age, 
    Dept
FROM 
    Employees
WHERE 
    Age BETWEEN 23 AND 27;



	SELECT 
    TID, 
    FirstName
FROM 
    Employees
WHERE 
    Salary < (SELECT AVG(Salary) FROM Employees);



	DELETE FROM Employees
WHERE TID IN (SELECT TID FROM Employees WHERE Age > 25);


UPDATE Employees
SET Dept = 'English'
WHERE TID IN (SELECT TID FROM Employees WHERE Dept = 'ECE');



UPDATE Employees
SET Salary = Salary * 100
WHERE TID IN (SELECT TID FROM Employees WHERE Salary > 5000);


SELECT FirstName, LastName
FROM Employees
WHERE FirstName IN (SELECT FirstName FROM Employees WHERE FirstName LIKE 'k%' OR FirstName LIKE 's%');



SELECT FirstName, Salary
FROM Employees
WHERE Dept = 'CSE' 
  AND Salary > (SELECT Salary FROM Employees WHERE FirstName = 'Meraj' AND LastName = 'Ali');


-- Find the id, names of all teachers who belong to the same department as the teacher ‘Meraj’ who is in department CSE and age is 26.
select TID, Firstname,Lastname
from Employees
where Dept in (select Dept from Employees where FirstName='Meraj' and Dept='CSE' and Age=26)

SELECT TID, Salary, Dept
FROM Employees
WHERE Salary > (SELECT AVG(Salary) FROM Employees);


SELECT min(Salary)
FROM Employees
Group by Dept
Having min(Salary) < (SELECT AVG(Salary) FROM Employees);


SELECT FirstName, LastName, Dept
FROM Employees
WHERE Dept IN (SELECT deptName FROM dept WHERE location = 'Kazla');

SELECT Employees.FirstName, Employees.LastName, Employees.Dept
FROM Employees
join dept on Employees.Dept=dept.deptName
where dept.location='Kazla'


select TID, Firstname, Lastname
from Employees
where len(Firstname)>=6

