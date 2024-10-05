Alter table Employee
alter column FIRST_NAME varchar(20) Null

Alter table Employee
alter column LAST_NAME varchar(20) Null

Alter table Employee
alter column SALARY float Null

Alter table Employee
alter column JOINING_DATE date Null

Alter table Employee
alter column DEPARTMENT varchar(100) Null

select * from Employee

Alter table Employee
add constraint check1 check(SALARY>100)

Alter table Employee
add constraint unique2 unique(FIRST_NAME)

Alter table Employee
alter column WORKER_ID int NOT NULL

Alter table Employee
add constraint primary1 primary key(WORKER_ID)

