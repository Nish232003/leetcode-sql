-- LeetCode #196: Delete Duplicate Emails
-- Link: https://leetcode.com/problems/delete-duplicate-emails/

-- Approach:
-- 1. Use a self join on the Person table
-- 2. Match rows having the same email
-- 3. Compare ids and delete the row with the larger id
-- 4. This keeps only the smallest id for each unique email

DELETE p1
FROM Person p1
JOIN Person p2
ON p1.email = p2.email
AND p1.id > p2.id;
