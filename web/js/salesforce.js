let jsforce = require('jsforce');
// Salesforce creds inline in code.

function sfQuery(queryString, success, error){
    let conn = new jsforce.Connection();
    // Security Risk!
    conn.login('username@example.com', 'salesforcepassword', function(err, res) {
        if (err) {
            error(err);
            console.error(err);
        }
        conn.query('SELECT Id FROM User', function(err, res) {
            if (err) {
                error(err);
                console.error(err);
            }
            success(res);
        });
    });
}
