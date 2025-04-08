/*
https://www.boot.dev/lessons/605ae4d3-0289-41cf-b8ca-4963f2a4a5da
Assignment


  Our HR team is dealing with a ticket from one of our
 users but they are having trouble pulling up their
 record in the database. They are pretty sure the user's
 name starts with Al . Write a query that returns all
 the fields for records where the user's name starts
 with Al .                                         
*/
SELECT * FROM users u
WHERE u.name LIKE 'Al%';
/*

*/