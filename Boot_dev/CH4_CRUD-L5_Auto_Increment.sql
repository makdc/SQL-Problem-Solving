/*
www.boot.dev/lessons/08440605-d3a7-4a40-825f-d4a3ab5ae97c
Assignment


  Let's add some more records into our users table,
 but allow the database to automatically increment the
 id field. Add the following records to the database:

Record 1

    name: Lance
    age: 20
    country_code: US
    username: LanChr
    password: bootdevisbest
    is_admin: false

Record 2

    name: Tiffany
    age: 28
    country_code: US
    username: Tifferoon
    password: autoincrement
    is_admin: true

*/
INSERT INTO users(name, age, country_code, username, password, is_admin)
VALUES ('Lance', 20, 'US', 'LanChr', 'bootdevisbest', false);

INSERT INTO users(name, age, country_code, username, password, is_admin)
VALUES ('Tiffany', 28, 'US', 'Tifferoon', 'autoincrement', true);

/*

*/