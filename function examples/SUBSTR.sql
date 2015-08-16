/* SUBSTR Examples */


/* 1 - Example with Both Parameters */

SELECT 'Complete IT Professional',
SUBSTR('Complete IT Professional', 1, 10) AS SUB
FROM DUAL;

/* 2 - Example with Only Start Position */

SELECT 'Complete IT Professional',
SUBSTR('Complete IT Professional', 5) AS SUB
FROM DUAL;


/* 3 - Example in Reverse */

SELECT 'Complete IT Professional',
SUBSTR('Complete IT Professional', -1, 5) AS SUB
FROM DUAL;


/* 4 - Example in Reverse */

SELECT 'Complete IT Professional',
SUBSTR('Complete IT Professional', -5, 5) AS SUB
FROM DUAL;

/* 5 - Example of SUBSTR with INSTR Combined */

SELECT 'Complete IT Professional',
SUBSTR('Complete IT Professional', 
  INSTR('Complete IT Professional', ' ', 1, 1)) AS SUB
FROM DUAL;


/* 6 - Example of SUBSTR with INSTR Combined */

SELECT 'Complete IT Professional',
SUBSTR('Complete IT Professional', 1, 
  INSTR('Complete IT Professional', ' ', 1, 1)) AS SUB
FROM DUAL;


/* 7 - Example of SUBSTR with INSTR Combined */

SELECT 'Complete IT Professional',
SUBSTR('Complete IT Professional', 
  INSTR('Complete IT Professional', ' ', 1, 1)+1,
  INSTR('Complete IT Professional', ' ', 1, 2)-INSTR('Complete IT Professional', ' ', 1, 1)-1) AS SUB
FROM DUAL;

/* 8 - Example to remove last character */

SELECT 'Complete IT Professional',
SUBSTR('Complete IT Professional', 0, 
  LENGTH('Complete IT Professional') - 1) AS SUB
FROM DUAL;


/* 9 - Example to remove last 5 characters */

SELECT 'Complete IT Professional',
SUBSTR('Complete IT Professional', 0, 
  LENGTH('Complete IT Professional') - 5) AS SUB
FROM DUAL;
