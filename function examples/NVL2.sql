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

SELECT first_name,
NVL2(first_name, first_name, 'No name provided') AS First_Name_Check
FROM customers;

--Example 2
SELECT first_name,
NVL2(first_name, first_name, NULL) AS First_Name_Check
FROM customers;

--Example 3
SELECT first_name, employees,
NVL2(employees, employees, 0) AS Employee_Check
FROM customers;

--Example 4
SELECT first_name, start_date,
NVL2(start_date, start_date, '01-JAN-2000') AS Date_Check
FROM customers;

--Example 5
SELECT first_name, employees,
NVL2(employees, 'Has some employees', 'Zero') AS Employee_Check
FROM customers;


