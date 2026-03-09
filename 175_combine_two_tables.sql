-- Leetcode question : 175 Combine two tables
-- Leetcode link: https://leetcode.com/problems/combine-two-tables/

--Approach:
-- Use left join to combine two tables as per the requirement.

SELECT firstName , lastName , city , state
FROM Person
LEFT JOIN Address
ON Person.personID = Address.personID;
