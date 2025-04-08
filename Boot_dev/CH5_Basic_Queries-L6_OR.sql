/*
https://www.boot.dev/lessons/ed90d42a-803d-4af5-a00b-fb1cb20e2c3a
Assignment


  The laws have changed again! Now we need to see how
 many affected users meet this criteria: Users who are
 from the United States or Canada, and are under 18
 Users who are from the United States or Canada, and
 are under 18 Write a query that retrieves the count
 of every user (renamed as just junior_count ) that
 matches the conditions above.                     
*/
SELECT COUNT(u.id) AS junior_count
    FROM users u
    WHERE (u.country_code = 'US' 
    OR u.country_code = 'CA') 
    AND u.age < 18;
/*

*/