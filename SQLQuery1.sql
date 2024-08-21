create database touhid;
use touhid;
create table Employee(
	WORKER_ID int primary key,
	FIRST_NAME varchar(20),
	LAST_NAME varchar(20),
	SALARY int,
	DEPT_NAME varchar(20)
)
insert into Employee(WORKER_ID,FIRST_NAME,LAST_NAME,SALARY,DEPT_NAME) 
values(201,'Md Touhidul','Islam',550,'CSE')

select * from Employee

alter table Employee 
add JOINING_DATE varchar(20)

alter table Employee 
alter column SALARY varchar(20)


insert into Employee(WORKER_ID,FIRST_NAME,LAST_NAME,SALARY,DEPT_NAME) 
values(202,'Md Touhidul','Islam','540','CSE')

alter table Employee 
alter column DEPT_NAME varchar(10)


insert into Employee(WORKER_ID,FIRST_NAME,LAST_NAME,SALARY,DEPT_NAME,JOINING_DATE) 
values(203,'Md Touhidul','Islam','540','CSE','21-8-24')

