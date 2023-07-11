--Write a query to find the second highest salary from an "employees" table

select * from Salary

SELECT MAX(salary) AS SecondHighestSalary
FROM (
  SELECT salary, RANK() OVER (ORDER BY salary DESC) AS rank
  FROM Salary
) AS subquery
WHERE rank = 2;

--Write a query to calculate the running total of a column in a result set

select Empno,Grade,SUM(Salary) over(order by Empno) as RunningTotal
from Salary

--Write a query to find duplicate records in a table based on specific columns

SELECT Empno,Grade, COUNT(*)
FROM Salary
GROUP BY Empno, Grade
HAVING COUNT(*) > 1;