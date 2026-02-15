--Leetcode #1517 : Find users with valid e-mails
--Leetcode link : https://leetcode.com/problems/find-users-with-valid-e-mails/

--Approach:
-- Filter users whose email matches the required valid pattern.
-- Conditions followed:
  --1. Prefix must start with a letter (A–Z or a–z).
  --2. Prefix may contain letters, digits, underscore (_), period (.), and dash (-).
  --3. Domain must be exactly '@leetcode.com'.
  --4. Matching must be case-sensitive to reject values like 'leetcode.COM'.
-- Used MySQL REGEXP_LIKE with the 'c' flag for case-sensitive pattern matching.

SELECT *
FROM Users
WHERE REGEXP_LIKE(mail, '^[A-Za-z][A-Za-z0-9._-]*@leetcode\\.com$', 'c');
