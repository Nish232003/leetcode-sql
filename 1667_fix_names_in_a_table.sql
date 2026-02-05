-- Leetcode #1667 : Fix Names in a Table
-- Leetcode link : https://leetcode.com/problems/fix-names-in-a-table/

--Approach :
-- Convert first character of each name to uppercase
-- Convert remaining characters to lowercase
-- Ensure results are ordered by user_id
-- Added SQL query using UPPER, LOWER, SUBSTRING, and CONCAT

SELECT 
    user_id,
    CONCAT(UPPER(SUBSTRING(name, 1, 1)), LOWER(SUBSTRING(name, 2))) AS name
FROM Users
ORDER BY user_id;
