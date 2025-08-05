CREATE DATABASE Company;
USE Company;
CREATE TABLE Employee(Emp_ID INT PRIMARY KEY, Name VARCHAR(50),Department varchar(50),Salary INT DEFAULT 30000,Email VARCHAR(100));
#Insert all Values
INSERT INTO Employee(Emp_id,Name,Department,Salary,Email) VALUES (101,'Sneha','HR',40000,'sneha@gmail.com');
#Insert NULL Values
INSERT INTO Employee(Emp_id,Name,Department,Salary,Email) VALUES (102,'Sakshi','Finance',50000,NULL);
#Insert Default Values
INSERT INTO Employee(Emp_id,Name,Department,Email) VALUES (103,'Anjali','IT','Anjali@gmail.com');
INSERT INTO Employee(Emp_id,Name,Salary,Email) VALUES (104,'Sachi',45000,'sachi@gmail.com');

SELECT * FROM Employee;

#UPDATE DATA
UPDATE Employee SET Department='Marketing' WHERE Emp_id=104;
UPDATE Employee SET Salary =Salary - 25000 WHERE Emp_id =103;
	
#DELETE Employee with no email
SELECT * FROM Employee WHERE Email IS NULL;
SET SQL_SAFE_UPDATES =0;
DELETE FROM Employee WHERE Email IS NULL;
#delete specific employee
DELETE FROM Employee WHERE Emp_id =101;

