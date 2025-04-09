/*
https://www.boot.dev/lessons/0c20b4eb-9b3d-4490-8c77-60d7254d35b1
Challenge


  Write a query that returns the name and username for
 every user with a password equal to backendDev , welovebootdev
 , or SQLrocks . Order the records so that the names
 are in alphabetical order.                        
*/
SELECT u.name, u.username
FROM users u
WHERE u.password IN ('backendDev', 'welovebootdev', 'SQLrocks')
ORDER BY u.name ASC;
/*

*/