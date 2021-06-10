USE test;

select * from Products;

-- min
SELECT MIN(Price) FROM Products;

SELECT * FROM Products
ORDER BY Price;

-- max
SELECT MAX(Price) FROM Products;

-- count
SELECT COUNT(*) FROM Products;

-- avg
SELECT avg(Price) FROM Products;

-- sun
SELECT SUM(Price) FROM Products;

SELECT * FROM Products;

-- exercise 01
SELECT MIN(Price) FROM Products;

-- exercise 02
SELECT MAX(Price) FROM Products;

-- exercise 03
SELECT COUNT(*) FROM Products WHERE Price = 18;

-- exercise 04
SELECT AVG(Price) FROM Products;

-- exercise 05
SELECT SUM(Price) FROM Products;

