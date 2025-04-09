/*
www.boot.dev/lessons/f75c0bba-3053-496a-9497-6d46294ce3a8
Assignment


  Add additional columns to the transactions table.
 We want to know whether or not the transaction was
 successfully completed between two users. We also want
 our database to track the type of transaction. Our
 transactions table looks like this at the moment: 
 
 
 Complete the following up migration:

    Add the BOOLEAN was_successful column to the transactions table.
    Add the TEXT transaction_type column to the transactions table.
                  
*/
ALTER TABLE transactions
ADD COLUMN was_successful BOOLEAN;
ALTER TABLE transactions
ADD COLUMN transaction_type TEXT;
/*

*/