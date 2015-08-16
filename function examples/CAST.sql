DROP TABLE customers;

CREATE TABLE customers (
first_name varchar2(100),
last_name varchar2(100),
country varchar2(20),
full_address CLOB,
employees number,
start_date date
);

INSERT INTO customers (first_name, last_name, country, full_address, employees, start_date) VALUES ('John', 'Smith', 'USA', '10 Long Road', 4, '12-APR-2010');
INSERT INTO customers (first_name, last_name, country, full_address, employees, start_date) VALUES ('Sally', 'Jones', 'USA', '50 Market Street', 10, '04-JUL-2011');
INSERT INTO customers (first_name, last_name, country, full_address, employees, start_date) VALUES ('Steve', 'Brown', 'Canada', '201 Flinders Lane', 15, '21-MAR-2009');
INSERT INTO customers (first_name, last_name, country, full_address, employees, start_date) VALUES ('Mark', 'Allan', 'UK', '8 Smith Street', 23, '1-FEB-2001');
INSERT INTO customers (first_name, last_name, country, full_address, employees, start_date) VALUES ('Adam', 'Cooper', 'USA', '14 Wellington Road', 55, NULL);
INSERT INTO customers (first_name, last_name, country, full_address, employees, start_date) VALUES ('Josh', 'Thompson', NULL, '80 Victoria Street', 1, '10-FEB-2012');
INSERT INTO customers (first_name, last_name, country, full_address, employees, start_date) VALUES ('Peter', 'Manson', 'France', '5 Johnson St', NULL, '16-OCT-2012');
INSERT INTO customers (first_name, last_name, country, full_address, employees, start_date) VALUES (NULL, '', NULL, '155 Long Road', NULL, '16-OCT-2012');

SELECT * FROM customers;


--Example 1

SELECT '30-APRIL-2015',
CAST('30-APRIL-2015' AS DATE) AS OUTPUT_VALUE
FROM dual;

--Example 2

SELECT 41.522,
CAST(41.522 AS CHAR(10)) AS OUTPUT_VALUE
FROM dual;

--Example 3

SELECT '  2093 ',
CAST('  2093 ' AS NUMBER) AS OUTPUT_VALUE
FROM dual;

--Example 4

SELECT start_date,
CAST(start_date AS TIMESTAMP) AS OUTPUT_VALUE
FROM customers;

--Example 5

SELECT 9834,
CAST(9834 AS VARCHAR2(30)) AS OUTPUT_VALUE
FROM dual;

--Example 6


SELECT first_name
FROM customers
WHERE country = 'USA';

CREATE TYPE usa_employee_first_names AS TABLE OF VARCHAR2(100);

SELECT  
CAST(MULTISET(SELECT first_name
  FROM customers
  WHERE country = 'USA')
  AS usa_employee_first_names) AS OUTPUT_VALUE
FROM dual;


