const path = require('path');
const express = require('express')
const app = express();
const mysql = require('mysql');
let iduser=0;
let IDdash=0;
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

app.post('/tryLogin', function (req, res) {
    const dbAccess = mysql.createConnection({
        host: 'lhcp3331.webapps.net',
        user: 'j65crs1a_Roberto',
        password: 'PAPFarm2023!',
        database: 'j65crs1a_smart'
    });
    dbAccess.connect();
    const query=`
        SELECT 
            users.IDuser,
            users.login,
            users.pass,
            users.nome
        FROM 
            users 
        WHERE 
            users.login = '${req.body.username}' AND users.pass = MD5('${req.body.password}')`
    const query2=`
        SELECT 
            IDdash,
            dashboard 
        FROM 
            dashboard 
        WHERE 
            dashboard.iduser = '${iduser}'`
        dbAccess.query(query, function (error, results, fields) {
        if(results.length === 1) {
            iduser=results[0].IDuser;
            if (iduser!==0){
                dbAccess.query(query2, function (error, results2, fields) {
                    if(results2.length === 1) {
                        IDdash=results2[0].IDdash;
                        dbAccess.end();
                        res.status(200).send({
                            // "Data":results3,
                            "DASHBOARD": results2[0].dashboard,
                            "IDdash":IDdash,
                            "User": results
                        });
                    } else {
                        dbAccess.end();
                        res.status(200).send({
                            "User": results
                        });
                    }
                });
            }
        } else {
            dbAccess.end();
            res.status(500).send;
        }
    });
});

app.post('/GetValues', function (req2, res2) {
    const dbAccess = mysql.createConnection({
        host: 'lhcp3331.webapps.net',
        user: 'j65crs1a_Roberto',
        password: 'PAPFarm2023!',
        database: 'j65crs1a_smart'
    });
    dbAccess.connect();
    const date =new Date().toJSON().slice(0,7);
    const query=`
        SELECT
            data.ID,
            data.Device_ID,
            data.App_ID,
            data.Date,
            data.Temperature,
            data.Humidity,
            data.TemperaturaSolo,
            data.HumidadeSolo,
            data.Relay,
            data.IDdash 
        FROM
            data
        WHERE
            (data.Device_ID LIKE "eui-ac1f09fffe08e925") AND (data.Date LIKE "%${date}%") AND (data.IDdash='${req2.body.IDdash}')
        ORDER BY
            data.ID Desc LIMIT 10;`
        dbAccess.query(query, function (error, results, fields) {
            if(results.length >= 1) {
                dbAccess.end();
                res2.status(200).send({
                    "Values":results
                });
            }
            else{
                dbAccess.end();
                res2.status(500).send;
            }
        });
});
app.listen(3000);