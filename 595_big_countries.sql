-- LeetCode #595: Big Countries
-- Link: https://leetcode.com/problems/big-countries/

-- Approach:
-- Select countries that have either a large area or a large population

SELECT name, population, area
FROM World
WHERE area >= 3000000
   OR population >= 25000000;
