SELECT MOD(16,3) as MOD_RESULT
FROM dual;

SELECT MOD(16.5,3) as MOD_RESULT
FROM dual;

SELECT MOD(16,3.5) as MOD_RESULT
FROM dual;

SELECT MOD(16.5,3.5) as MOD_RESULT
FROM dual;

SELECT MOD(16,0) as MOD_RESULT
FROM dual;

SELECT MOD('16','3') as MOD_RESULT
FROM dual;

SELECT MOD(47,15) as MOD_RESULT
FROM dual;



SELECT first_name, last_name, rn
(
  SELECT first_name, last_name, rownum as rn
  FROM customers
) c
WHERE MOD(rn, 2) = 0;


