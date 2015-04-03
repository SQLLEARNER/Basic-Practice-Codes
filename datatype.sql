/*If you
want to substitute a NULL with an empty string, there are a number of ways for you to do this
programmatically. One option is to use COALESCE(<expression>, ''). For example, in this data,
only region can be NULL, so you can use the following query to replace a comma plus region
with an empty string when region is NULL.*/
SELECT empid, country, region, city,
country + COALESCE( N',' + region, N'') + N',' + city AS location
FROM HR.Employees;
/*Another option is to use the CONCAT function which, unlike the + operator, substitutes a
NULL input with an empty string. Here’s how the query looks*/
SELECT empid, country, region, city,
CONCAT(country, N',' + region, N',' + city) AS location
FROM HR.Employees;
