/*
https://www.boot.dev/lessons/a7369fea-10fa-496a-9522-4a093dd45ff9
Assignment


 We need to look through CashPal's transaction data
 and determine whether or not any of the transactions
 need to be audited.Return all the data from the transactions
 table, and add an extra column at the end called audit.•
 If a row's was_successful field is true, the audit
 field should say "No action required".• If a row's
 was_successful field is true, the audit field should
 say "No action required".• If a row's was_successful
 field is false, the audit field should say "Perform
 an audit".• If a row's was_successful field is false,
 the audit field should say "Perform an audit".• If
 a row's was_successful field is true, the audit field
 should say "No action required".• If a row's was_successful
 field is true, the audit field should say "No action
 required".• If a row's was_successful field is false,
 the audit field should say "Perform an audit".• If
 a row's was_successful field is false, the audit field
 should say "Perform an audit".                    
*/

SELECT *, 
    IIF(t.was_successful = 1, 'No action required', 'Perform an audit') AS audit
    FROM transactions t;

/*

*/