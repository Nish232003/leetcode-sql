--Leetcode #1341 : Movie Rating
--Leetcode link: https://leetcode.com/problems/movie-rating/

-- Approach
-- We will create two subqueries and join them by UNION ALL
-- In 1st subquery we will INNER JOIN MovieRating and Users then use COUNT(rating) and limit it to 1
-- Here we GROUP BY user_id and ORDER BY COUNT(rating) DESC,
-- if multiple users have same number of ratings, we break the tie using name in ascending order

-- In 2nd subquery, we will INNER JOIN Movies and MovieRating then
-- filter records for February 2020 using MONTH(created_at) and YEAR(created_at)
-- After that we GROUP BY title and ORDER BY AVG(rating) DESC,
-- if multiple movies have same average rating, we break the tie using title in ascending order
-- Finally we limit the result to 1 and combine both results using UNION ALL


 (SELECT name as resultS
 FROM Users 
 INNER JOIN MovieRating using(user_id)
 GROUP BY user_id
 ORDER BY COUNT(rating) DESC , name
 LIMIT 1)

 UNION ALL

 (SELECT title AS results
FROM Movies
INNER JOIN MovieRating USING(movie_id)
WHERE MONTH(created_at) = '02' AND YEAR(created_at) = '2020'
GROUP BY title
ORDER BY AVG(rating) DESC , title
LIMIT 1
 )
