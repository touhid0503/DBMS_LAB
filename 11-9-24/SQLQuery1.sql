create database touhid
use touhid

create table table1(
TID int primary key,
FirstName varchar(100),
LastName varchar(100),
Dept varchar(100),
Age int,
Salary int,
)

create table table2(
deptID int primary key,
deptName varchar(100),
location1 varchar(100), 
)

insert into table1 values
(1,'Mizanur','Rahman','CSE',28,35000),
(2,'Delwar','Hossain','CSE',26,33000),
(3,'Shafiul','Islam','EEE',24,30000),
(4,'Faisal','Imran','CSE',30,50000),
(5,'Ahsan','Habib','English',28,28000)

insert into table2 values
(1,'CSE','Talaimari'),
(2,'EEE','Talaimari'),
(3,'English','Kazla'),
(4,'BBA','Talaimari')

select * from table1
select * from table2

Update table1
set Salary = case
when Dept = 'CSE' then Salary*1.15
else Salary*1.10
end
 
select Concat(FirstName,LastName) as fullname, age from table1
where Salary=(select max(Salary) from table1)

select FirstName,Age,dept from table1
where age between 23 and 27

select max(Salary) from table1

select top 1 * from (select top 4 * from table1 order by salary desc) as temp order by salary

select TID, FirstName from table1
where Salary <(select avg(Salary) from table1)

DELETE FROM table1
WHERE TID IN (
    SELECT TID FROM table1 WHERE age > 25
);


--Write a query to update Dept  by  ‘English’ where Dept is ‘EEE’ using subquery.--

Update table1
Set Dept='English'
where Dept=(select Dept from table1 where Dept='EEE')

 
Update table1
set Salary=case 
when Salary>5000 then Salary*100
end



