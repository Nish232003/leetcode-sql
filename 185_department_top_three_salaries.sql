--Implement SQL query for Department Top Three Salaries

-- Use DENSE_RANK() to find top 3 salaries in each department
-- Partition by departmentId and order by salary DESC
-- Join Employee and Department tables for department names
-- Handle duplicate salaries using dense ranking

SELECT 
    d.name AS Department,
    e.name AS Employee,
    e.salary AS Salary
FROM (
    SELECT 
        name,
        salary,
        departmentId,
        DENSE_RANK() OVER (
            PARTITION BY departmentId 
            ORDER BY salary DESC
        ) AS rnk
    FROM Employee
) e
JOIN Department d
    ON e.departmentId = d.id
WHERE e.rnk <= 3;
