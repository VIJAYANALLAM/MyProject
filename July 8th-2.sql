
select *from department

--1.Update records in a table

UPDATE Department SET DNAME = 'HR' WHERE Deptno = 10

--2.Insert a new record into a table:

insert into Department values(50,'Admin','5th floor')



select * from employee

EXEC sp_rename 'employee.city' ,'City' ,  'column'


---3.I want to join 2 tables but i don't want repeat common columns in output and this output have to create a new table.
---so how to write t-sql query for this scenario.  

select e.*,d.DNAME,d.[Location] into emp_dpt
from employee e join Department d on e.Deptno = d. Deptno

select * from emp_dpt

--4.Retrieve records using the IN operator:


SELECT * FROM emp_dpt WHERE City IN ('raleigh','chicago')

---5.Write a query to retrieve the deparment location of the employee king patrick

select [Location] from Department where Deptno = (select Deptno from employee where FirstName = 'King')
