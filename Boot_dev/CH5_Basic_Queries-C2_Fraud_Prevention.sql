/*
https://www.boot.dev/lessons/817a00b9-5fa5-46ff-9294-32c4325dd6f2
Challenge
Users have reported to the CashPal support team that they've 
been contacted by some suspicious users who claim to work for CashPal
 - you've been asked to write a query to find people impersonating CashPal employees. 
 These suspicious users have been putting cashpal and support in their usernames to impersonate real employees. 
 Fortunately, every CashPal employee has their is_admin field set to true, so we can determine if a user is an employee.

  Write a query that returns the name and username for
 every user that has the words cashpal or support somewhere
 in their username and is not an admin             
*/

SELECT u.name, u.username
FROM users u
WHERE is_admin = 0 
  AND (username LIKE '%cashpal%'
  OR username LIKE '%support%');

/*

*/