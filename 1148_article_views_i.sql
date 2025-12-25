-- LeetCode #1148: Article Views I
-- Link: https://leetcode.com/problems/article-views-i/

-- Approach:
-- Select authors who have viewed at least one of their own articles.
-- This happens when author_id is equal to viewer_id.
-- Use DISTINCT to avoid duplicate authors and sort the result.

SELECT DISTINCT author_id AS id
FROM Views
WHERE author_id = viewer_id
ORDER BY id;
