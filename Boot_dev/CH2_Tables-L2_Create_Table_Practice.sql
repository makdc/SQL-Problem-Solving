/*
www.boot.dev/lessons/75c0825d-7fc0-4367-b632-54e74a155b78
Assignment


We need a table that tracks the transactions between our CashPal users.

Create the transactions table with the following fields:

    id - Integer
    recipient_id - Integer
    sender_id - Integer
    note - Text
    amount - Integer
   
*/
CREATE TABLE transactions (
  id INTEGER, 
  recipient_id INTEGER, 
  sender_id INTEGER, 
  note TEXT, 
  amount INTEGER);
/*

*/