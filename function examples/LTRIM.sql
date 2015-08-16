SELECT LTRIM('    Complete IT Professional') AS LTRIM_EXAMPLE FROM DUAL;

SELECT LTRIM('___Complete IT Professional', '_') AS LTRIM_EXAMPLE FROM DUAL;

SELECT LTRIM('; ; ; ; ; Complete IT Professional', ' ; ') AS LTRIM_EXAMPLE FROM DUAL;

SELECT country, LTRIM(country, 'U') AS LTRIM_EXAMPLE FROM customers;

SELECT full_address, LTRIM(full_address, '1') AS LTRIM_EXAMPLE FROM customers;

SELECT LTRIM('000Complete IT Professional', 0) AS LTRIM_EXAMPLE FROM DUAL;

SELECT LTRIM(RTRIM('___Complete IT Professional__', '_'), '_') AS LTRIM_EXAMPLE FROM DUAL;

SELECT LTRIM('ÈÈComplete IT Professional', 'È') AS LTRIM_EXAMPLE FROM DUAL;