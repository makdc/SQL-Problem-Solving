/*
https://www.boot.dev/lessons/3cc0f88d-0447-42e0-a717-e6954ef2285c
Assignment


  A lot of our users have been using CashPal to pay
 other users for lunch. Let's take a look at a sample
 of that data. Write a query that returns all rows and
 fields from the transactions table: • Any record where
 the note field has the word lunch in it. • Any record
 where the note field has the word lunch in it. • The
 query should return at most 5 records. • The query
 should return at most 5 records. • Any record where
 the note field has the word lunch in it. • Any record
 where the note field has the word lunch in it. • The
 query should return at most 5 records. • The query
 should return at most 5 records.                  
*/
SELECT * FROM transactions
    WHERE note LIKE '%lunch%'
    LIMIT 5;
/*

*/