DROP TABLE customers;

CREATE TABLE CUSTOMERS (
first_name varchar2(100),
last_name varchar2(100),
country varchar2(20),
employees number
);

INSERT INTO CUSTOMERS (first_name, last_name, country, employees) VALUES ('John', 'Smith', 'USA', 4);
INSERT INTO CUSTOMERS (first_name, last_name, country, employees) VALUES ('Sally', 'Jones', 'USA', 10);
INSERT INTO CUSTOMERS (first_name, last_name, country, employees) VALUES ('Steve', 'Brown', 'Canada', 15);
INSERT INTO CUSTOMERS (first_name, last_name, country, employees) VALUES ('Mark', 'Allan', 'UK', 23);
INSERT INTO CUSTOMERS (first_name, last_name, country, employees) VALUES ('Adam', 'Cooper', 'USA', 55);



SELECT * FROM CUSTOMERS;

/* Examples */

/* 1 - Simple with text */

SELECT first_name, last_name, country,
CASE country
WHEN 'USA' THEN 'North America'
WHEN 'Canada' THEN 'North America'
WHEN 'UK' THEN 'Europe'
WHEN 'France' THEN 'Europe'
ELSE 'Unknown'
END
FROM customers
ORDER BY first_name, last_name;

/* 2 - same as 1 but with col name */
SELECT first_name, last_name, country,
CASE country
WHEN 'USA' THEN 'North America'
WHEN 'Canada' THEN 'North America'
WHEN 'UK' THEN 'Europe'
WHEN 'France' THEN 'Europe'
ELSE 'Unknown'
END Continent
FROM customers
ORDER BY first_name, last_name;

/* 3 - searched case */

SELECT first_name, last_name, country,
CASE 
WHEN country = 'USA' THEN 'North America'
WHEN country = 'Canada' THEN 'North America'
WHEN country = 'UK' THEN 'Europe'
WHEN country = 'France' THEN 'Europe'
ELSE 'Unknown'
END Continent
FROM customers
ORDER BY first_name, last_name;

/* 4 - searched with numbers */

SELECT first_name, last_name, employees,
CASE 
WHEN employees < 10 THEN 'Small'
WHEN employees >= 10 AND employees <= 50 THEN 'Medium'
WHEN employees >= 50 THEN 'Large'
END SizeOfCompany
FROM customers
ORDER BY first_name, last_name;

/* 5 - IN for multiple conditions */

SELECT first_name, last_name, country,
CASE 
WHEN country IN ('USA', 'Canada') THEN 'North America'
WHEN country IN ('UK', 'France') THEN 'Europe'
ELSE 'Unknown'
END Continent
FROM customers
ORDER BY first_name, last_name;

/* 6 - case within case */

SELECT first_name, last_name, country,
CASE 
WHEN country IN ('USA', 'Canada') THEN 
  (CASE WHEN first_name = 'Sally' THEN 'North America F' ELSE 'North America M' END)
WHEN country IN ('UK', 'France') THEN 
  (CASE WHEN first_name = 'Sally' THEN 'Europe F' ELSE 'Europe M' END)
ELSE 'Unknown'
END Continent
FROM customers
ORDER BY first_name, last_name;


/* 7 - functions */

SELECT first_name, last_name, employees,
CASE 
WHEN MOD(employees, 2) = 0 THEN 'Even Number of Employees'
WHEN MOD(employees, 2) = 1 THEN 'Odd Number of Employees'
ELSE 'Unknown'
END OddOrEven
FROM customers
ORDER BY first_name, last_name;

/* 8 Multiple matches */

SELECT first_name, last_name, employees,
CASE 
WHEN employees < 1 THEN 'No Employees'
WHEN employees < 10 THEN 'Small'
WHEN employees <= 50 THEN 'Medium'
WHEN employees >= 50 THEN 'Large'
END SizeOfCompany
FROM customers
ORDER BY first_name, last_name;


/* 9 CASE in a WHERE clause */


SELECT first_name, last_name, country
FROM customers
WHERE
(CASE 
WHEN country IN ('USA', 'Canada') THEN 'North America'
WHEN country IN ('UK', 'France') THEN 'Europe'
ELSE 'Unknown'
END) = 'North America'
ORDER BY first_name, last_name;



