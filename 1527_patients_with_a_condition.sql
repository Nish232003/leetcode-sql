-- LeetCode #1527: Patients With a Condition
-- Link: https://leetcode.com/problems/patients-with-a-condition/

-- Approach:
-- 1. The 'conditions' column stores multiple condition codes separated by spaces
-- 2. Type I Diabetes codes always start with 'DIAB1'
-- 3. Match records where:
--      a) 'conditions' starts with 'DIAB1'
--      b) OR 'DIAB1' appears after a space within the string
-- 4. Return patient_id, patient_name, and conditions

SELECT patient_id,
       patient_name,
       conditions
FROM Patients
WHERE conditions LIKE 'DIAB1%'
   OR conditions LIKE '% DIAB1%';
