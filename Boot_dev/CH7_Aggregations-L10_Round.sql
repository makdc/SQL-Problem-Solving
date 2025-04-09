/*
www.boot.dev/lessons/aae01329-476e-42e3-ae91-5ec6259b802f
Assignment



 
    Fix the query so that it returns a whole number.
    Rename the result column to round_age
                                                
*/
SELECT ROUND(avg(age),0) AS round_age
FROM users
WHERE country_code = 'US';
/*

*/