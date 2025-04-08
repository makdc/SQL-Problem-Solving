/*
https://www.boot.dev/lessons/6da926bf-471f-4554-9cbe-7a3255a61927
Assignment


  The legal restrictions in Canada have changed! The
 way we have to handle Canadian minors' CashPal transactions
 is more strict. We need to find all of those users,
 so we can see how many users this change affects! Write
 a query that retrieves all of the fields from the users
 table who are from Canada ( CA ), and are under the
 age of 18 .                                       
*/
SELECT *
    FROM users
    WHERE country_code = "CA" 
    AND age < 18;
/*

*/