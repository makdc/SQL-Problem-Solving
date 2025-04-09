/*
www.boot.dev/lessons/dd726557-ec7d-4b0b-873d-9ec85feedaa7
Assignment


  It turns out that when we originally designed the
 CashPal database schema we assumed that users would
 only have a single country they lived in. With digital
 nomads becoming a thing, it turns out many users have
 dual citizenship. Instead of a single users table where
 each user has a single country_code , do the following:
 
    Remove the country_code field from the users table
    Create a new table called countries with 4 fields:
        id: an integer primary key
        country_code: a TEXT
        name: a TEXT
        user_id: an integer foreign key to the users table's id field
                 
*/
CREATE TABLE users (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  age INTEGER NOT NULL,
--  country_code TEXT NOT NULL,
  username TEXT UNIQUE NOT NULL,
  password TEXT NOT NULL,
  is_admin BOOLEAN
);

CREATE TABLE countries (
  id INTEGER PRIMARY KEY,
  country_code TEXT NOT NULL,
  name TEXT NOT NULL,
  user_id INTEGER,
  CONSTRAINT fk_users
  FOREIGN KEY (user_id)
  REFERENCES users(id)
);
/*

*/