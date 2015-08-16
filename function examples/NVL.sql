DROP TABLE customers;

CREATE TABLE CUSTOMERS (
first_name varchar2(100),
last_name varchar2(100),
country varchar2(20),
employees number,
start_date date
);

INSERT INTO CUSTOMERS (first_name, last_name, country, employees, start_date) VALUES ('John', 'Smith', 'USA', 4, '12-APR-2010');
INSERT INTO CUSTOMERS (first_name, last_name, country, employees, start_date) VALUES ('Sally', 'Jones', 'USA', 10, '04-JUL-2011');
INSERT INTO CUSTOMERS (first_name, last_name, country, employees, start_date) VALUES ('Steve', 'Brown', 'Canada', 15, '21-MAR-2009');
INSERT INTO CUSTOMERS (first_name, last_name, country, employees, start_date) VALUES ('Mark', 'Allan', 'UK', 23, '1-FEB-2001');
INSERT INTO CUSTOMERS (first_name, last_name, country, employees, start_date) VALUES ('Adam', 'Cooper', 'USA', 55, NULL);
INSERT INTO CUSTOMERS (first_name, last_name, country, employees, start_date) VALUES ('Josh', 'Thompson', NULL, 1, '10-FEB-2012');
INSERT INTO CUSTOMERS (first_name, last_name, country, employees, start_date) VALUES ('Peter', 'Manson', 'France', NULL, '16-OCT-2012');



SELECT * FROM CUSTOMERS;


/* Examples */

/* 1 - string */

SELECT first_name, last_name, country, NVL(country, 'No country')
FROM customers;

/* 2 - numbers */

SELECT first_name, last_name, employees, NVL(employees, 0) "Fixed Employees"
FROM customers;

/* 3 - dates */

SELECT first_name, last_name,  start_date, NVL(start_date, TO_DATE('01-JAN-2000')) "Fixed Start Date"
FROM customers;

/* 4 - another column as return */

SELECT first_name, last_name, country, NVL(country, last_name)
FROM customers;

/* 5 - multiple columns */

SELECT first_name, last_name,  
NVL(country, 'No country') "Country", 
NVL(employees, 0) "Employees",
NVL(start_date, TO_DATE('01-JAN-2000')) "Start Date"
FROM customers;

