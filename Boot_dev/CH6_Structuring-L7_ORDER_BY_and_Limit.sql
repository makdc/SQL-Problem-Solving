/*
https://www.boot.dev/lessons/0675c938-e6e0-46b6-9451-f4d4aa6e0388
Assignment


  An HR employee got into the Git repository where we
 store all the queries and tried to update one himself.
 Fix the bug in the SQL query.                     
*/
SELECT * FROM transactions
WHERE amount BETWEEN 10 AND 80
ORDER BY amount DESC
LIMIT 4;
/*

*/