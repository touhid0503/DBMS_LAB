insert into Employee(WORKER_ID,FIRST_NAME,LAST_NAME,SALARY,DEPARTMENT)
values(9,'Hamid','Rana',100000.10, 'HR'),
(10,'Saha','Sanjoy',80000,'Admin'),
(11,'Hasan','Mahmudul',300000.53,'HR'),
(12,'Zaman','Asad',500000,'Admin'),
(13,'Mia','Sajib',500000,'Admin'),
(14,'Kabir','Alamgir',200000,'Account'),
(15,'Islam','Foridul',75000,'Account'),
(16,'Ray','Keshab',90000,'Admin'),
(17,'Touhid','Islam',200000,'Account'),
(18,'Tonmoy','Islam',75000,'Account')

select * from Employee

select TOP 5 WORKER_ID, FIRST_NAME+' '+LAST_NAME AS FULLNAME, SALARY, DEPARTMENT,JOINING_DATE from Employee 

select * from Employee where DEPARTMENT='Admin'

select FIRST_NAME, LAST_NAME
FROM Employee
WHERE SALARY>10000

select FIRST_NAME, LAST_NAME FROM Employee WHERE SALARY>(SELECT SALARY FROM Employee WHERE FIRST_NAME='Sanjoy')

update Employee set SALARY=95000 where WORKER_ID=8
 
delete from Employee where FIRST_NAME='Asad'
