-- LeetCode 1789: Primary Department for Each Employee
-- Link: https://leetcode.com/problems/primary-department-for-each-employee/

-- Approach:
-- 1. Employees with multiple departments will have exactly one row
--    marked as primary_flag = 'Y'. Select that row.
-- 2. Employees with only one department will have primary_flag = 'N',
--    but since it is the only department, select it.
-- 3. Use UNION to combine both cases and avoid duplicates.

SELECT employee_id, department_id
FROM Employee
WHERE primary_flag = 'Y'

UNION

SELECT employee_id, department_id
FROM Employee
GROUP BY employee_id
HAVING COUNT(*) = 1;
