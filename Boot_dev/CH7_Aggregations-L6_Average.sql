/*
https://www.boot.dev/lessons/b9b85a32-2764-4adf-88af-f0a323141035
Assignment


  Our marketing team is trying to determine the best
 marketing channels to advertise through but they need
 more information about our current users. They wish
 to know the average age of users in the United States.
 Return a single value representing the average age
 of all users where the country_code is US .       
*/
SELECT avg(age)
FROM users
WHERE country_code = 'US';
/*

*/