create database clg;
 use clg;
desc issued;
select * from stud;
select * from issued;
-- Trigger.new : Returns a list of the new versions of the sObject records. 
-- Note that this sObject list is only available in insert and update triggers, 
-- and the records can only be modified in before triggers.

-- Trigger.old : Returns a list of the old versions of the sObject records. 
-- Note that this sObject list is only available in update and delete triggers.

create table stud(sid int primary key, name char(20), class char(50), age int, issued char);
create table returned(sid int, bname char(20), b_author char(20));
create table issued(sid int, bname char(20));
 alter table issued drop column b_author;
 alter table stud add column bname char(20);

insert into stud values (1, 'Devesh', 'TE-A', 54, 'I', 'DBMS');

-- INSERT TRIGGER
delimiter //
CREATE TRIGGER tr_ins_stud
BEFORE INSERT
ON stud
for each row
BEGIN
	insert into issued values (new.sid, new.bname);
END;
//
delimiter ;
--
drop trigger if exists tr_ins_stud;
insert into stud values(2,'Vikas','TE-B',60,'I', 'Wings of Fire');

delete from stud where sid = 2;
delete from issued;

select * from issued;
select * from stud;

-- DELETE TRIGGER
delimiter //
CREATE TRIGGER tr_del_stud
AFTER DELETE
ON stud
for each row
BEGIN
	delete from issued where sid = old.sid;
END;
//
delimiter ;
--
delete from stud where sid = 3;

-- UPDATE TRIGGER
delimiter //
CREATE TRIGGER tr_up_issued
AFTER UPDATE
ON stud
for each row
BEGIN
update issued SET sid = new.sid where sid = old.sid;
END;
//
delimiter ;
--
update stud set sid=3 where sid=2;
select * from issued;




    

 
 

 