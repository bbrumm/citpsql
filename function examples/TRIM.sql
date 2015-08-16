

--Example 1
SELECT TRIM('Jack   ') AS trimmed FROM dual;

--Example 2
SELECT TRIM(' John') AS trimmed FROM dual;

--Example 3
SELECT TRIM(' Julie   ') AS trimmed FROM dual;

--Example 4
SELECT TRIM(LEADING ' ' FROM ' Julie   ') AS trimmed FROM dual;

--Example 5
SELECT TRIM(TRAILING ' ' FROM ' Julie   ') AS trimmed FROM dual;

--Example 6
SELECT TRIM(BOTH ' ' FROM ' Julie   ') AS trimmed FROM dual;

--Example 7
SELECT TRIM('_' FROM 'Jordan___') AS trimmed FROM dual;

--Example 8
SELECT 'first line' || CHR(9) || 'after tab' || CHR(10) || 'next line'  || CHR(13) ||  'another line' AS FULL_STRING,
TRIM(
  TRANSLATE(
    TRANSLATE(
      TRANSLATE('first line' || CHR(9) || 'after tab' || CHR(10) || 'next line'  || CHR(13) ||  'another line', CHR(10), ' ')
    , CHR(13), ' ')
  , CHR(09), ' ')
) AS trimmed
FROM dual;

--Example 9
SELECT first_name
FROM customers
WHERE customer_id = 123;

UPDATE customers
SET first_name = TRIM(first_name)
WHERE customer_id = 123;

SELECT first_name
FROM customers
WHERE customer_id = 123;
