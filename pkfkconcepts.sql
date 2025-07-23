create table depttab(deptid int primary key,deptname varchar(20));
create table emptab(empid int,empname varchar,empage int,deptid int references depttab(deptid));

insert into depttab(deptid,deptname) values (1,'cse'),(2,'it'),(3,'mech');
INSERT INTO emptab(empid, empname, empage, deptid) VALUES
(1, 'Arun', 25, 1),
(2, 'Divya', 29, 3),
(3, 'Kiran', 32, 2),
(4, 'Meena', 27, 1),
(5, 'Ravi', 30, 3),
(6, 'Sneha', 24, 2),
(7, 'Vikram', 35, 1),
(8, 'Pooja', 28, 2),
(9, 'Ajay', 31, 3),
(10, 'Neha', 26, 1);

select * from depttab;
select * from emptab;

select emptab.empid,emptab.empname,emptab.empage,depttab.deptname,emptab.deptid from emptab join 
depttab on emptab.deptid=depttab.deptid

