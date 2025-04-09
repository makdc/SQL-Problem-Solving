/*
www.boot.dev/lessons/8df8034e-3032-4f31-b0e7-58f55c5bce51
Assignment


  One of CashPal's customer service representatives
 needs us to pull all the transactions for a specific
 user. Trouble is, they only know the user's name ,
 not their id . Use a subquery to return all transaction
 details for the user with the name "David". 
                                                   
*/
SELECT *
FROM transactions
WHERE user_id IN (
    SELECT id
    FROM users
    WHERE name LIKE 'David');
/*

*/