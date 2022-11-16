create database a5;
use a5;
drop table tbl_area;
create table tbl_area(radius float primary key, area float);
select * from tbl_area;
-- drop procedure if exists find_circle_area;

-- PROCEDURE find_circle_area
delimiter //
create procedure find_circle_area()
	BEGIN
    DECLARE r int;
	Declare a float;
	set r = 5;
        loop_label: 
        LOOP
			IF r > 9 THEN
				LEAVE loop_label;
			END IF;
			set a = 3.14 * r * r;
            insert into tbl_area(radius, area) values (r,a);
            set r=r+1;
		END LOOP;
	END;
//
delimiter ;
--
call find_circle_area();


