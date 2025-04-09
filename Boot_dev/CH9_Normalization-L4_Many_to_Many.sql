/*
www.boot.dev/lessons/181bb282-79a7-40b1-90ac-0ae36a12caa6
Assignment


  We have another issue with our current user<->country
 relationship! In the current schema, a user can have
 many countries associated with it, but there are duplicate
 records! If two users are associated with the United
 States, we're creating two countries records. It would
 be better if each country only had a single record.
 That way, when a country changes its metadata (for
 example, it decides to rename itself) we only have
 to update one record. Use a joining table to de-deduplicate
 country data. 
 
    Remove the user_id field from the countries table
    Create a new table called users_countries. It should have two fields:
        country_id
        user_id
    Add a "unique together" constraint on those id fields
                                        
*/
CREATE TABLE users (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  age INTEGER NOT NULL,
  username TEXT UNIQUE NOT NULL,
  password TEXT NOT NULL,
  is_admin BOOLEAN
);

CREATE TABLE countries (
  id INTEGER PRIMARY KEY,
  country_code TEXT,
  name TEXT --,
--  user_id INTEGER,
--  FOREIGN KEY (user_id)
--  REFERENCES users (id)
);
CREATE TABLE users_countries (
  country_id INTEGER,
  user_id INTEGER,
  UNIQUE(country_id, user_id)
);
/*

*/