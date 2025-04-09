/*
www.boot.dev/lessons/7b1b61ac-3a41-4b21-ba63-6a5ece8bdd8a
Challenge


  Write an SQL statement that returns two columns, the
 country_code and the average age of users for records
 with that country_code . The marketing team has asked
 that we round the average to the nearest whole number
 and rename the column that contains the average age
 to average_age .                                  
*/
SELECT country_code, round(avg(age)) AS average_age
FROM users
GROUP BY country_code;
/*

*/