create database a7;
use a7;
SHOW TABLES;
-- inserting data from o_rollcall to n_rollcall if it does not exist in n_rollcall
select * from n_rollcall;
select * from o_rollcall;

CREATE TABLE n_rollcall(rollno int, name varchar(20));
-- data exists in o_rollcall
CREATE TABLE o_rollcall(rollno int, name varchar(20));

insert into n_RollCall(rollno ,name)values(1,'devesh'),(2,'piyush'),(3,'mayur');
insert into o_RollCall(rollno ,name)values(1,'devesh'),(2,'piyush'),(3,'mayur'),(4,'kapil');

drop procedure if exists myCursor;

-- PROCEDURE MYCURSOR
delimiter //
create procedure myCursor()
BEGIN 
	DECLARE done int default 0;
	DECLARE s_rollno int;
    DECLARE s_name varchar(20);
    DECLARE c_student CURSOR FOR select rollno, name FROM o_rollcall 
		WHERE rollno NOT IN (SELECT rollno FROM n_rollcall);
        
	DECLARE CONTINUE HANDLER for NOT FOUND set done = 1;
    BEGIN
		open c_student;	-- open cursor
        read_loop:
        LOOP
			FETCH c_student INTO s_rollno, s_name;
            IF done = 1 THEN
				LEAVE read_loop;
			END IF;
            insert into n_rollcall values (s_rollno, s_name);
		END LOOP;
        close c_student;	-- close cursor
	END;
END;
//
delimiter ;
--
call myCursor();
        