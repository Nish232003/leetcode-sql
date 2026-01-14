-- LeetCode #620: Not Boring Movies
-- Link: https://leetcode.com/problems/not-boring-movies/

-- Approach:
-- Filter movies with odd-numbered id.
-- Exclude movies with description equal to 'boring'.
-- Sort results by rating in descending order.

SELECT id,
       movie,
       description,
       rating
FROM Cinema
WHERE id % 2 = 1
  AND description != 'boring'
ORDER BY rating DESC;
