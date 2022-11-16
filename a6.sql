create database a6;
use a6;

select * from result;
select * from stud_marks;

create table stud_marks(rollno int primary key, name varchar(20), marks int);

create table result(rollno int, name varchar(20), class varchar(20));

insert into stud_marks(rollno, name, marks) values (1,'Devesh',999),(2,'Mayur',840),(3,'Gyan',670);

drop procedure if exists proc_grade;

-- PROCEDURE proc_grade
delimiter //
create procedure proc_grade()
BEGIN
	DECLARE done int default 0;
    declare s_marks int;
    declare s_rollno int;
    declare s_name varchar(30);
    declare s_class varchar(80);
	DECLARE c_student CURSOR FOR select rollno, name, marks from stud_marks;
    -- NOT FOUND is an exception returned by CURSOR when no next row. Handling this exception using HANDLER
    -- when the NOT FOUND condition fires, "done" -- which defaults to FALSE -- will be set to true,
	-- and since this is a CONTINUE handler, execution continues with the next statement.   
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;
    open c_student;
    read_loop:
	LOOP
		fetch c_student into s_rollno, s_name, s_marks;
        IF done = 1 THEN 
-- this will be true when we are out of rows to read, 
-- so we go to the statement after END LOOP.
			LEAVE read_loop;
		END IF;
    IF(s_marks<=1500 and s_marks>=990) THEN
		set s_class = "Distinction";
	ELSEIF(s_marks<=989 and s_marks>=900) THEN
		set s_class = "First Class";
	ELSEIF(s_marks<=899 and s_marks>=825) THEN
		set s_class = "Higher Second Class";
	ELSE
		set s_class = "Pass";
	END IF;
		INSERT INTO result(rollno, name, class) values (s_rollno, s_name, s_class);
    END LOOP;
    close c_student;
    END;
    //
delimiter ;
--
call proc_grade();
    
    
