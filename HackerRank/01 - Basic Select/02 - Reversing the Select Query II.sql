-- ========================
--       Information
-- ========================

-- Direct Link: https://www.hackerrank.com/challenges/revising-the-select-query-2/problem
-- Difficulty: Easy
-- Max Score: 10
-- DBMS: mySQL

-- ========================
--         Solution
-- ========================

SELECT NAME
FROM CITY
WHERE
    POPULATION > 120000
    AND COUNTRYCODE = 'USA';
