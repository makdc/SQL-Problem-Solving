/*
www.boot.dev/lessons/9b9400b5-2441-4080-9d18-871b4b01a534
Challenge


  Using a subquery, write an SQL statement that retrieves
 full user records for every user who matches the sender_id
 in a transaction with invoice or tax mentioned anywhere
 in the transaction note , and who is not an admin.
                                                   
*/
SELECT *
FROM users
WHERE is_admin=0 AND id IN (
  SELECT sender_id
  FROM transactions
  WHERE note LIKE '%invoice%' OR note LIKE '%tax%'
  )
/*

*/