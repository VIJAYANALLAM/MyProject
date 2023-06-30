select * from employee

--1.Filtering data

select * from employee where [Location] like 'Raleigh'

select * from employee where Age > 30

--2.Sorting data

select * from employee order by FirstName ASC

select * from employee order by Age DESC

--3.Aggregating data

select count(*) from employee

select Avg(Age) from employee 

use lowes
select sum(salery) from employee

--4.Joining tables
select * from employee

select * from Department

Alter table dbo.Department
Alter column Deptno int


select * from Salary

Alter table dbo.Salary
Alter column Empno int

EXEC sp_help 'dbo.salary'

Alter table dbo.Salary
 Alter column Salary int

select * from Department d inner join  employee e  on  d.Deptno = e.Deptno

select FirstName,LastName,DNAME from employee inner join department on employee.deptno = department.deptno

select FirstName,Dname from employee right outer join department on employee.deptno = department.deptno

select FirstName,LastName,Salary from employee left outer join Salary on employee.Empno = Salary.Empno


--5.Grouping and aggregating data

 SELECT [Location], COUNT(*) as Total FROM employee GROUP BY [Location] 

 SELECT Grade, COUNT(*) FROM Salary GROUP BY Grade HAVING COUNT(*) > 1