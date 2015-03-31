# Basic-Practice-Codes
/*Basic Selection of the query */
Select custid,orderid
from sales.orders
group by custid
/*Code to show the use of aliasing and sorting of data in the Tsql*/
SELECT DISTINCT custid, YEAR(orderdate) AS orderyear
FROM Sales.Orders;
/*. Following are
the main query clauses specified in the order that you are supposed to type them (known as
“keyed-in order”):
1. SELECT
2. FROM
3. WHERE
4. GROUP BY
5. HAVING
6. ORDER BY*/
/*Logical query processing took places in this fashion
1. From
2. Where 
3. Group by
4. Having
5. Select
6. Order by */
Select Name
,Sum(salary)
,EmployeeID
From Employee
Where Employee Id in ('10','12','13')
Group by EmployeeId, Name
Having sum(salary)>1000
order by Name
/*Example to show the execution of the where clause in the query*/
SELECT country, YEAR(hiredate) AS yearhired  /* Here where clause evaluated before select clause thats why this cause error  */
FROM HR.Employees
WHERE yearhired >= 2003;
/* Result : Msg 207, Level 16, State 1, Line 3
Invalid column name 'yearhired'.*/
/*Difference Between having and where clause  */
/*The WHERE clause is evaluated before rows are grouped, and therefore is evaluated
per row. The HAVING clause is evaluated after rows are grouped, and therefore
is evaluated per group.*/
/*ORDER BY clause is the first and only clause that is allowed to refer to column
aliases defined in the SELECT clause. That’s because the ORDER BY clause is the only one
to be evaluated after the SELECT clause.*/
SELECT CUSTID, MAX(ORDERID)
FROM  SALES.ORDERS
GROUP BY CUSTID
/*QUESTION 2 */
SELECT SHIPPERID
,SUM(FREIGHT) AS TOTALFRIEGHT
FROM SALES.ORDERS
GROUP BY SHIPPERID  
HAVING SUM(FREIGHT) >2000.00
/*It is important to use standard SQL code. This way, both the code and people’s knowledge
is more portable. Especially in cases where there are both standard and nonstandard
forms for a language element, it’s recommended to use the standard form.*/
/*Adding unneccesary distinct incurs a additional cost  */
SELECT empid, country, YEAR(hiredate) AS yearhired, yearhired - 1 AS prevyear
FROM HR.Employees;
/*T-SQL evaluates all expressions that
appear in the same logical query processing phase in an all-at-once manner. Note the use of
the word conceptually. SQL Server won’t necessarily physically process all expressions at the
same point in time, but it has to produce a result as if it did.*/  
