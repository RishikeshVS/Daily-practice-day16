-- indexing
create table lll(id serial primary key,name varchar(20));
insert into lll(name) values ('rajan'),('bob'),('alice');
select * from lll;

CREATE INDEX idx ON lll(name);
SET enable_seqscan=off;

EXPLAIN SELECT name FROM lll WHERE name='bob';