/*
www.boot.dev/lessons/8742a1b8-c222-4668-bf1a-bf2d971379c8
Assignment


  Our users table stores the country our users are from
 in a country_code field. We need some additional data
 about countries like their name, but we don't want
 to bloat our users table with all that country data.
 The "locations" team at CashPal has created a "countries"
 table, and we can link a user to their country by setting
 a foreign key in the users table. Creating a foreign
 key without the CONSTRAINT keyword means the name of
 the constraint is auto-assigned. Take a look at the
 code. There's an issue with the INSERT statements again!
 Fix up the data so no foreign key constraints are violated.
 You'll need to reference the setup in the up.sql tab
 in the code editor.                               
*/
INSERT INTO users (
  id,
  name,
  country_code
) VALUES (
  1,
  'Jerry',
  'US'
);

INSERT INTO users (
  id,
  name,
  country_code
) VALUES (
  2,
  'Amit',
  'IN'
);

/*

*/