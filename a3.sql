-- create database a3;
use a3;
CREATE TABLE student_mark(rollno int, name varchar(25), marks int, branch varchar(20));
desc student_mark;
ALTER TABLE student_mark ADD primary key(rollno);

INSERT INTO student_mark VALUES(1,'Ravi',90,'Computer'),(2,'Vedika',70,'Computer');
INSERT INTO student_mark VALUES(3,'Aarush',95,'IT'),(4,'Jyoti',60,'IT');
-- inserting 2 students with null marks  
INSERT INTO student_mark(rollno,name,branch) VALUES(5,'Amir','IT'),(6,'Hitesh','IT');

select * from student_mark;
select * from student_mark where marks > 70;
select * from student_mark where marks < 70;
select * from student_mark where marks = 70 and name = "Vedika";

update student_mark set name = 'Sachin' where name = 'Ravi';
delete from student_mark where name="Aarush";

select rollno, name, max(marks) as marks, branch from student_mark;

select rollno, name, max(marks) as marks, branch from student_mark 
where branch="Computer";

select rollno, name, count(marks) as marks, branch from student_mark 
where branch="IT";

-- get distinct count of branch without duplicate values being counted
select count(DISTINCT branch) from student_mark;