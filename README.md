
2		"SQL Queries:
a.Design and Develop SQLDDL statements which demonstrate the use of SQL objects such as Table, View, Index, Sequence, Synonym, different constraints etc.
b.Write at least 10 SQL queries on the suitable database application using SQL DML statements."
	I	Create following table
		Table Name : Customer
		Table Column Name : Account_no, Name, Balance,City
	II	Insert Following Record
		1   Ram    10000 Pune
		2   Ravi    25000 Nasik
		3   Sachin  30000  Mumbai
		
		"SQL Queries:
a.Design and Develop SQLDDL statements which demonstrate the use of SQL objects such as Table, View, Index, Sequence, Synonym, different constraints etc.
b.Write at least 10 SQL queries on the suitable database application using SQL DML statements."
	III	Set Operation : Union, Intersect,Minus
		Create following table
		Table Name : Loan
		Table Column Name : Loan_no, Name, Loan_Amount
		Insert Following Record
		1   Ram    10000
		2   Ravi    50000
		4  Dipak    40000
		
		1) Select customer having account in the bank or teken the loan from the bank
		2) Select customer having account as well as loan in the bank
		3) Select customer having account in the bank but not taken the loan
	IV	Create a view to display customer having balance greater than 20000
		Create a view to display customer from nasik having Balance greater than 20000
	V	Create a index on name column
		Create a composite index on Account_no and name column
	VI	Display Customer in the ascending order of Balance
		Display borower in the descending order of loan_amount
	VII	Calculate and display interest on given loan for 20 year (Use Synonym)
		
3		"SQL Queries – all types of Join, Sub-Query and View:
Write at least10 SQL queries for suitable database application using SQL DML statements."
	I	Create following table
		Table Name : Student_Mark
		Table Column Name : Rollno, Name, Marks, Branch
	II	Apply primary key constraint
	III	Insert four records
		1     Ravi         90    Computer
		2     Vedika     70    Computer
		3     Aarush    95    IT
		4    Jyoti         60   IT
	IV	Display Student Having marks above 70
	V	Display Student Having marks Below70
	VI	Display Student Having marks equal to 70 and name is Vedika
	VII	Change Student Name Ravi to Sachin
	VIII	Delete Student whose name is Aarush 
	IX	Write a Function to display student having max mark.
	X	Display Minimum, Maximum, Average, Sum, Total count of each branch
		
4		"Unnamed PL/SQL code block: Use of Control structure and Exception handling is mandatory. Write a PL/SQL block of code for the following requirements:- 
Schema: 1. Borrower(Rollin, Name, DateofIssue, NameofBook, Status)                                                    
2. Fine(Roll_no,Date,Amt)                                                                                           
 Accept roll_no & name of book from user.                                                                                                                                  
 Check the number of days (from date of issue), if days are between 15 to 30 then fine amount will be Rs 5per day. 
 If no. of days>30, per day fine will be Rs 50 per day & for days less than 30, Rs. 5 per day.
 After submitting the book, status will change from I to R. 
 If condition of fine is true, then details will be stored into fine table."
		
5		Write a PL/SQL code block to calculate the area of a circle for a value of radius varying from 5 to 9. Store the radius and the corresponding values of calculated area in an empty table named areas, consisting of two columns, radius and area.
		
6		"Named PL/SQL Block: PL/SQL Stored Procedure and Stored Function.
Write a Stored Procedure namely proc_Grade for the categorization of student. If marks scored by students in examination is <=1500 and marks>=990 then student will be placed in distinction category if marks scored are between 989 and900 category is first class, if marks899and 825 category is Higher Second Class.
Write a PL/SQLblock to use procedure created with above requirement. Stud_Marks(name, total_marks)        Result(Roll,Name, Class)"
		
7		"Cursors:(All types: Implicit, Explicit, Cursor FOR Loop, Parameterized Cursor)
Write a PL/SQL block of code using parameterized Cursor that will merge the data available in the newly created table N_Roll Call with the data available in the table O_RollCall. If the data in the first table already exist in the second table then that data should be skipped."
		
8		"Database Trigger (All Types: Row level and Statement level triggers, Before and After Triggers).
Write a database trigger on Library table. The System should keep track of the records that are being updated or deleted. The old value of updated or deleted records should be added in Library_Audit table."
