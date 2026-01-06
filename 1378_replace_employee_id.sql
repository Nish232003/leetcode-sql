-- LeetCode #1378: Replace Employee ID With The Unique Identifier
-- Link: https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/

-- Approach:
-- Use LEFT JOIN to keep all employees from Employees table.
-- Fetch unique_id from EmployeeUNI table.
-- If no match is present, MySQL returns NULL automatically.

SELECT EmployeeUNI.unique_id,
       Employees.name
FROM Employees
LEFT JOIN EmployeeUNI
ON Employees.id = EmployeeUNI.id;
