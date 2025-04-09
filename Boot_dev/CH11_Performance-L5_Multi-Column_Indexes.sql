/*
www.boot.dev/lessons/eccb70e0-543c-4019-a922-d7a76ddbe865
Assignment


  We frequently need to lookup all the transactions
 between 2 specific users! There's a page on the website
 that allows a user to lookup all the payments they've
 made to a friend by that friend's name. Add an index
 on the user_id and recipient_id columns called user_id_recipient_id_idx
 to speed up our app! Make sure the user_id is the first
 column in the index so that we can also use this index
 to speed up our queries that only care about the user_id
 .                                                 
*/
CREATE INDEX user_id_recipient_id_idx
ON transactions (user_id, recipient_id);
/*

*/