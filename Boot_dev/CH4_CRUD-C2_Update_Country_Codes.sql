/*
www.boot.dev/lessons/df165218-5d96-40fb-bc33-4b7176180a97
Challenge


  Write an SQL statement to update the country_code
 value from 'USA' to 'US' for all user records, ensuring
 that only those records initially marked with 'USA'
 are changed.                                      
*/
UPDATE users
SET country_code = 'US'
WHERE country_code = 'USA';
/*

*/