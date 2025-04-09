/*
www.boot.dev/lessons/23466016-c068-443f-abb8-6a1859455c89
Assignment


  Another developer on our team has created a joining
 table for the companies <-> users many-to-many relationship.
 Unfortunately, they did it a bit... weird. They included
 meta information about companies on the joining table!
 A good joining table simply has the ids of the entities
 in the relationship. It manages the relationship and
 nothing else. Any information about the entities themselves
 belongs on their respective tables. Move the column
 that's out of place to its proper table. Be sure to
 add it as the last column to the table you add it to.
                                                   
*/
CREATE TABLE users (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  age INTEGER NOT NULL
);

CREATE TABLE companies (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  num_employees INTEGER NOT NULL,
  company_revenue INTEGER
);

CREATE TABLE users_companies (
  user_id INTEGER,
  company_id INTEGER,
--  company_revenue INTEGER,
  UNIQUE(user_id, company_id)
);

/*

*/