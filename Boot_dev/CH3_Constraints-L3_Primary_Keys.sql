/*
www.boot.dev/lessons/1b564a71-18c0-4d85-b28f-56f892378104
Assignment


  Run the code. Notice that there's a bug - there is
 a violation of a PRIMARY KEY constraint on the id column.
 Fix the data that's being inserted. When working with
 integer ids, it's best practice to increment the id
 by 1 for each successive insert. Follow this convention
 when fixing the bug.                              
*/
INSERT INTO users (
  id,
  name,
  age,
  username,
  password,
  is_admin
) VALUES (
  1,
  'Rudolf',
  33,
  'rudolf1234',
  'thisisnotsecure',
  false
);

INSERT INTO users (
  id,
  name,
  age,
  username,
  password,
  is_admin
) VALUES (
  2,
  'Jerry',
  25,
  'jerrysmith',
  'mypasswordis1234',
  true
);
/*

*/