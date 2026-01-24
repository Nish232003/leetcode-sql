-- Leetcode #596 : Classes with at least 5 students
--Leetcode link : https://leetcode.com/problems/classes-with-at-least-5-students

--Approach:
-- Use function COUNT
-- Group by class

SELECT class
FROM courses
GROUP BY class
HAVING COUNT(student) >= 5;
