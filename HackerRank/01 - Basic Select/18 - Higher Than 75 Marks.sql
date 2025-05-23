-- ========================
--       Information
-- ========================

-- Direct Link: https://www.hackerrank.com/challenges/more-than-75-marks/problem
-- Difficulty: Easy
-- Max Score: 15
-- DBMS: mySQL

-- ========================
--         Solution
-- ========================

SELECT NAME
FROM STUDENTS
WHERE MARKS > 75
ORDER BY SUBSTR(NAME, -3), ID ASC;

-- ========================
--       Explanation
-- ========================

-- SUBSTR() used to extract a substring from the text in a column (start at position 'name', extract -3 characters)
