SELECT empname, salary, position
FROM employee
WHERE empname LIKE '%N%' AND position = 'clerk'
ORDER BY salary DESC;