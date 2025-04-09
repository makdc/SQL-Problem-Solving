/*
www.boot.dev/lessons/ae10aa46-aa96-4da9-830a-cd31a09f1c98
Assignment


  Our front-end team is finalizing the profile page
 for CashPal . We need to write a query that returns
 all the user data they need for an individual user's
 profile. The query needs to return the following fields:

    The user's id
    The user's name
    The user's age
    The user's username
    The user's country name, renamed to country_name
    The sum of the successful transactions from the user, renamed to balance

Return only a single user record - specifically the one with id=6.                               
*/
SELECT u.id, 
  u.name, 
  u.age, 
  u.username, 
  c.name as country_name, 
  sum(t.amount) as balance
FROM users u
LEFT JOIN countries c
ON u.country_code = c.country_code
INNER JOIN transactions t
ON u.id=t.user_id
WHERE u.id=6 AND t.was_successful=1
GROUP BY u.id;
/*

*/