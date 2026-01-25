-- LeetCode #619: Biggest Single Number
-- Link: https://leetcode.com/problems/biggest-single-number/

-- Approach:
-- 1. Group numbers using GROUP BY to count occurrences
-- 2. Filter numbers that appear exactly once using HAVING COUNT(num) = 1
-- 3. Use MAX() on the filtered result to get the largest single number
-- 4. MAX() returns NULL automatically if no single number exists

SELECT MAX(num) AS num
FROM MyNumbers
WHERE num IN (
    SELECT num
    FROM MyNumbers
    GROUP BY num
    HAVING COUNT(num) = 1
);
