/*
www.boot.dev/lessons/45cd087f-9043-4cbf-9369-ca941ab5ceec
Assignment


  Our frontend team is working on a profile page and
 would like to display a user's country name instead
 of just the country's two-letter code . Let's start
 by writing a simple join between the users table and
 countries table. We will expand on this query more
 in the next exercise. 

 
    Write an INNER JOIN between users and countries
    Return all fields from both tables
    Join on the country_code field
                        
*/
SELECT u.*, c.*
FROM users u
INNER JOIN countries c
  ON u.country_code = c.country_code;
/*

*/