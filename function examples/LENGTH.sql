SELECT LENGTH('Software Developer') AS LENGTH_TEST
FROM dual;

SELECT LENGTH('Software Developer     ') AS LENGTH_TEST
FROM dual;

SELECT country, LENGTH(country) AS COUNTRY_LENGTH
FROM customers;

SELECT LENGTH('') as LENGTH_EMPTY,

LENGTH(' ') as LENGTH_SPACE

FROM DUAL;