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


SELECT country, LISTAGG(last_name) WITHIN GROUP (ORDER BY last_name)
FROM customers
GROUP BY country;

SELECT LISTAGG(last_name, ',') WITHIN GROUP (ORDER BY last_name)
FROM customers


SELECT first_name, last_name, country, LISTAGG(last_name, ',') WITHIN GROUP (ORDER BY last_name) OVER (PARTITION BY country)
FROM customers


--Examples
SELECT country, last_name
FROM customers;




--Example 1
SELECT LISTAGG(last_name, ',') WITHIN GROUP (ORDER BY last_name) as LISTAGG_OUTPUT
FROM customers;

--Example 2
SELECT LISTAGG(last_name, ',') WITHIN GROUP (ORDER BY last_name) as LISTAGG_OUTPUT
FROM customers
WHERE country = 'USA';

--Example 3
SELECT country, LISTAGG(last_name, ',') WITHIN GROUP (ORDER BY last_name) as LISTAGG_OUTPUT
FROM customers
GROUP BY country;


--Example 4
SELECT country, LISTAGG(last_name, ',') WITHIN GROUP (last_name) as LISTAGG_OUTPUT
FROM customers
GROUP BY country;

--Example 5
SELECT country, LISTAGG(last_name) WITHIN GROUP (ORDER BY last_name) as LISTAGG_OUTPUT
FROM customers
GROUP BY country;

--Example 6
SELECT country, LISTAGG(last_name, ', ') WITHIN GROUP (ORDER BY last_name) as LISTAGG_OUTPUT
FROM customers
GROUP BY country;

--Example 7
SELECT first_name, last_name, country, LISTAGG(last_name, ',') WITHIN GROUP (ORDER BY last_name) OVER (PARTITION BY country) as LISTAGG_OUTPUT
FROM customers

--Example 8
SELECT first_name, last_name, country, LISTAGG(last_name, ',') WITHIN GROUP (ORDER BY last_name) OVER (PARTITION BY last_name) as LISTAGG_OUTPUT
FROM customers

--Example 9
SELECT first_name, last_name, country, LISTAGG(last_name, ',') WITHIN GROUP (ORDER BY last_name) as LISTAGG_OUTPUT
FROM customers

