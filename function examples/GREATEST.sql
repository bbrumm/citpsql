SELECT GREATEST(5, 18, 21, 3, 65) AS GREATEST_CHECK FROM dual;

SELECT GREATEST('France', 'England', 'Russia', 'Japan') AS GREATEST_CHECK FROM dual;

SELECT GREATEST('9', '12', '73', '15') AS GREATEST_CHECK FROM dual;

SELECT GREATEST('45', 'apple', 'banana', 100) AS GREATEST_CHECK FROM dual;

SELECT GREATEST(
TO_DATE('25-MAR-2015'),
TO_DATE('14-APR-2015'),
TO_DATE('7-JAN-2015')) AS GREATEST_CHECK  
FROM dual;

SELECT GREATEST('France', 'England', NULL, 'Japan') AS GREATEST_CHECK FROM dual;

SELECT GREATEST('x', 'w', 'y', 'a', 'q', 'u', 'i', 'a', 'd', 's', 'g', 'k', 'e', 'w', 'i', 'p', 'a', 'z', 'b', 'c', 'm', 'w', 'r', 'y', 'n') ASGREATEST_CHECK 
FROM dual;
