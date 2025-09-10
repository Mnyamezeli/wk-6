USE salesdb;

/* fecthing data for all employees and combine employees table 
with offices table */

SELECT 
    e.firstName,
    e.lastName,
    e.email,
    e.officeCode
FROM employees AS e
INNER JOIN offices AS o
    ON e.officeCode = o.officeCode;

/* fecthing data from product table and combine product table 
with productlines table */

SELECT 
    p.productName,
    p.productVendor,
    p.productLine
FROM products AS p
LEFT JOIN productlines AS pl
    ON p.productLine = pl.productLine;

/* retrieve data for the first 10 orders and combine costomers table 
with the orders table */

SELECT 
    o.orderDate,
    o.shippedDate,
    o.status,
    o.customerNumber
FROM customers AS c
RIGHT JOIN orders AS o
    ON c.customerNumber = o.customerNumber
LIMIT 10;