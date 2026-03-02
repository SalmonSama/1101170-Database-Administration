SELECT TOP 5 empnum, (empname + ' ' + position) AS 'employee name'
FROM employee
ORDER BY empnum DESC;