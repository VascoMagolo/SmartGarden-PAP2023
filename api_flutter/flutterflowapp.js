const path = require('path');
const express = require('express')
const app = express();
const mysql = require('mysql');
let iduser=0;
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

app.get('/', function(req, res) {
    res.send("Testing")
})

app.post('/tryLogin', function (req, res) {
    console.log(req.body)
    const dbAccess = mysql.createConnection({
        host: 'lhcp3331.webapps.net',
        user: 'j65crs1a_Roberto',
        password: 'PAPFarm2023!',
        database: 'j65crs1a_smart'
    });
    dbAccess.connect();
    dbAccess.query(`SELECT users.IDuser,users.login,users.pass,users.nome FROM users WHERE users.login = '${req.body.username}' AND users.pass = MD5('${req.body.password}')`, function (error, results, fields) {
        if (error) return console.log(error);
        if(results.length === 1) {
            iduser=results[0].IDuser;
            if (iduser!==0){
                dbAccess.query(`SELECT dashboard FROM dashboard WHERE dashboard.iduser = '${iduser}'`, function (error, results2, fields) {
                    if (error) return console.log(error);
                    console.log(results2);
                    if(results2.length === 1) {
                        dbAccess.end();
                        res.status(200).send({
                            "DASHBOARD": results2[0].dashboard,
                            "IDUSER": results[0].IDuser
                        });
                    } else {
                        dbAccess.end();
                        res.status(200).send({
                            "IDUSER": results[0].IDuser
                        });
                    }
                });
            }else{
                dbAccess.end();
                res.status(200).send({
                    "IDUSER": results[0].IDuser
                });
            }
        } else {
            dbAccess.end();
            res.status(500).send;
        }
    });
});

app.listen(3000);