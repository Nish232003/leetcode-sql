-- LeetCode #577: Employee Bonus
-- Link: https://leetcode.com/problems/employee-bonus/

-- Approach:
-- LEFT JOIN Employee with Bonus on empId.
-- Filter employees whose bonus is less than 1000
-- or who did not receive any bonus (NULL).

SELECT e.name,
       b.bonus
FROM Employee e
LEFT JOIN Bonus b
ON e.empId = b.empId
WHERE b.bonus < 1000
   OR b.bonus IS NULL;
