SELECT LEAST(5, 18, 21, 3, 65) AS LEAST_CHECK FROM dual;

SELECT LEAST('France', 'England', 'Russia', 'Japan') AS LEAST_CHECK FROM dual;

SELECT LEAST('9', '12', '73', '15') AS LEAST_CHECK FROM dual;

SELECT LEAST('45', 'apple', 'banana', 100) AS LEAST_CHECK FROM dual;

SELECT LEAST(
TO_DATE('25-MAR-2015'),
TO_DATE('14-APR-2015'),
TO_DATE('7-JAN-2015')) AS LEAST_CHECK
FROM dual;

SELECT LEAST('France', 'England', NULL, 'Japan') AS LEAST_CHECK FROM dual;

SELECT LEAST('x', 'w', 'y', 'a', 'q', 'u', 'i', 'a', 'd', 's', 'g', 'k', 'e', 'w', 'i', 'p', 'a', 'z', 'b', 'c', 'm', 'w', 'r', 'y', 'n') AS LEAST_CHECK
FROM dual;