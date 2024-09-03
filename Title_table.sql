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

       select * from title