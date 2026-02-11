--LeetCode 176: Second Highest Salary
--Link: https://leetcode.com/problems/second-highest-salary/

--Approach:
--The goal is to find the second highest DISTINCT salary from the Employee table.

-- Steps:
--1. Select distinct salary values to avoid duplicates.
--2. Sort the salaries in descending order.
--3. Skip the highest salary using OFFSET.
--4. Pick the next salary using LIMIT 1.
--5. If a second highest salary does not exist, return NULL.

-- This ensures correct handling when:
-- Multiple employees have the same salary
-- Only one salary exists in the table


SELECT (
    SELECT DISTINCT salary
    FROM Employee
    ORDER BY salary DESC
    LIMIT 1 OFFSET 1
) AS SecondHighestSalary;

