/*
https://www.boot.dev/lessons/f16dde58-e8ba-403c-8645-6adeecf4d1a8
Assignment


  We need to be able to calculate the current balance
 for a given user because we don't (yet) store the running
 balance on each individual transaction record. Write
 a query that returns the SUM aggregation of the amount
 s for all of Bob's successful transactions ( user_id
 is 9 ).                                           
*/
SELECT SUM(t.amount)
FROM transactions t
WHERE t.was_successful = 1 
AND t.user_id = 9;
/*

*/