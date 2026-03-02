CREATE VIEW EMPCHECK AS
SELECT empnum, empname, position, depno
FROM employee
WITH CHECK OPTION;