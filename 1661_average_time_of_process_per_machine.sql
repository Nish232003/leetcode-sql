-- LeetCode #1661: Average Time of Process per Machine
-- Link: https://leetcode.com/problems/average-time-of-process-per-machine/

-- Approach:
-- Self join Activity table on machine_id and process_id.
-- Match 'start' and 'end' activities for each process.
-- Compute processing time as end timestamp minus start timestamp.
-- Take average processing time per machine and round to 3 decimals.
SELECT a1.machine_id, ROUND(AVG(a2.timestamp - a1.timestamp) , 3) AS processing_time
FROM activity a1
JOIN activity a2
ON a1.machine_id = a2.machine_id
AND a1.process_id = a2.process_id
AND a1.activity_type = 'start'
AND a2.activity_type = 'end'
GROUP BY a1.machine_id;
