/*
www.boot.dev/lessons/e2640994-2304-443e-a8b5-0e4d96c32933
Assignment


  The architecture team at CashPal has decided on a
 single transactions table. The transactions table stores
 individual transactions, and we can keep track of the
 "current balance" on each transaction record. If we
 want the current balance, we can just look at the most
 recent transaction! Create the transactions table with
 the following fields and constraints: 
    id - INTEGER PRIMARY KEY
    sender_id - INTEGER
    recipient_id - INTEGER
    memo - TEXT - NOT NULL
    amount - INTEGER - NOT NULL
    balance - INTEGER - NOT NULL
           
*/
 CREATE TABLE transactions (
  id INTEGER PRIMARY KEY,
  sender_id INTEGER,
  recipient_id INTEGER,
  memo TEXT NOT NULL,
  amount INTEGER NOT NULL,
  balance INTEGER NOT NULL
);

/*

*/