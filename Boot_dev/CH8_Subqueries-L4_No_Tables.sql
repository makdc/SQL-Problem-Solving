/*
www.boot.dev/lessons/b24394f9-6094-4346-a195-4dc170818c4b
Assignment


  Finance has found that people who have lived longer
 than 40 years need to start thinking about retirement.
 Write a query that returns all columns of all the users
 who are more than 40 years old. Unfortunately, this
 table awkwardly stores age in days in the age_in_days
 field. Use a subquery to convert 40 years -> days and
 filter on that. Assume every year has 365 days.   
*/
SELECT *
FROM users
WHERE age_in_days/365 IN 
  (SELECT age_in_days/365 AS age
  FROM users
  WHERE age > 40);

SELECT * FROM users
WHERE age_in_days > (
  SELECT 365 * 40
);
/*

*/