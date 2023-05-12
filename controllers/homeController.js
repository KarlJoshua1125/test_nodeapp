const mysql = require('mysql2');

exports.getHome = (req, res) => {
  const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'testapp'
  });

  // Query the database
  const query = 'SELECT * FROM personalinfo (firstname, middlename, lastname, birthdate, gender, address, region, city, civilstatus, zipcode, hobby)';
  connection.query(query, (error, results) => {
    if (error) {
      console.error('Error retrieving data from MySQL:', error);
      return res.status(500).send('Internal Server Error');
    }
  
    console.log('Results:', results); // Check the contents of the results variable
  
    // Render the 'home' view with the retrieved data
    res.render('home', { results: results });
  });
  

  // Close the MySQL connection
  connection.end();
};
