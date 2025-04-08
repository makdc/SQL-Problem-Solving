/*
https://www.boot.dev/lessons/fa43e9b2-8da0-4a4c-88b6-c35018b364ca
Assignment


  HR has been able to narrow down their query further!
 They want a report of all user data for users whose
 names start with Al and are exactly 5 characters long
 .                                                 
*/
SELECT * FROM users u
    WHERE u.name LIKE 'Al___';
/*

*/