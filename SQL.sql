
SELECT (e.firstName || ' ' || e.lastName) as Name, 
e.chargeRate as RATE,
eT.hours as HOURS,
(eT.hours * e.chargeRate) AS TOTAL 
FROM employeeTask_iso ET
INNER JOIN employee_iso e
ON et.employeeID = e.employeeID
WHERE et.taskID = 1;


SELECT sum(grandTotal.hours) as hours, sum(grandTotal.total) as grandtotal
FROM(
    SELECT 
    (e.firstName || ' ' || e.lastName) as name,
    e.chargeRate as rate,
    et.hours as hours,
    (et.hours * e.chargeRate) as total
    FROM employeeTask_iso ET
    INNER JOIN employee_iso e
    ON et.employeeID = e.employeeID) grandTotal;
    
SELECT COUNT(employeeID), lastName
FROM employee_iso
GROUP BY lastName
HAVING COUNT(employeeID) >= 1
ORDER BY lastName;

SELECT *
FROM employee_iso
WHERE firstName like '%o%';


SELECT firstName, UPPER(lastName)
FROM employee_iso;

SELECT firstName, LOWER(lastName),
DECODE(employeeID, 10000, 'Cornel',
                   10010, 'Salut',
                   10020, 'Viorel',
                   10030, 'George',
                   'Stop') result
FROM employee_iso;

SELECT firstName, lastName, NVL(middleName, 0)
FROM employee_iso;


SELECT NULLIF(t.taskID, p.projectID)
FROM task_iso t, project_iso p;

SELECT p.projectID, p.projDescription, t.taskID, t.taskDescription 
FROM task_iso t
FULL JOIN project_iso p
ON t.projectID = p.projectID
WHERE t.taskID <> 1;

SELECT AVG(chargeRate)
FROM employee_iso
WHERE chargeRate > 30;


SELECT SUM(hours)
FROM employeeTask_iso
WHERE hours > 10;

SELECT p.projectID, p.projDescription, t.taskID, t.taskDescription 
FROM task_iso t
RIGHT JOIN project_iso p
ON t.projectID = p.projectID
WHERE t.taskID <> 2;