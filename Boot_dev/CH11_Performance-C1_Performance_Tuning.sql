/*
www.boot.dev/lessons/c698ed69-e3c5-4954-9f2c-f87fb1e61282
Assignment


Run a migration to speed up future performance:

    Add country_code and country_name columns to the users table (these are not optional fields, you'll need a default).
    Update the users table to copy the data from countries table to the users table's country_code and country_name columns.
    Drop the country_id column from the users table.

Bonus:

    Index the country_code column (country_code_idx) so that users can quickly be looked up by country.
    Get rid of the countries table.
                                 
*/
ALTER TABLE users
ADD COLUMN country_code TEXT NOT NULL DEFAULT "Unspecified";  
ALTER TABLE users
ADD COLUMN country_name TEXT NOT NULL DEFAULT "Unspecified";

UPDATE users
SET country_code = 'KH'
WHERE country_id = ( 
  SELECT c.id
  FROM countries c
  WHERE country_code = 'KH');

UPDATE users
SET country_code = 'WL'
WHERE country_id = ( 
  SELECT c.id
  FROM countries c
  WHERE country_code = 'WL');

UPDATE users
SET country_name = 'Kingdom of Hearts'
WHERE country_id = ( 
  SELECT id
  FROM countries
  WHERE name = 'Kingdom of Hearts');

UPDATE users
SET country_name = 'Wonderland'
WHERE country_id = ( 
  SELECT id
  FROM countries
  WHERE name = 'Wonderland');

ALTER TABLE users
DROP COLUMN country_id;

CREATE INDEX country_code_idx
ON users (country_code);

DROP TABLE countries;
/*

*/
ALTER TABLE users ADD COLUMN country_name TEXT NOT NULL DEFAULT 'Wonderland';
ALTER TABLE users ADD COLUMN country_code TEXT NOT NULL DEFAULT 'WL';
CREATE INDEX country_code_idx ON users (country_code);
UPDATE users
SET country_name = (SELECT name FROM countries WHERE id = country_id),
  country_code = (SELECT country_code FROM countries WHERE id = country_id);
ALTER TABLE users DROP COLUMN country_id;
DROP TABLE countries;