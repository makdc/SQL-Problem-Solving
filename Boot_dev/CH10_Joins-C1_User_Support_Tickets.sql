/*
www.boot.dev/lessons/1a76dd8c-748c-496b-adb3-f32043d9d3bc
Challenge


  Write an SQL statement that includes an INNER JOIN
 and returns the following: 
 
    The user's name
    The user's username
    The count of support tickets attributed to that user labeled as support_ticket_count

 Exclude any tickets
 that have "Account Access" as the issue_type and only
 return records for users who have more than 1 support
 ticket of another type. Finally, sort the records by
 users with the most support tickets at the top.   
*/

SELECT u.name, u.username, COUNT(s.id) AS support_ticket_count
FROM users u
INNER JOIN support_tickets s
ON u.id = s.user_id
WHERE issue_type NOT LIKE 'Account Access'
GROUP BY u.id
HAVING support_ticket_count > 1
ORDER BY support_ticket_count DESC
--
/*

*/