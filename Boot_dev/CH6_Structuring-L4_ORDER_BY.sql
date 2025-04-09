/*
https://www.boot.dev/lessons/e04305da-5aed-443b-aa8b-0834aaae5fbe
Assignment


  Write a query that lists all the records in the transactions
 table where: • amount is BETWEEN 10 and 80 dollars.
 • amount is BETWEEN 10 and 80 dollars. • The results
 are sorted by amount in descending order. • The results
 are sorted by amount in descending order. • amount
 is BETWEEN 10 and 80 dollars. • amount is BETWEEN 10
 and 80 dollars. • The results are sorted by amount
 in descending order. • The results are sorted by amount
 in descending order.                              
*/
SELECT * FROM transactions
  WHERE amount BETWEEN 10 AND 80  
  ORDER BY amount DESC;
/*

*/