SELECT * FROM Customers
WHERE CustomerId = 2;

UPDATE Customers
SET CustomerName = '스파이더맨';

UPDATE Customers
SET CustomerName = '아이언맨'
WHERE CustomerID = 1;

UPDATE Customers
SET CustomerName = 'thor',
	ContactName = 'odinson',
	Address = 'Asgard'
WHERE CustomerId = 1;

-- exercise 1 
UPDATE
 Customers
SET
 City = 'Oslo';

-- exercise 2
UPDATE
 Customers
SET
 City = 'Oslo'
WHERE
 Country = 'Norway';

-- exercise 3

UPDATE
 Customers
SET
 City = 'Oslo'
,Country = 'Norway'
WHERE CustomerID = 32;

