/*
www.boot.dev/lessons/195251d5-8f1d-4dc8-bbca-c095ac4f9c81
Assignment


  Thankfully all the tables we have created for CashPal
 up to this point have been for testing purposes! Now
 that we have a better understanding of constraints,
 let's rebuild our database with the proper constraints
 and tables! Create the users table with the following
 fields and constraints: • id - INTEGER, PRIMARY KEY
 • id - INTEGER , PRIMARY KEY • name - TEXT, NOT NULL
 • name - TEXT , NOT NULL • age - INTEGER, NOT NULL
 • age - INTEGER , NOT NULL • country_code - TEXT, NOT
 NULL • country_code - TEXT , NOT NULL • username -
 TEXT, UNIQUE, NOT NULL • username - TEXT , UNIQUE ,
 NOT NULL • password - TEXT, NOT NULL • password - TEXT
 , NOT NULL • is_admin - BOOLEAN • is_admin - BOOLEAN
 • id - INTEGER, PRIMARY KEY • id - INTEGER , PRIMARY
 KEY • name - TEXT, NOT NULL • name - TEXT , NOT NULL
 • age - INTEGER, NOT NULL • age - INTEGER , NOT NULL
 • country_code - TEXT, NOT NULL • country_code - TEXT
 , NOT NULL • username - TEXT, UNIQUE, NOT NULL • username
 - TEXT , UNIQUE , NOT NULL • password - TEXT, NOT NULL
 • password - TEXT , NOT NULL • is_admin - BOOLEAN •
 is_admin - BOOLEAN                                
*/
CREATE TABLE users (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  age INTEGER NOT NULL,
  country_code TEXT NOT NULL,
  username TEXT UNIQUE NOT NULL,
  password TEXT NOT NULL,
  is_admin BOOLEAN
);
/*

*/