-- LeetCode #1075: Project Employees I
-- Link: https://leetcode.com/problems/project-employees-i/

-- Approach:
-- Join Project table with Employee table using employee_id.
-- Calculate average experience years for each project.
-- Round the result to 2 decimal places.

SELECT
    p.project_id,
    ROUND(AVG(e.experience_years), 2) AS average_years
FROM Project p
LEFT JOIN Employee e
ON p.employee_id = e.employee_id
GROUP BY p.project_id;
