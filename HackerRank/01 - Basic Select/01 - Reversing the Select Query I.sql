-- ========================
--       Information
-- ========================

-- Direct Link: https://www.hackerrank.com/challenges/revising-the-select-query/problem
-- Difficulty: Easy
-- Max Score: 10
-- DBMS: mySQL

-- ========================
--         Solution
-- ========================

SELECT *
FROM CITY
WHERE
    POPULATION > 100000
    AND COUNTRYCODE = 'USA';
