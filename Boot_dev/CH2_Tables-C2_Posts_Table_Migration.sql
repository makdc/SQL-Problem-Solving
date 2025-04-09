/*
www.boot.dev/lessons/d6d05b09-cbb1-4582-b95c-6e0c51e0bbf7
Challenge

Write an up migration for the posts table that achieves the following:

    The author_id column should be renamed to poster_id
    Add a new column named is_edited with a BOOLEAN type
    DROP the is_sponsored column
                    
*/
ALTER TABLE posts
RENAME COLUMN author_id TO poster_id;
ALTER TABLE posts
ADD COLUMN is_edited BOOLEAN;
ALTER TABLE posts
  
DROP COLUMN is_sponsored;
/*

*/