/*
https://www.boot.dev/lessons/c1a92f02-3ee4-4829-9a85-54504e39691e
Assignment


  Let's get the balance of every user in the transactions
 table, all in a single query! Use a combination of
 the sum aggregation and the GROUP BY clause to return
 a single row for each user with transactions. The row
 for each user should contain the user_id and their
 balance (a sum of the amount s of their successful
 transactions) called balance .                    
*/
SELECT user_id, SUM(amount) AS balance
FROM transactions
WHERE was_successful = 1
GROUP BY user_id;
/*

*/