create database eg1;
use eg1;

create table Student(rollno int primary key, name varchar(20), address varchar(45), age int);
create table Studentcourse(course_id int primary key, rollno int);
select * from student;
select * from student;
insert into student values (1, 'Harsh', 'Delhi', 18),
(2, 'Pratik', 'Delhi', 19),
(3, 'Riya', 'Delhi', 21),
(4, 'Deep', 'Delhi', 18),
(5, 'Dhanashree', 'Delhi', 21);
insert into student values (6, 'Pratik', 'Delhi', 18);

insert into studentcourse values (1, 1), (2, 2), (2, 3), (3, 4), (1, 5);
insert into studentcourse values (12,12);

-- INNER JOIN keyword selects all rows from both the tables as long as the condition is satisfied.
-- This keyword will create the result-set by combining all rows from both the tables where the condition satisfies
-- i.e value of the common field will be the same.
select sc.course_id, s.name, s.age from student s 
INNER JOIN studentcourse sc 
ON s.rollno = sc.rollno;

-- returns all the rows of the table on the left side of the join and matches rows for the table on the right side of the join. 
-- For the rows for which there is no matching row on the right side, the result-set will contain null. 
-- LEFT JOIN is also known as LEFT OUTER JOIN.
select sc.course_id, s.name, s.age from student s 
LEFT JOIN studentcourse sc 
ON s.rollno = sc.rollno;

-- returns all the rows of the table on the right side of the join and matching rows for the table on the left side of the join. 
-- For the rows for which there is no matching row on the left side, the result-set will contain null. 
-- RIGHT JOIN is also known as RIGHT OUTER JOIN.
select sc.course_id, s.name from student s 
RIGHT JOIN studentcourse sc 
ON s.rollno = sc.rollno;

-- FULL JOIN creates the result-set by combining results of both LEFT JOIN and RIGHT JOIN. 
-- The result-set will contain all the rows from both tables. 
-- For the rows for which there is no matching, the result-set will contain NULL values.
select s.name, sc.course_id from student s
FULL OUTER JOIN studentcourse sc
ON s.rollno = sc.rollno;