-- LeetCode #1729: Find Followers Count
-- LeetCode Link: https://leetcode.com/problems/find-followers-count/

-- Approach:
-- Each row in the Followers table represents a follower relationship.
-- Group the records by user_id.
-- Use COUNT(follower_id) to calculate the number of followers for each user.
-- Order the result by user_id in ascending order.

SELECT user_id , COUNT(follower_id) AS followers_count
FROM Followers
GROUP BY user_id
ORDER BY User_id ASC;
