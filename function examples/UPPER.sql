--Example 1
SELECT UPPER('Complete IT Professional') FROM dual;

--Example 2
SELECT UPPER('Complete 2015') FROM dual;

--Example 3
SELECT first_name, last_name
FROM customers
WHERE UPPER(first_name) = 'JOHN';

--Example 4
SELECT first_name, last_name, country
FROM customers
WHERE UPPER(country) = UPPER('usa');



--Example 5
SELECT first_name, last_name, country
FROM customers
WHERE UPPER(country) LIKE ('U%');


--Example 6
SELECT first_name, last_name, country
FROM customers
WHERE UPPER(first_name) LIKE UPPER('m%');


--Example 7
SELECT UPPER(SUBSTR('complete it professional',1,1)) || SUBSTR('complete it professional',2) AS upper_text FROM dual;

