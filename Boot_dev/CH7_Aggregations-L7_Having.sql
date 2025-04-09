/*
https://www.boot.dev/lessons/797ec406-f0f9-473c-96f1-8ceef768111f
Assignment

 A new page in the CashPal app allows users to see
 how much money they've spent on a specific kind of
 transaction, and alerts them if that amount is fairly
 large. Let's write a query that returns the total amount
 spent by each user on lunch when that balance is greater
 than 20.

Your query should:

    Return a sender_id (the person spending money) and a balance.
    The balance is the SUM() of all amounts spent successfully.
    Don't return any rows that have a NULL sender_id.
    Group by sender_id.
    The note must contain the word lunch to be a part of the aggregation.
    The aggregated balance must be greater than 20.
    Order the results by the balance in ascending order.

*/
SELECT sender_id, sum(amount) as balance
FROM transactions
WHERE was_successful = 1 
  AND sender_id IS NOT NULL
  AND note LIKE '%lunch%'
GROUP BY sender_id
HAVING balance > 20
ORDER BY balance ASC;
/*

*/