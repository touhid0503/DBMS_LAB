create table Worker1(
	WORKER_ID int ,
	FIRST_NAME varchar(20),
	LAST_NAME varchar(20),
	SALARY int,
	JOINING_DATE date,
	DEPARTMENT varchar(20)
	
)

insert into Worker1(WORKER_ID,FIRST_NAME,LAST_NAME,SALARY,JOINING_DATE,DEPARTMENT)
values(1,'Rana','Hamid',100000,'2014-02-20 09:00:00', 'HR'),
(2,'Sanjoy','Saha',80000,'2014-06-11 09:00:00','Admin'),
(3,'Mahmudul','Hasan',300000,'2014-02-20 09:00:00','HR'),
(4,'Asad','Zaman',500000,'2014-02-20 09:00:00','Admin'),
(5,'Sajib','Mia',500000,'2014-06-11 09:00:00','Admin'),
(6,'Alamgir','Kabir',200000,'2014-06-11 09:00:00','Account'),
(7,'Foridul','Islam',75000,'2014-01-20 09:00:00','Account'),
(8,'Keshob','Ray',90000,'2014-04-11 09:00:00','Admin')


create table Bonus(
	WORKER_REF_ID INT,
	BONUS_DATE DATE,
	BONUS_MOUNT INT,
)

insert into Bonus(WORKER_REF_ID,BONUS_DATE,BONUS_MOUNT)
VALUES(1,'2019-02-20',5000),
(2,'2019-06-11',3000),
(3,'2019-02-20',4000),
(4,'2019-02-20',4500),
(5,'2019-06-11',3500),
(6,'2019-06-12',NULL)

	create table title(
			 WORKER_REF_ID INT,
			 WORKER_TITLE varchar(20),
			 AFFECTED_FROM DATE
		)

       insert into title(WORKER_REF_ID,WORKER_TITLE,AFFECTED_FROM)
       values(1,'Manager','2019-02-20'),
       (2,'Executive','2019-06-11'),
       (8,'Executive','2019-06-11'),
       (5,'Manager','2019-06-11'),
       (4,'Asst. Manager','2019-06-11'),
       (7,'Executive','2019-06-11'),
       (6,'Lead','2019-06-11'),
       (3,'Lead','2019-06-11')

--select * from title

--select * from title where WORKER_TITLE not in ('Manager','Asst. Manager')

SELECT Worker1.FIRST_NAME, Worker1.LAST_NAME
FROM Worker1 
JOIN title ON Worker1.WORKER_ID = title.WORKER_REF_ID
WHERE title.WORKER_TITLE NOT IN ('Manager', 'Asst. Manager');



SELECT Worker1.FIRST_NAME, Worker1.LAST_NAME, title.WORKER_TITLE
FROM Worker1 
JOIN title ON Worker1.WORKER_ID = title.WORKER_REF_ID
where Worker1.JOINING_DATE > '2014-04-30'
order by title.WORKER_TITLE asc

select count(*) from Worker1 where DEPARTMENT='Admin'

select FIRST_NAME,LAST_NAME from Worker1 where SALARY>=50000 and SALARY<=100000

select FIRST_NAME,LAST_NAME from Worker1 where SALARY between 50000 and 100000

select DEPARTMENT,count(*) from Worker1 group by DEPARTMENT order by DEPARTMENT asc 

SELECT Worker1.*
FROM Worker1
JOIN title on Worker1.WORKER_ID=title.WORKER_REF_ID
where title.WORKER_TITLE='Manager'

select * from Worker1 where WORKER_ID%2=1

select * from Worker1 where WORKER_ID%2=0

--cloning
select * into table1 from Worker1

select * from table1

select GETDATE()

select top 10 Worker1.FIRST_NAME,Worker1.LAST_NAME,Title.WORKER_TITLE
from Worker1
JOIN Title on Worker1.WORKER_ID=title.WORKER_REF_ID

--5th highest salary
SELECT DISTINCT SALARY
FROM Worker1
ORDER BY SALARY DESC
OFFSET 4 ROWS FETCH NEXT 1 ROWS ONLY;

select * from Worker1 where SALARY in (select SALARY from Worker1 group by SALARY having count(*)>1)


--2nd highest salary
SELECT DISTINCT SALARY
FROM Worker1
ORDER BY SALARY DESC
OFFSET 1 ROWS FETCH NEXT 1 ROWS ONLY;

Select top 50 percent * from Worker1 

select DEPARTMENT from Worker1 Group by DEPARTMENT having count(*)<5

select DEPARTMENT,count(*) FROM Worker1 GROUP by DEPARTMENT 

SELECT Top 1 *
FROM Worker1
ORDER BY WORKER_ID desc


SELECT Top 1 *
FROM Worker1
ORDER BY WORKER_ID asc

select * from (SELECT Top 5 *
FROM Worker1
ORDER BY WORKER_ID desc) as lastFIVE
ORDER by WORKER_ID asc



SELECT FIRST_NAME, LAST_NAME from worker1 where SALARY in (select Max(SALARY) FROM WORKER1 GROUP by DEPARTMENT )


SELECT Top 3 *
FROM Worker1
ORDER BY SALARY DESC

SELECT DISTINCT TOP 3 SALARY
FROM Worker1
ORDER BY SALARY DESC;







