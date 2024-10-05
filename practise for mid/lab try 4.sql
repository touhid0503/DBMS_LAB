create table Worker(
	WORKER_ID int ,
	FIRST_NAME varchar(20),
	LAST_NAME varchar(20),
	SALARY int,
	JOINING_DATE date,
	DEPARTMENT varchar(20)
	
)

insert into Worker(WORKER_ID,FIRST_NAME,LAST_NAME,SALARY,JOINING_DATE,DEPARTMENT)
values(1,'Rana','Hamid',100000,'2014-02-20 09:00:00', 'HR'),
(2,'Sanjoy','Saha',80000,'2014-06-11 09:00:00','Admin'),
(3,'Mahmudul','Hasan',300000,'2014-02-20 09:00:00','HR'),
(4,'Asad','Zaman',500000,'2014-02-20 09:00:00','Admin'),
(5,'Sajib','Mia',500000,'2014-06-11 09:00:00','Admin'),
(6,'Alamgir','Kabir',200000,'2014-06-11 09:00:00','Account'),
(7,'Foridul','Islam',75000,'2014-01-20 09:00:00','Account'),
(8,'Keshob','Ray',90000,'2014-04-11 09:00:00','Admin')

select SUBSTRING(FIRST_NAME,1,3) from Worker

select * from Worker

select * from Worker where JOINING_DATE between '2014-02-01' and '2014-03-31'

select * from Worker where DATEDIFF(Month,JOINING_DATE,GETDATE())>=6

update Worker
set SALARY=154561
where DEPARTMENT='Admin'

SELECT * FROM Worker where FIRST_NAME IN ('Rana','Sajib') 

SELECT * FROM Worker where FIRST_NAME NOT IN ('Rana','Sajib') 

SELECT * FROM Worker where FIRST_NAME LIKE '%a%'

SELECT * FROM Worker where FIRST_NAME like 'k%'

SELECT * FROM Worker where FIRST_NAME like '%r' and len(FIRST_NAME)=7

select CHARINDEX('n',FIRST_NAME) from Worker where FIRST_NAME='Sanjoy' 

SELECT DEPARTMENT,AVG(SALARY) from Worker group by DEPARTMENT

SELECT * from Worker 
where SALARY IN 
(select MAX(SALARY) from Worker GROUP BY DEPARTMENT
UNION
SELECT MIN(SALARY) FROM Worker GROUP BY DEPARTMENT) 

select CHARINDEX('r',FIRST_NAME) from Worker where FIRST_NAME='Rana' 

select RTRIM(FIRST_NAME) from Worker

select DISTINCT FIRST_NAME , len(FIRST_NAME) FROM Worker

SELECT REPLACE(FIRST_NAME,'a','A') FROM Worker