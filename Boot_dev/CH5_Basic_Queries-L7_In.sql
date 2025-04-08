/*
https://www.boot.dev/lessons/38d51bde-5fdc-4ccd-b6ab-988d7092dfd5
Assignment


  We want to know which of our users are from North
 America. Write a SELECT statement that returns the
 name age and country_code fields for every user within
 the US , CA or MX .                               
*/
SELECT u.name, u.age, u.country_code
    FROM users u
    WHERE country_code 
    IN ('US', 'CA', 'MX');
/*

*/