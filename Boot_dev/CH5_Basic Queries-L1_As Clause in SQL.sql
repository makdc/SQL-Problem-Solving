/*
https://www.boot.dev/lessons/67f3cbfb-c7bc-4c98-be67-5e40c31b95ca
Assignment


 A user has asked us to find all the transactions on
 their account from their grandma. We thought it would
 be fun to rename the note field to birthday_message
 because we noticed all the transactions from grandma
 are birthday messages.Return the amount and the note
 fields from the transactions table where the sender_id
 is 10 (grandma). The note field should be (renamed
 to birthday_message).                             
*/


SELECT amount, note AS birthday_message
FROM transactions
WHERE sender_id=10;

/*
*/