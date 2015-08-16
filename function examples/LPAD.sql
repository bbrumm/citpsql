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

SELECT * FROM customers;


--Example 1
SELECT first_name, LPAD(first_name, 10) AS padded_value
FROM customers;

--Example 2
SELECT first_name, LPAD(first_name, 10, '*') AS padded_value
FROM customers;

--Example 3
SELECT first_name, LPAD(first_name, 4, ' ') AS padded_value
FROM customers;

--Example 4
SELECT employees, LPAD(employees, 5, ' ') AS padded_value
FROM customers;

--Example 5
SELECT last_name, RPAD(LPAD(last_name, 10, '#'), 15, '*') AS padded_value
FROM customers;

--Example 6
SELECT country, LPAD(NVL(country, ' '), 10, '_') AS padded_value
FROM customers;

--Example 7
SELECT country, LPAD(country, 10, NULL) AS padded_value
FROM customers;

--Example 8
SELECT country, LPAD(country, 10, '-*') AS padded_value
FROM customers;

--Example 9
SELECT country, LPAD(country, LENGTH(country)*2, '*') AS padded_value
FROM customers;

