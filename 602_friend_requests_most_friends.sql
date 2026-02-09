--Leetcode : #602 : Friend request most friends
--Leetcode link : https://leetcode.com/problems/friend-requests-ii-who-has-the-most-friends/

--Approach:
-- Each accepted request represents a friendship between requester_id and accepter_id.
-- Treat friendships as bidirectional:
  -- requester_id contributes 1 friend
  -- accepter_id contributes 1 friend
-- Use UNION ALL to combine both columns into a single list of user ids.
-- Group by id and count total occurrences to compute number of friends.
-- Sort in descending order of friend count and return the top record.

Query:
SELECT id, COUNT(*) AS num
FROM (
    SELECT requester_id AS id FROM RequestAccepted
    UNION ALL
    SELECT accepter_id AS id FROM RequestAccepted
) AS friends_list
GROUP BY id
ORDER BY num DESC
LIMIT 1;
