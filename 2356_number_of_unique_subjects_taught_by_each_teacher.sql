-- LeetCode #2356: Number of Unique Subjects Taught by Each Teacher
-- Link: https://leetcode.com/problems/number-of-unique-subjects-taught-by-each-teacher/

-- Approach:
-- Group records by teacher_id.
-- Count distinct subject_id for each teacher.
-- Department does not affect uniqueness of subjects.

SELECT
    teacher_id,
    COUNT(DISTINCT subject_id) AS cnt
FROM Teacher
GROUP BY teacher_id;
