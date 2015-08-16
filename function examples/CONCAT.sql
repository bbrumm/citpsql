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
SELECT CONCAT ('Complete ', 'IT Professional') AS NEW_CONCAT
FROM DUAL;

--Example 2
SELECT CONCAT (first_name, last_name) AS NEW_CONCAT
FROM customers;

--Example 3
SELECT CONCAT('My ', 'Résumé') AS NEW_CONCAT
FROM DUAL;

--Example 4
SELECT CONCAT(full_address, country) AS NEW_CONCAT
FROM customers;

--Example 5
SELECT first_name || last_name AS NEW_CONCAT
FROM customers;

--Example 6
SELECT CONCAT(CONCAT(first_name, last_name), country) AS NEW_CONCAT
FROM customers;

--Example 7
SELECT CONCAT(CONCAT(full_address, ', '), country) AS NEW_CONCAT
FROM customers;

--Example 8
SELECT CONCAT(CONCAT(CONCAT(CONCAT(first_name, ' '), last_name), ' - '), full_address) AS NEW_CONCAT
FROM customers;

--Example 9
SELECT first_name || ' ' || last_name || ' - ' || full_address AS NEW_CONCAT
FROM customers;





