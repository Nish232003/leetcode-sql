-- LeetCode #1934: Confirmation Rate
-- Link: https://leetcode.com/problems/confirmation-rate/

-- Approach:
-- LEFT JOIN Signups with Confirmations to include all users.
-- Count confirmed actions and divide by total confirmation requests.
-- Use IFNULL to handle users with no confirmation records.
-- Round confirmation rate to 2 decimal places.

SELECT
    s.user_id,
    ROUND(
        IFNULL(
            SUM(c.action = 'confirmed') / COUNT(c.user_id),
            0
        ),
        2
    ) AS confirmation_rate
FROM Signups s
LEFT JOIN Confirmations c
ON s.user_id = c.user_id
GROUP BY s.user_id;
