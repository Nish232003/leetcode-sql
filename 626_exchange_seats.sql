-- Leetcode #626 : Exchange Seats
-- Leetcode link : https://leetcode.com/problems/exchange-seats/

-- Approach : 
-- Seat IDs start from 1 and are continuous.
-- Every pair of consecutive seats (1,2), (3,4), … needs to be swapped.
--If the total number of students is odd, the last seat remains unchanged.
-- We compute the new seat id using a CASE expression:
-- If the seat is the last seat and odd, keep it as is.
-- If the seat id is odd, assign id + 1.
-- If the seat id is even, assign id - 1.
-- Finally, sort the result by the new seat id

SELECT 
  CASE 
    WHEN
         id= (SELECT MAX(id) FROM Seat) AND MOD(id,2) = 1
         THEN id
    WHEN
        MOD(id ,2) = 1
        THEN id+1
    ELSE
        id-1
  End AS id, student
FROM seat
ORDER BY id
