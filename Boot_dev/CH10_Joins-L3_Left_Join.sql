/*
www.boot.dev/lessons/1386caad-9db7-4a59-91c7-2dd5fd6cb204
Assignment


  The CashPal team needs a report on all the transactions
 a user has made. Join the users and transactions tables
 on users.id and transactions.user_id . Your query should
 return 3 fields: 

 
    A user's name as name
    The sum of all of their transaction amounts as sum
    The count of all of their transactions as count

    Be sure to group the data by the user's id.
    Be sure to order the data by the sum field in descending order.
    Be sure to still return user records of users who have no transactions.
   
*/
SELECT u.name as name, sum(t.amount) as sum, count(t.id) as count
FROM users u
LEFT JOIN transactions t
ON t.user_id = u.id
GROUP BY u.id
ORDER BY sum DESC;
/*

*/