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


exports.getUser = (req, res) => {
    res.render('register');
};

exports.postUser = (req, res) => {
    const { username, email, password } = req.body;

    const con = `INSERT INTO users (username, email, password) VALUES (?, ?, ?)`;
    connection.query(con, [username, email, password], (err, result) => {
        if (err) {
            console.error(err);
            res.render('register', { message: 'Error registering user' });
        } else {
            res.render('login', { message: 'User successfully registered' });
        }
    });
};
