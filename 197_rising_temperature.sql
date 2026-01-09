-- LeetCode #197: Rising Temperature
-- Link: https://leetcode.com/problems/rising-temperature/

-- Approach:
-- Self join the Weather table to compare each day's temperature
-- with the previous day's temperature.
-- Use DATEDIFF to ensure consecutive dates (difference of 1 day).

SELECT w1.id
FROM Weather w1
INNER JOIN Weather w2
ON DATEDIFF(w1.recordDate, w2.recordDate) = 1
AND w1.temperature > w2.temperature;
