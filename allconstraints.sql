-- create
create table useruser(
id int primary key,
name varchar(20),
age int);

-- insert
insert into useruser (id,name,age) values (1,'ram',20),(2,'sam',20),(3,'jack',24),(4,'john',30),
(5,'johnny',35);

-- select
select * from useruser;

-- create
create table userrr(
email varchar(20),
id int,
foreign key(id) references useruser(id));

-- insert
insert into userrr (email,id) values ('ram@gmail.com',1),('sam@gmail.com',2),('jack@gmail.com',3),
('john@gmail.com',4),('johnny@gmail.com',5);

-- select
select * from userrr;

insert into useruser (id,name,age) values (6,'vetri',40);
insert into userrr (email,id) values ('vetri@gmail.com',6);
select * from useruser;
select * from userrr;

-- PRIMARY KEY & FOREIGN KEY
select * from useruser join userrr on useruser.id=userrr.id;

select useruser.id,useruser.name,useruser.age,userrr.email from useruser 
join userrr on useruser.id=userrr.id;

-- NOT NULL
alter table useruser alter column name set not null;
insert into useruser(id,name,age) values (7,'maaran',39);
select * from useruser;

-- UNIQUE
alter table userrr add unique(email);
insert into userrr(email,id) values ('maaran@gmail.com',7);
select * from userrr;

-- INDEXING
create index emailindex on userrr(email);

