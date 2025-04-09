/*
www.boot.dev/lessons/de20cacc-86db-451b-95ba-9a30fbff1fa6
Challenge


  Write an SQL statement using multiple joins to return
 the following: 
 
    The country's name
    The country's country_code
    The number of unique issue_types per country name labeled as issue_diversity

 Only include records for
 countries that have support tickets linking back to
 a user in that country. Sort the records by highest
 issue diversity first, then by country name in ascending
 order.                                            
*/
SELECT c.name, c.country_code, COUNT( DISTINCT s.issue_type) AS issue_diversity
FROM countries c
INNER JOIN users u
ON c.country_code = u.country_code
LEFT JOIN support_tickets s
ON u.id = s.user_id
GROUP BY c.name
ORDER BY issue_diversity DESC, c.name ASC
/*

*/