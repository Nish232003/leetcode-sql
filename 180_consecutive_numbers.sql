-- Leetcode #180 : Consecutive Numbers
-- Leetcode Link : https://leetcode.com/problems/consecutive-numbers/

--Approach :
-- Self join the Logs table three times
-- IDs must be consecutive
-- Numbers must be the same
-- DISTINCT is used to avoid duplicate results


SELECT DISTINCT(l1.num) AS ConsecutiveNums
FROM Logs l1 
JOIN Logs l2
JOIN Logs l3
WHERE l1.id = l2.id -1 AND l2.id = l3.id -1
 AND l1.num = l2.num AND l2.num = l3.num;
