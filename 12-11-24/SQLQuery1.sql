--use touhid

create table Branch(
	Br_Id varchar(50) primary key,
	Branch_Name varchar(50)
);

create table Zone (
	Zone_Id varchar(50) primary key,
	Name varchar(50)
);

create table Account_Detail (
	Account_no int primary key,
	Acc_holder_name varchar(50),
	Amount int,
	Branch_Id varchar(50),
	Zone_Id varchar(50)
);

alter table Account_Detail add foreign key(Branch_Id) references Branch(Br_Id)
alter table Account_Detail add foreign key(Zone_Id) references Zone(Zone_Id)

select * from Account_Detail

insert into Branch (Br_Id,Branch_Name) values
('B-101','Bonani'),
('B-102','Romna'),
('B-103','Shaheb bazar'),
('B-104','Ullapara')

select * from Branch

insert into Zone (Zone_Id,Name) values
('Z-801','Sirajgonj'),
('Z-802','Rajshahi'),
('Z-803','Dhaka'),
('Z-804','Chittagong')


select* from Zone

insert into Account_Detail  (Account_no,Acc_holder_name,Amount,Branch_Id,Zone_Id) values
(1992212,'Mr. Nazmuzzaman',200000,'B-101','Z-803'),
(1992213,'Mr. Jibon',170000,'B-102','Z-803'),
(1882212,'Bushra',180000,'B-103','Z-802'),
(1882213,'Sajib',170000,'B-104','Z-801')


