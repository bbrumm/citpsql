DROP TABLE datelist;

CREATE TABLE datelist (
datevalue DATE,
timestampvalue TIMESTAMP
);

INSERT INTO datelist (datevalue, timestampvalue) VALUES (SYSDATE, SYSTIMESTAMP);

SELECT datevalue, timestampvalue FROM datelist;

--Example 1
SELECT TRUNC(datevalue, 'YEAR') AS TRUNCVALUE
FROM datelist;

--Example 2
SELECT TRUNC(datevalue, 'MONTH') AS TRUNCVALUE
FROM datelist;

--Example 3
SELECT TRUNC(datevalue, 'DD') AS TRUNCVALUE
FROM datelist;

--Example 4
SELECT TRUNC(datevalue, 'IW') AS TRUNCVALUE
FROM datelist;

--Example 5
SELECT TRUNC(SYSDATE) AS TRUNCVALUE
FROM dual;

--Example 6
SELECT TRUNC(timestampvalue) AS TRUNCVALUE
FROM datelist;

--Example 7
SELECT TRUNC(timestampvalue, 'MM') AS TRUNCVALUE
FROM datelist;

--Example 8
SELECT TRUNC(5718.46987) AS TRUNCVALUE
FROM dual;

--Example 9
SELECT TRUNC(5718.46987, 2) AS TRUNCVALUE
FROM dual;

--Example 10
SELECT TRUNC(5718.46987, -3) AS TRUNCVALUE
FROM dual;

--Example 11
SELECT TRUNC(5718.46987, 0) AS TRUNCVALUE
FROM dual;


