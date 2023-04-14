const mysql = require('mysql2');
const express = require('express');
const app = express();
const bodyParser = require('body-parser');

// Create a MySQL connection
const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'testapp'
});

app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());


exports.getDetails = (req, res) => {
    res.render('details');
};

exports.postDetails = (req, res) => {
    const { firstname, middlename, lastname, birthdate, gender, adsress, region, city, civilstatus, zipcode, hobby } = req.body;

    const con = `INSERT INTO personalinfo (firstname, middlename, lastname, birthdate, gender, address, region, city, civilstatus, zipcode, hobby) VALUES (?, ?, ?)`;
    connection.query(con, [username, email, password], (err, result) => {
        if (err) {
            console.error(err);
            res.render('details', { message: 'Error registering user' });
        } else {
            res.render('details', { message: 'User successfully registered' });
        }
    });
};
