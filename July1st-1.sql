
Select * from employee

Select * from Department

Select * from Salary

--1.Find the average salary of employees

select Avg(Salary) as Average_Salary from dbo.Salary

--2.Retrieve the top 5 highest-paid employees

select TOP 5 * from dbo.Salary order by Salary Desc 

--3.Count the number of employees in each department

SELECT d.Deptno, d.DNAME, COUNT(e.EmpNo) AS EmployeeCount
FROM department d
LEFT JOIN employee e ON d.Deptno = e.Deptno
GROUP BY d.Deptno, d.DNAME

--4.Filter records using multiple conditions

select * from employee where [Location] = 'Chicago' And Age>35

--5.Update records in a table

update Salary set Salary = Salary * 1.2 where Grade = 'Manager'
update Salary set Salary =9000 where Empno = 1
update Salary set Salary =9500 where Empno = 6
update Salary set Salary =10000 where Empno = 8





