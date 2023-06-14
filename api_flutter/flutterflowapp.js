const path = require('path');
const express = require('express')
const app = express();
const mysql = require('mysql');
const sqlconn = require('./sqlconn.json');
let iduser=0;
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

app.get('/', function(req, res) {
    res.send("Testing")
})

app.post('/tryLogin', function (req, res) {
    console.log(req.body)
    const dbAccess = mysql.createConnection({
        host: sqlconn.host,
        user: sqlconn.user,
        password: sqlconn.password,
        database: sqlconn.database
    });
    dbAccess.connect();

    dbAccess.query(`SELECT users.IDuser,users.login,users.password,users.nome FROM users WHERE users.login = '${req.body.username}' AND users.password = MD5('${req.body.password}')`, function (error, results, fields) {
        if (error) return console.log(error);
        if(results.length === 1) {
            dbAccess.end();
            iduser=results[0].IDuser;
            res.status(200).send({
                "IDUSER": results[0].IDuser
            });
        } else {
            dbAccess.end();
            res.status(500);
        }
    });
    
    if (iduser!==0){
        dbAccess.connect();
        dbAccess.query(`SELECT dashboard FROM dashboard WHERE dashboard.iduser = '${iduser}'`, function (error, results, fields) {
            if (error) throw error;
            if(results.length === 1) {
                dbAccess.end();
                res.status(200).send({
                    "DASHBOARD": results[0].dashboard
                });
            } else {
                dbAccess.end();
                res.status(500);
            }
        });
    }
});

app.listen(3000);