-- unique and not null
create table emp1(id serial primary key,name varchar(20) not null,phone int unique);
insert into emp1 (name,phone) values ('ram',123);
insert into emp1 (name,phone) values ('sam',1234);
insert into emp1 (name,phone) values ('raman',12345);
insert into emp1 (name,phone) values ('ram',123456);
insert into emp1 (name,phone) values ('jack',1234567);
insert into emp1 (name,phone) values ('',12345678);
insert into emp1 (name) values ('ram');
insert into emp1 (name) values ('ram');

select * from emp1;
