/*
https://www.boot.dev/lessons/81d1b6fe-ee25-4f70-8935-547ee40fefc4
Challenge


  Using the setup code - write a query that returns
 the recipient's ID along with the transaction amount
 and note. Return this information for the top 5 largest
 successful transactions ordered from highest to lowest.
                                                   
*/
SELECT t.recipient_id, t.amount, t.note
FROM transactions t
WHERE was_successful = 1
ORDER BY t.amount DESC
LIMIT 5;
/*

*/