/*
https://www.boot.dev/lessons/89299c51-34d2-4f44-be32-f4ce72d9bf0f
Assignment


  Use a min aggregation to find only the age of our
 youngest CashPal user in the United States in the users
 table. The country_code of the United States is US
 .                                                 
*/
SELECT min(age)
FROM users
WHERE country_code = 'US';
/*

*/