

Some of The Most Important SQL Commands
SELECT - extracts data from a database
UPDATE - updates data in a database
DELETE - deletes data from a database
INSERT INTO - inserts new data into a database
CREATE DATABASE - creates a new database
ALTER DATABASE - modifies a database
CREATE TABLE - creates a new table
ALTER TABLE - modifies a table
DROP TABLE - deletes a table
CREATE INDEX - creates an index (search key)
DROP INDEX - deletes an index


--SELECT
SELECT * FROM Customers;
SELECT CustomerName, City FROM Customers;

--DISTINCT
SELECT DISTINCT Country FROM Customers; --Select all the different countries from the "Customers" table:

--Count Distinct
SELECT COUNT(DISTINCT Country) FROM Customers; --By using the DISTINCT keyword in a function called COUNT, we can return the number of different countries.

SELECT Count(*) AS DistinctCountries
FROM (SELECT DISTINCT Country FROM Customers);

--WHERE Clause
--The WHERE clause is used to filter records.
--It is used to extract only those records that fulfill a specified condition.
SELECT * FROM Customers WHERE Country='Mexico';
SELECT * FROM Customers WHERE CustomerID=1;
SELECT * FROM Products WHERE Price = 18;
SELECT * FROM Customers WHERE CustomerID > 80;
SELECT * FROM Products WHERE Price < 30;
SELECT * FROM Products WHERE Price >= 30;
SELECT * FROM Products WHERE Price <= 30;
SELECT * FROM Products WHERE Price <= 30;
SELECT * FROM Products WHERE Price <> 18;
SELECT * FROM Products WHERE Price BETWEEN 50 AND 60;
SELECT * FROM Customers WHERE City LIKE 's%';
SELECT * FROM Customers WHERE City IN ('Paris','London');

--ORDER BY
--The ORDER BY keyword is used to sort the result-set in ascending or descending order.
SELECT * FROM Products ORDER BY Price;
--The ORDER BY keyword sorts the records in ascending order by default. To sort the records in descending order, use the DESC keyword.
--Sort the products from highest to lowest price:
SELECT * FROM Products ORDER BY Price DESC;
--Sort the products alphabetically by ProductName:
SELECT * FROM Products ORDER BY ProductName;
--Sort the products by ProductName in reverse order:
SELECT * FROM Products ORDER BY ProductName DESC;
--ORDER BY Several Columns
SELECT * FROM Customers ORDER BY Country, CustomerName;
SELECT * FROM Customers ORDER BY Country ASC, CustomerName DESC;

--AND Operator
--The AND operator displays a record if all the conditions are TRUE.
SELECT * FROM Customers WHERE Country ='Spain' AND CustomerName LIKE 'G%';
SELECT * FROM Cuatomers WHERE Country ='Germany' AND City = 'Berlin' AND PostalCode > 12000
--Combining AND and OR
SELECT * FROM Customers WHERE Country = 'Spain' AND (CustomerName LIKE 'A%' OR CustomerName LIKE 'G%')




