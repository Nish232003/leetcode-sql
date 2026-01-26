-- LeetCode 1731: The Number of Employees Which Report to Each Employee
-- Link: https://leetcode.com/problems/the-number-of-employees-which-report-to-each-employee/
--
-- Approach:
-- Use a self join on the Employees table.
-- Treat one instance as employees (e) and the other as managers (m).
-- Match employees to managers using e.reports_to = m.employee_id.
-- Count the number of direct reports for each manager.
-- Calculate the average age of direct reports and round it to the nearest integer.
-- Group results by manager and order by employee_id.

SELECT
    m.employee_id,
    m.name,
    COUNT(e.employee_id) AS reports_count,
    ROUND(AVG(e.age)) AS average_age
FROM Employees e
JOIN Employees m
    ON e.reports_to = m.employee_id
GROUP BY m.employee_id, m.name
ORDER BY m.employee_id;
