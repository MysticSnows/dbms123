create database a2;
use a2;

select * from customer;
CREATE TABLE Customer(Account_no int primary key, Name varchar(25), Balance int, City varchar(30));

INSERT INTO customer values(1,'Ram',10000,'Pune'),(2,'Ravi',25000,'Nasik'),(3,'Sachin',30000,'Mumbai');

CREATE TABLE loan(Loan_no int primary key, Name varchar(25), Loan_Amount int);
INSERT INTO loan values(1,'Ram',10000),(2,'Ravi',50000),(3,'Sachin',40000);

SELECT NAME FROM customer UNION SELECT NAME FROM loan;

SELECT NAME FROM customer INTERSECT SELECT NAME FROM loan;

SELECT * FROM Customer WHERE name NOT IN (SELECT NAME FROM loan);

CREATE VIEW highBalance AS select * from customer where balance >=20000;
CREATE VIEW nasikBalance AS select * from customer where balance >=20000 and city='Nasik';

CREATE INDEX ind_no ON customer(name);
SHOW INDEX from customer;
DROP INDEX ind_no ON Customer;
CREATE INDEX ind_no ON customer(name);

select * from customer ORDER BY balance asc;
select * from loan ORDER BY loan_amount desc;

