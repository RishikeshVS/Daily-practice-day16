create table tab1(id int primary key,name varchar(20),age int);
create table tab2 (email varchar(20),id int,foreign key references tab1(id));

insert into tab1 (id,name,age) values (1,'raj',20),(2,'kumar',23),(3,'suraj',23),(4,'jack',25),
(5,'manoj',25),(6,'vetri',35),(7,'johnny',39);
insert into tab1 (id,name,age) values (8,'kali',50);

insert into tab2 (email,id) values ('raj@gmail.com',1),('kumar@gmail.com',2),('suraj@gmail.com',3),
('jack@gmail.com',4),('manoj@gmail.com',5),('vetri@gmail.com',6),('johnny@gmail.com',7);
insert into tab2 (email,id) values ('kali@gmail.com',8);

select * from tab1;
select * from tab2;

-- with keyword to insert data automatically to multiple tables in pk fk concept
WITH ins1 AS (
  INSERT INTO tab1(id,name,age) VALUES(9,'benjamin',49)
  RETURNING id
)
INSERT INTO tab2(email,id)
SELECT 'benjamin@gmail.com',id FROM ins1

WITH ins2 AS (
  INSERT INTO tab1(id,name,age) VALUES(10,'francis',49)
  RETURNING id
)
INSERT INTO tab2(email,id)
SELECT 'francis@gmail.com',id FROM ins2

select tab1.id,tab1.name,tab1.age,tab2.email from tab1 join tab2 on tab1.id=tab2.id;





