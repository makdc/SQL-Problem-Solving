/*
www.boot.dev/lessons/e508bb9b-8605-4f5d-af6f-37f9ba153ab1
Challenge



 Craft an SQL statement that identifies the top 2 recipients
 based on the number of successful transactions received.
 This statement should return two columns: recipient_id
 and transactions_received, where transactions_received
 is the count of successful transactions for each recipient.

The finance team has requested the following specifics:

    Only include successful transactions with a recipient.
    Group the data by recipient_id.
    Count the number of transactions received by each recipient and label this column as transactions_received.
    Sort the results so that recipients with the most transactions received are at the top.
    Limit the results to the top 2 recipients.
                            
    
*/
SELECT recipient_id, count(*) AS transactions_received
FROM transactions
WHERE was_successful = 1 
  AND recipient_id IS NOT NULL
GROUP BY recipient_id
ORDER BY transactions_received desc
LIMIT 2;
/*

*/