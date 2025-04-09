/*
www.boot.dev/lessons/438a8ce4-41e3-4747-a5e7-ad283bcf5b92
Assignment


  We hired an intern at CashPal and her first task was
 to design a new "companies" table. This table will
 store our business client's data. Unfortunately, the
 intern has committed the unforgivable sin - there's
 no primary key on this table! We could have entire
 duplicate rows! Add an id field. It should be an integer
 and have a PRIMARY KEY constraint on it. When you're
 done, the companies table will be in first normal form.
                                                   
*/
CREATE TABLE companies (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  num_employees INTEGER NOT NULL
);

/*

*/