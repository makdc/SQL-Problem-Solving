/*
www.boot.dev/lessons/ff6f8789-1beb-4f4c-8316-9b31cb522736
Assignment


  This rollout of business accounts is really causing
 some headaches for our development team. The companies
 table has been a disaster. Our database architect pointed
 out that the idea behind the size field is redundant
 . If a company has more than 100 employees, we consider
 it "large", otherwise we consider it "small". That's
 something we can calculate from the num_employees field,
 rather than storing it separately. 

 
    Remove the size column from the companies table by modifying the CREATE TABLE statement.
    Change the SELECT statement to calculate a size field in the result set that works the same way. Return the other fields as normal.
                       
*/
CREATE TABLE companies (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  num_employees INTEGER NOT NULL --,
--  size TEXT
);

-- Don't touch between these comments --

INSERT INTO companies(name, num_employees)
  VALUES ('Pfizer', 10000);
INSERT INTO companies(name, num_employees)
  VALUES ('WorldBanc', 80);
INSERT INTO companies(name, num_employees)
  VALUES ('Fantasy Quest', 30);
INSERT INTO companies(name, num_employees)
  VALUES ('Walmart', 1000);

-- Don't touch between these comments --

SELECT *, IIF(num_employees > 100, 'large','small') AS size
  FROM companies;

/*

*/