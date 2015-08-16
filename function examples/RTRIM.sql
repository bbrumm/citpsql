SELECT RTRIM('Complete IT Professional   ') AS RTRIM_EXAMPLE FROM DUAL;

SELECT RTRIM('Complete IT Professional___', '_') AS RTRIM_EXAMPLE FROM DUAL;

SELECT RTRIM('Complete IT Professional; ; ; ; ; ', ' ; ') AS RTRIM_EXAMPLE FROM DUAL;

SELECT country, RTRIM(country, 'A') AS RTRIM_EXAMPLE FROM customers;

SELECT full_address, RTRIM(full_address, 'et') AS RTRIM_EXAMPLE FROM customers;

SELECT RTRIM('Complete IT Professional00', 0) AS RTRIM_EXAMPLE FROM DUAL;

SELECT LTRIM(RTRIM('___Complete IT Professional__', '_'), '_') AS RTRIM_EXAMPLE FROM DUAL;

SELECT RTRIM('Complete IT Professionalé', 'é') AS RTRIM_EXAMPLE FROM DUAL;