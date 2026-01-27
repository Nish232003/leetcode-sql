-- LeetCode #610: Triangle Judgement
-- Link: https://leetcode.com/problems/triangle-judgement/

-- Approach:
-- 1. Each row contains three line segments x, y, and z
-- 2. A valid triangle must satisfy the triangle inequality theorem
-- 3. The sum of any two sides must be greater than the third side
-- 4. If all three conditions are satisfied, mark it as 'Yes', else 'No'

SELECT
    *,
    IF(
        x + y > z
        AND x + z > y
        AND y + z > x,
        'Yes',
        'No'
    ) AS triangle
FROM Triangle;
