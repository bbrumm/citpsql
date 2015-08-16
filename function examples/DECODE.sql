DROP TABLE customers;

CREATE TABLE customers (
first_name varchar2(100),
last_name varchar2(100),
country varchar2(20),
employees number,
start_date date
);

INSERT INTO customers (first_name, last_name, country, employees, start_date) VALUES ('John', 'Smith', 'USA', 4, '12-APR-2010');
INSERT INTO customers (first_name, last_name, country, employees, start_date) VALUES ('Sally', 'Jones', 'USA', 10, '04-JUL-2011');
INSERT INTO customers (first_name, last_name, country, employees, start_date) VALUES ('Steve', 'Brown', 'Canada', 15, '21-MAR-2009');
INSERT INTO customers (first_name, last_name, country, employees, start_date) VALUES ('Mark', 'Allan', 'UK', 23, '1-FEB-2001');
INSERT INTO customers (first_name, last_name, country, employees, start_date) VALUES ('Adam', 'Cooper', 'USA', 55, NULL);
INSERT INTO customers (first_name, last_name, country, employees, start_date) VALUES ('Josh', 'Thompson', NULL, 1, '10-FEB-2012');
INSERT INTO customers (first_name, last_name, country, employees, start_date) VALUES ('Peter', 'Manson', 'France', NULL, '16-OCT-2012');



SELECT * FROM customers;


/* Examples */

/* Example 1 */

SELECT first_name, country, 
DECODE(country, 'USA', 'North America') AS Decode_Result 
FROM customers;

/* Example 2 */

SELECT first_name, country, 
DECODE(country, 'USA', 'North America', 'UK', 'Europe') AS Decode_Result
FROM customers;

/* Example 3 */

SELECT first_name, country, 
DECODE(country, 'USA', 'North America', 'UK', 'Europe', 'Other') AS Decode_Result 
FROM customers;

/* Example 4 */

SELECT first_name, country, 
DECODE(country, 'USA', 'North America', 'Canada', 'North America', 'UK', 'Europe', 'France', 'Europe', 'Other') AS Decode_Result 
FROM customers;

/* Example 5 */

SELECT first_name, employees, 
DECODE(employees, 1, 'Small') AS Decode_Result 
FROM customers;

/* Example 6 */

SELECT first_name, employees, 
DECODE(employees, 1, 'Small', 10, 'Medium', 50, 'Large', 'Unknown') AS Decode_Result
FROM customers;

/* Example 7 */

SELECT first_name, country, 
DECODE(country, 'USA', 'North America', NULL, 'No Country') AS Decode_Result 
FROM customers;

/* Example 8 */

SELECT first_name, country
FROM customers
WHERE DECODE(country, 'USA', 'North America', 'Canada', 'North America', 'UK', 'Europe', 'France', 'Europe', 'Other') = 'North America';

/* Example 9 */
SELECT first_name, country, 
DECODE(SIGN(INSTR(country, 'U')), 1, 'Found U', 0, 'Did not find U', 'Unsure') AS Decode_Result
FROM customers;


/* Example 10 */
SELECT first_name, employees, 
DECODE(SIGN(20 - employees), 1, 'Less than 20', -1, 'Greater than 20', 'Unsure') AS Decode_Result
FROM customers;

/* Example 11 */

SELECT first_name, last_name, country FROM customers;

UPDATE customers
SET last_name = DECODE(country, 'USA', 'American', last_name);

SELECT first_name, last_name, country FROM customers;










