/*
www.boot.dev/lessons/70fb75fa-9749-4de1-8c46-6fc0f6dde1c4
Challenge


  Write an SQL query that returns the count of every
 user record that has their country_code equal to US
 . Remember, we want to know the number of total records
 so we can use the wildcard (*) in our COUNT(*) . While
 you could also use the id in your COUNT(id) , for this
 challenge stick with the (*) wildcard.            
*/
SELECT count(*)
FROM users
WHERE country_code LIKE 'US'
/*

*/