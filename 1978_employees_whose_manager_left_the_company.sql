-- LeetCode #1978: Employees Whose Manager Left the Company
-- LeetCode Link: https://leetcode.com/problems/employees-whose-manager-left-the-company/

-- Approach:
-- The goal is to find employees whose salary is strictly less than 30000
-- and whose manager is no longer present in the Employees table.
--
-- Use a LEFT JOIN on the Employees table:
--   - Treat the main table as Employee
--   - Join it with the same table as Manager using manager_id
--
-- If a manager has left the company, their record will be missing,
-- which results in NULL values on the Manager side of the join.
--
-- Filter conditions:
--   1) Employee.salary < 30000
--   2) Employee.manager_id IS NOT NULL (employee originally had a manager)
--   3) Manager.employee_id IS NULL (manager no longer exists)
--
-- Finally, order the result by employee_id.

SELECT
    Employee.employee_id
FROM Employees AS Employee
LEFT JOIN Employees AS Manager
    ON Employee.manager_id = Manager.employee_id
WHERE
    Employee.salary < 30000
    AND Employee.manager_id IS NOT NULL
    AND Manager.employee_id IS NULL
ORDER BY Employee.employee_id;
