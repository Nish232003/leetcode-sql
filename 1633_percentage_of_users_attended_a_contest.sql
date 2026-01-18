-- LeetCode #1633: Percentage of Users Attended a Contest
-- Link: https://leetcode.com/problems/percentage-of-users-attended-a-contest/

-- Approach:
-- Count distinct users registered in each contest.
-- Divide by total number of users to get percentage.
-- Multiply by 100 and round to 2 decimal places.
-- Order by percentage descending, then contest_id ascending.

SELECT
    r.contest_id,
    ROUND(
        COUNT(DISTINCT r.user_id) * 100.0 / (SELECT COUNT(*) FROM Users),
        2
    ) AS percentage
FROM Register r
GROUP BY r.contest_id
ORDER BY percentage DESC, r.contest_id ASC;
