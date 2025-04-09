/*
https://www.boot.dev/lessons/6fa01ccc-ef24-4213-8a7d-34163743b13f
Challenge


  Return all the data from the users table and a temporary
 column aliased to discount_eligible . The discount_eligible
 column should have a boolean value of true or false
 depending on whether the user matches any discount
 conditions listed above.                          
*/
SELECT *, 
  IIF((u.age > 55 OR u.country_code = 'CA'), TRUE, FALSE) AS discount_eligible
FROM users u
/*

*/