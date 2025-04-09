/*
www.boot.dev/lessons/166b780e-a3e0-4f19-90d6-c4f20efe76df
Assignment


  Adjust the query to: 
  
    Return the name, and age fields from the users table.
    Return the name field from the countries table and rename it to country_name.
    Sort by the country_name in ascending order.
     
*/
SELECT u.name, u.age, c.name as country_name
FROM users u
INNER JOIN countries c ON c.country_code = u.country_code
ORDER BY country_name ASC;

/*

*/