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

select * from Bonus