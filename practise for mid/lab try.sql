create database  putkibir;
use putkibir;
create table Employee(
	WORKER_ID int ,
	FIRST_NAME varchar(20),
	LAST_NAME varchar(20),
	SALARY int,

	DEPARTMENT varchar(20)
	
)
insert into Employee(WORKER_ID,FIRST_NAME,LAST_NAME,SALARY,DEPARTMENT)
values(1,'Rana','Hamid',100000, 'HR'),
(2,'Sanjoy','Saha',80000,'Admin'),
(3,'Mahmudul','Hasan',300000,'HR'),
(4,'Asad','Zaman',500000,'Admin'),
(5,'Sajib','Mia',500000,'Admin'),
(6,'Alamgir','Kabir',200000,'Account'),
(7,'Foridul','Islam',75000,'Account'),
(8,'Keshob','Ray',90000,'Admin')

/*'2014-02-20 09:00:00',
'2014-06-11 09:00:00',
'2014-02-20 09:00:00',
'2014-02-20 09:00:00',
'2014-06-11 09:00:00',
'2014-06-11 09:00:00',
'2014-01-20 09:00:00',
'2014-04-11 09:00:00',*/

select * from Employee

Alter table Employee
add JOINING_DATE DATE

Alter table Employee
Alter COLUMN SALARY float

Alter table Employee
Alter COLUMN DEPARTMENT varchar(100)