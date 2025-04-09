/*
https://www.boot.dev/lessons/a235b0d4-0e66-4b5b-867a-3809e43a09f6
Assignment


  The front-end team is building a dashboard page in
 CashPal . We need to be able to provide them the number
 of successful transactions for a given user. Return
 the number of transactions where the user_id is 6 ,
 and was_successful is true . (Remember to use the *
 wildcard unless otherwise specified to pass the lesson.)
                                                   
*/
SELECT COUNT(*)
FROM transactions t
WHERE user_id = 6 AND was_successful = 1;
/*

*/