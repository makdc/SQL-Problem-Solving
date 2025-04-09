/*
https://www.boot.dev/lessons/206bc3c4-256a-4f53-b1ad-6ff96ae523db
Assignment


  Use a max aggregation to return the name and age of
 our oldest CashPal user who is also an admin. Alias
 the returned age column to just be named "age".   
*/
SELECT name, max(age) AS age
FROM users
WHERE is_admin = 1;
/*

*/