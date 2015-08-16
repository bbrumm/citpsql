--Example 1

SELECT ROUND(3162.845, 1) AS ROUNDED
FROM dual;

--Example 2
SELECT ROUND(3162.8451297, 5) AS ROUNDED
FROM dual;

--Example 3
SELECT ROUND(3162.845, -2) AS ROUNDED
FROM dual;

--Example 4
SELECT ROUND(142786, -3) AS ROUNDED
FROM dual;

--Example 5
SELECT ROUND(3162.845, 0) AS ROUNDED
FROM dual;

--Example 6
SELECT ROUND(3162.845) AS ROUNDED
FROM dual;

--Example 7
SELECT ROUND(3162.845/5)*5 as ROUNDED
FROM dual;





--Example 8
SELECT ROUND(142786, -2) AS ROUNDED
FROM dual;

--Example 9
SELECT SYSDATE, ROUND(SYSDATE, 'YEAR') AS ROUNDED
FROM dual;

--Example 10
SELECT SYSDATE, ROUND(SYSDATE, 'MONTH') AS ROUNDED
FROM dual;






