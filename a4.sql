create database a4;
use a4;

select * from borrower; 
select * from fine;
show tables;

create table BORROWER(rollno int primary key,name varchar(20),
date_of_issue date,name_of_book varchar(20),status varchar(20));

create table fine(rno int primary key, date_of_return date, fine_amt int);

insert into borrower(rollno,name,date_of_issue,name_of_book,status) values (1,'devesh','2022-09-15','dbms','I');
 insert into BORROWER values(2,'Bhagyashri','2022-08-17','TOC','I');
 
delete from borrower;
drop procedure if EXISTS p_fine;

-- PROCEDURE p_fine
delimiter //
create procedure p_fine(IN rno int, IN bname varchar(20))
BEGIN
	declare d1 date;
    declare daycnt int;
    declare fine_amt int;
    select date_of_issue into d1 from borrower 
		where rollno = rno and name_of_book = bname;
    select datediff(now(),d1) into daycnt;
    -- returned in 15 to 30 days range
    if(daycnt >= 15 and daycnt <= 30) then
		set fine_amt = daycnt * 5;
		insert into fine(rollno, date_of_return, amt) values (rno, now(), fine_amt);
        update borrower set status = 'R' where rollno = rno;
	-- returned more than 30 days late
    elseif(daycnt > 30) then
		set fine_amt = daycnt * 50;
		insert into fine values (rno,now(),fine_amt);
        update borrower set status = 'R' where Rollno = rno;
	else
    -- returned in time
		update borrower set status = 'R' where Rollno = rno;
END IF;
END;
//
delimiter ;
--
call p_fine(1,'TOC');
call p_fine(2,'TOC');
        