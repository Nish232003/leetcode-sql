-- LeetCode #1280: Students and Examinations
-- Link: https://leetcode.com/problems/students-and-examinations/

-- Approach:
-- Use CROSS JOIN to generate all student–subject combinations.
-- LEFT JOIN with Examinations to count attended exams.
-- COUNT on subject_name counts number of exam attempts.
-- Group by student and subject.
-- Order result by student_id and subject_name as required.

SELECT
    s.student_id,
    s.student_name,
    sub.subject_name,
    COUNT(e.subject_name) AS attended_exams
FROM Students s
CROSS JOIN Subjects sub
LEFT JOIN Examinations e
ON s.student_id = e.student_id
AND sub.subject_name = e.subject_name
GROUP BY
    s.student_id,
    s.student_name,
    sub.subject_name
ORDER BY
    s.student_id,
    sub.subject_name;
