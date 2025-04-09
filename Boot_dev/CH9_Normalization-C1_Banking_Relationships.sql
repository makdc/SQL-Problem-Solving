/*
www.boot.dev/lessons/2d9b58bd-bcc4-4ffa-b045-0303a5c3cd7f
Challenge


  Given what you've learned about normalization and
 many-to-many relationships, do the following: 

 
    
 Create a new table called banks that contains any bank-related
 columns that were incorrectly added to the users table
 and were prefixed with bank_. (Don't worry about altering
 the users table right now.)
    Create a joining table named users_banks with user_id and
 bank_id columns. Add any constraints such that there is never
 a duplicate row with the same user_id and bank_id combination.

                                                                       
*/
CREATE TABLE banks (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  routing_number INTEGER NOT NULL
);

CREATE TABLE users_banks (
  user_id INTEGER,
  bank_id INTEGER,
  UNIQUE(user_id, bank_id)
);

/*
CREATE TABLE users (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  age INTEGER NOT NULL,
  username TEXT UNIQUE NOT NULL,
  password TEXT NOT NULL,
  bank_id INTEGER,
  bank_name TEXT,
  bank_routing_number INTEGER,
  is_admin BOOLEAN
);
*/
/*

*/