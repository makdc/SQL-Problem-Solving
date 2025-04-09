/*
www.boot.dev/lessons/a17b9c04-3bf1-445e-a440-10115eb66221
Assignment


  We need to make some changes to the people table!
 At the moment, we have these six columns (shown as
 rows so we can display datatypes): CID NAME TYPE NOTNULL
 DFLT VALUE PK 0 id INTEGER 0 0 1 tag TEXT 0 0 2 name
 TEXT 0 0 3 age INTEGER 0 0 4 balance INTEGER 0 0 5
 is_admin BOOLEAN 0 0 CID NAME TYPE NOTNULL DFLT VALUE
 PK 0 id INTEGER 0 0 1 tag TEXT 0 0 2 name TEXT 0 0
 3 age INTEGER 0 0 4 balance INTEGER 0 0 5 is_admin
 BOOLEAN 0 0 1. Rename the table to users 1. Rename
 the table to users 2. Rename the tag column to username.
 2. Rename the tag column to username . 3. Add the password
 (TEXT) column. 3. Add the password (TEXT) column. 1.
 Rename the table to users 1. Rename the table to users
 2. Rename the tag column to username. 2. Rename the
 tag column to username . 3. Add the password (TEXT)
 column. 3. Add the password (TEXT) column.        
*/
ALTER TABLE people
RENAME TO users;
ALTER TABLE users
RENAME COLUMN tag TO username;
ALTER TABLE users
ADD COLUMN password TEXT;
/*

*/