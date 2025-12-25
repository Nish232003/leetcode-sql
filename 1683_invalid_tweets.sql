-- LeetCode #1683: Invalid Tweets
-- Link: https://leetcode.com/problems/invalid-tweets/

-- Approach:
-- A tweet is considered invalid if the number of characters in its content
-- is strictly greater than 15.
-- Use LENGTH() to count characters and filter such tweets.

SELECT tweet_id
FROM Tweets WHERE LENGTH(content) > 15;
