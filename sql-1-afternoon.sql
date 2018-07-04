CREATE TABLE Person (
  id SERIAL,
  Name TEXT,
  Age INTEGER,
  height INTEGER,
  city TEXT,
  favoriteColor TEXT,
  
  );

--   problem 2
  INSERT INTO Person 
  (name, age, height, city, favoriteColor)
  VALUES
  ('Alex', 32, 160, 'Phoenix', 'Green'),
  ('Cher', 32, 160, 'Phoenix', 'Green'),
  ('Bailey', 4, 80, 'Phoenix', 'Purple'),
  ('Kylie', 2, 40, 'Phoenix', 'Pink'),
  ('Daniel', 25, 170, 'Phoenix', 'Grey');
  

  --problem 3

SELECT * FROM Person
ORDER BY height DESC;

-- problem 4

SELECT * FROM Person
ORDER BY height ASC;

-- problem 5

SELECT * FROM Person
ORDER BY age DESC;

--problem 6

SELECT * FROM Person
WHERE age > 20;

--problem 7

SELECT * FROM Person
WHERE age = 18;

--problem 8

SELECT * FROM Person
WHERE age < 20 OR age > 30;

--problem 9

SELECT * FROM Person
WHERE age != 27;

--problem 10

SELECT * FROM Person
WHERE favoriteColor != 'red';

--problem 11

SELECT * FROM Person
WHERE favoriteColor != 'red' OR favoriteColor != 'blue';

--problem 12

SELECT * FROM Person
WHERE favoriteColor = 'Orange' OR favoriteColor = 'Green';

--problem 13

SELECT * FROM Person
WHERE favoriteColor IN ('orange','green','blue');


--problem 14

SELECT * FROM Person
WHERE favoriteColor IN ('yellow', 'Purple');

--STEP 2

CREATE TABLE Orders (
  PersonID INTEGER,
  ProductName TEXT,
  ProductPrice INTEGER,
  QUANITITY INTEGER
);

--PROBLEM 2

INSERT INTO Orders 
(PersonId, ProductName, ProductPrice, QUANITITY)
VALUES
  (1, 'shirt', 10, 2),
  (2, 'pants', 20, 1)

--problem 3

SELECT * FROM Orders;

--problem 4

SELECT SUM(QUANITITY) FROM Orders;

--problem 5

SELECT SUM(QUANITITY * ProductPrice) FROM Orders;

--problem 6


SELECT SUM(QUANITITY * ProductPrice) FROM Orders
WHERE PersonId = 1;



--STEP 3

INSERT INTO Artist
(ArtistId, Name)
VALUES
(1000, 'Destroy'),
(1001, 'Lame-os'),
(1002, 'Poops');

--problem 2


SELECT * FROM Artist
ORDER BY Name DESC LIMIT 10

--problem 3

SELECT * FROM Artist
ORDER BY Name ASC LIMIT 5

--problem 4

SELECT * FROM Artist
WHERE Name LIKE 'Black%';

--problem 5

SELECT * FROM Artist
WHERE Name LIKE '%Black%';


--STEP  4

SELECT FirstName, LastName FROM Employee
WHERE City = 'Calgary';

--problem 2

SELECT FirstName, LastName, BirthDate FROM Employee
ORDER BY BirthDate ASC LIMIT 1;

--problem 3

SELECT FirstName, LastName, BirthDate FROM Employee
ORDER BY BirthDate DESC LIMIT 1

--problem 4


SELECT FirstName, LastName, ReportsTo FROM Employee
WHERE ReportsTo = (SELECT EmployeeId FROM Employee WHERE FirstName = 'Nancy');

--problem 5

SELECT COUNT(*) FROM Employee
WHERE City = 'Lethbridge';




