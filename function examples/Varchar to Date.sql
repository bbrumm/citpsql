DROP TABLE date_test;

CREATE TABLE date_test (
test_id NUMBER,
date_as_text VARCHAR2(20),
date_value DATE);

INSERT INTO date_test (test_id, date_as_text) VALUES (1, '01-JAN-2015');
INSERT INTO date_test (test_id, date_as_text) VALUES (2, 'Feb 10, 2015');
INSERT INTO date_test (test_id, date_as_text) VALUES (3, 'MAR 20 2014');
INSERT INTO date_test (test_id, date_as_text) VALUES (4, '06/04/2015');

SELECT test_id, date_as_text, date_value
FROM date_test;


SELECT test_id, CAST(date_as_text AS DATE)
FROM date_test
WHERE test_id = 1;

SELECT test_id, TO_DATE(date_as_text) FROM date_test;

SELECT test_id, TO_DATE(date_as_text, 'DD-MON-YYYY')
FROM date_test
WHERE test_id = 1;

SELECT test_id, TO_DATE(date_as_text, 'MON DD,YYYY')
FROM date_test
WHERE test_id = 2;

SELECT test_id, TO_DATE(date_as_text, 'MON DD YYYY')
FROM date_test
WHERE test_id = 3;

SELECT test_id, TO_DATE(date_as_text, 'DD/MM/YYYY')
FROM date_test
WHERE test_id = 4;

--Updates
UPDATE date_test
SET date_value = TO_DATE(date_as_text, 'DD-MON-YYYY')
WHERE test_id = 1;

UPDATE date_test
SET date_value = TO_DATE(date_as_text, 'MON DD,YYYY')
WHERE test_id = 2;

UPDATE date_test
SET date_value = TO_DATE(date_as_text, 'MON DD YYYY')
WHERE test_id = 3;

UPDATE date_test
SET date_value = TO_DATE(date_as_text, 'DD/MM/YYYY')
WHERE test_id = 4;

SELECT test_id, date_as_text, date_value
FROM date_test;



