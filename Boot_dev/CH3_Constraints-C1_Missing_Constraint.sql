/*
www.boot.dev/lessons/2c91b249-2522-44d6-ae0c-cf36bb49eb49
Challenge


  Using the up.sql file tab and the example output above,
 determine which field is missing an important constraint.
 Because SQLite does not support adding constraints
 with ALTER TABLE , you'll have to make a new table
 called banks . It should have all the same fields as
 the original table but updated with the missing constraint.
 Don't worry about inserting any records, we'll learn
 how to do that later. INT is valid, but the assignment
 expects INTEGER , so use INTEGER instead of INT to
 pass this assignment.                             
*/
CREATE TABLE banks (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  location TEXT NOT NULL,
  routing_number INTEGER NOT NULL
);
/*

*/