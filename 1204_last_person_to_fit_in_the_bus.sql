-- Leetcode #1204 : Last person to fit in the bus
-- Leetcode Link : https://leetcode.com/problems/last-person-to-fit-in-the-bus/

-- Approach :
--Self join the Queue table to calculate cumulative weight till each turn.
--Use q1.turn >= q2.turn to include all previous and current passengers.
--Group by q1.turn to get total weight up to that person.
--Filter rows where cumulative weight ≤ 1000.
--Order by cumulative weight in descending order and select the top record to get the last person who fits.

SELECT q1.person_name
FROM Queue  q1 INNER JOIN Queue q2
ON q1.turn >= q2.turn
GROUP BY q1.turn
HAVING SUM(q2.weight) <= 1000
ORDER BY SUM(q2.weight) DESC
LIMIT 1
