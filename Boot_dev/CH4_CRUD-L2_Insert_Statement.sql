/*
www.boot.dev/lessons/09005ad3-31b4-4918-bcf3-334621a88262
Assignment


  Let's start manually adding some of the records to
 our users table! Take a look at the CREATE TABLE statement
 in the setup code in the up.sql tab for the users table
 structure, and use that information to insert the following
 records into the table: 
 
 Record 1

    id: 1
    name: David
    age: 34
    country_code: US
    username: DavidDev
    password: insertPractice
    is_admin: false

Record 2

    id: 2
    name: Samantha
    age: 29
    country_code: BR
    username: Sammy93
    password: addingRecords!
    is_admin: false
                                           
*/
INSERT INTO users(id, name, age, country_code, username, password, is_admin)
VALUES (1, 'David', 34, 'US', 'DavidDev', 'insertPractice', false);

INSERT INTO users(id, name, age, country_code, username, password, is_admin)
VALUES (2, 'Samantha', 29, 'BR', 'Sammy93', 'addingRecords!', false);

/*

*/