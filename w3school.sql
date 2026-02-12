create database school;
use school;

create table Teachers (
TeacherID int primary key,
FirstName varchar (50),
LastName varchar (50),
DOB date,
salary real,
address varchar (50),
phoneNo bigint
);

create table Student (
StudentID int primary key,
FirstName varchar (50),
LastName varchar (50),
DOB date,
address varchar (50),
section char,
levels int,
phoneNo bigint
);


insert into Teachers(
TeacherID ,
FirstName ,
LastName ,
DOB ,
salary ,
address ,
phoneNo
)
values(
001,'Samar','Shakya','1990-12-12',98000,'patan dhoka',9841222679
);


insert into Student (
StudentID ,
FirstName ,
LastName ,
DOB ,
address,
section ,
levels ,
phoneNo
)
values(
001,'Binod','Chettri','2017-6-7','Nakhu','A',3,9876543217
);


SELECT FirstName, LastName
From Student
Where levels = 3;

ALTER TABLE Student ADD TeacherID int;
SELECT 
    s.FirstName, s.LastName,
    t.FirstName, t.LastName
FROM Student s
INNER JOIN Teachers t
ON s.TeacherID = t.TeacherID;


