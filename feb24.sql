show databases;
use dbemp;
create table DEPT(
Deptino int primary key,
Dname varchar(10),
Loc varchar(10)
);

rename table DEPT to DEPARTMENT;
alter table DEPARTMENT 
add column PINCODE int not null default 0;

alter table DEPARTMENT
change Dname DEPT_NAME varchar(20);

alter table DEPARTMENT
modify Loc char(20);

drop table DEPARTMENT;
