/*
www.boot.dev/lessons/a6c520ad-d87c-46da-8875-3fcdd025e589
Assignment


  As it turns out, the front-end frequently finds itself
 in a state where it knows a user's email but not their
 id . Let's add an index to the email field called email_idx
 .                                                 
*/
CREATE INDEX email_idx ON users (email);
/*

*/