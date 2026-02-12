-- LeetCode #585: Investments in 2016
-- Link: https://leetcode.com/problems/investments-in-2016/

-- Approach:
-- 1. Identify policies whose tiv_2015 value appears more than once
-- 2. Ensure the (lat, lon) pair is unique (no duplicate city locations)
-- 3. From those filtered policies, sum tiv_2016 values
-- 4. Round the final result to 2 decimal places

SELECT ROUND(SUM(tiv_2016), 2) AS tiv_2016
FROM Insurance
WHERE tiv_2015 IN (
    SELECT tiv_2015
    FROM Insurance
    GROUP BY tiv_2015
    HAVING COUNT(*) > 1
)
AND (lat, lon) IN (
    SELECT lat, lon
    FROM Insurance
    GROUP BY lat, lon
    HAVING COUNT(*) = 1
);
