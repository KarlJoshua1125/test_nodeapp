const express = require('express');
const app = express();
const port = 3000;
const mysql = require('mysql2');
const loginRoutes = require('./routes/login');
const registerRoutes = require('./routes/register');
const detailsRoutes = require('./routes/details');
app.set('view engine', 'ejs');
app.use(express.urlencoded({ extended: true }));
app.use('/register', registerRoutes);
app.use('/details', detailsRoutes);

app.use('/', loginRoutes);

// Create a MySQL connection
const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'testapp'
});

// Connect to the MySQL database
connection.connect((err) => {
  if (err) {
    console.error('Error connecting to the database: ' + err.stack);
    return;
  }
  console.log('Connected to the database.');
});

app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});
