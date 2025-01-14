INSERT INTO Customers(first_name,last_name,age,country)
VALUES('John','Doe',31,'USA');
VALUES('robert','Luna',22,'USA');
VALUES('David','Robinson',22,'UK');
VALUES('John','Reinhardt',25,'UK');
VALUES('Betty','Doe',28,'UAE');
  /*
  3rd query
  */
SELECT country, COUNT(*) As number_of_customers
FROM customers
GROUP BY country;

/*
4th query
*/
SELECT *
FROM Orders
WHERE amount BETWEEN 100 AND 500;

/*
5TH Query
*/
  
SELECT c.first_name, c.last_name
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
WHERE o.item = 'Keyboard';

/*
6th Query
*/

SELECT DISTINCT c.country
FROM Customers c
JOIN Shippings s ON c.customer_id = customer_id
WHERE s.status = 'Pending';

/*
7th Query
*/
SELECT o.customer_id,c.first_name,c.last_name,COUNT(o.order_id) AS number_of_orders
FROM orders o
JOIN customers c ON o.customer_id=c.customer_id
GROUP BY o.customer_id,c.first_name,c.last_name;