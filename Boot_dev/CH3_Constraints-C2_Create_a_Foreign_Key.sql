/*
www.boot.dev/lessons/38f5e151-20c8-414d-b577-664246dd1279
Challenge


  Change the table creation statement to include a FOREIGN
 KEY constraint on the users table named fk_banks that
 ensures bank_id REFERENCES the id from the banks table.
                                                   
*/
CREATE TABLE banks (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  location TEXT NOT NULL,
  routing_number INTEGER NOT NULL
);

CREATE TABLE users (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  age INTEGER NOT NULL,
  country_code TEXT NOT NULL,
  username TEXT UNIQUE NOT NULL,
  password TEXT NOT NULL,
  is_admin BOOLEAN,
  bank_id INTEGER,
  CONSTRAINT fk_banks
  FOREIGN KEY (bank_id)
  REFERENCES banks(id)
);

/*

*/