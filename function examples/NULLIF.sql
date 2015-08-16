--Example 1

SELECT NULLIF(23, 23) AS NULLCHECK FROM dual;


--Example 2
SELECT NULLIF(23, 29) AS NULLCHECK FROM dual;

--Example 3
SELECT NULLIF(23.000, 23) AS NULLCHECK FROM dual;

--Example 4
SELECT NULLIF('Sunday', 'Sunday') AS NULLCHECK FROM dual;

--Example 5
SELECT NULLIF('Sunday', 'Saturday') AS NULLCHECK FROM dual;

--Example 6
SELECT NULLIF('23.7', 23.7) AS NULLCHECK FROM dual;

--Example 7
SELECT NULLIF(SYSDATE, 'Someday') AS NULLCHECK FROM dual;

--Example 8
SELECT NULLIF(NULL, 'Sunday') AS NULLCHECK FROM dual;

--Example 9
SELECT NULLIF('Sunday', NULL) AS NULLCHECK FROM dual;

