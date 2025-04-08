-- ========================
--       Information
-- ========================

-- Direct Link: https://www.hackerrank.com/challenges/weather-observation-station-11/problem
-- Difficulty: Easy
-- Max Score: 15
-- DBMS: mySQL

-- ========================
--         Solution
-- ========================

SELECT DISTINCT(CITY)
FROM STATION
WHERE LEFT(CITY, 1) NOT IN ('A','E','I','O','U') 
    OR RIGHT(CITY, 1) NOT IN ('A','E','I','O','U');
-- ========================
--       Explanation
-- ========================

-- DISTINCT() used to avoid duplication
-- LEFT() and RIGHT() used to obtain the first and last digits of string
