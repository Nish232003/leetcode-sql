-- LeetCode #550: Game Play Analysis IV
-- Link: https://leetcode.com/problems/game-play-analysis-iv/

-- Approach:
-- Find the first login date for each player.
-- Check whether the player logged in again on the next day.
-- Count such players and divide by the total number of players.
-- Round the fraction to 2 decimal places.

SELECT
    ROUND(
        COUNT(DISTINCT player_id) /
        (SELECT COUNT(DISTINCT player_id) FROM Activity),
        2
    ) AS fraction
FROM Activity
WHERE (player_id, DATE_SUB(event_date, INTERVAL 1 DAY)) IN (
    SELECT
        player_id,
        MIN(event_date) AS first_login
    FROM Activity
    GROUP BY player_id
);
