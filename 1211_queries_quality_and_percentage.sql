-- LeetCode #1211: Queries Quality and Percentage
-- Link: https://leetcode.com/problems/queries-quality-and-percentage/

-- Approach:
-- Group data by query_name.
-- Quality is defined as the average of (rating / position).
-- Poor query percentage is the percentage of queries with rating < 3.
-- Round both results to 2 decimal places.

SELECT
    query_name,
    ROUND(AVG(rating / position), 2) AS quality,
    ROUND(AVG(CASE WHEN rating < 3 THEN 100.0 ELSE 0 END), 2) AS poor_query_percentage
FROM Queries
GROUP BY query_name;
