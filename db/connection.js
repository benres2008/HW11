const mysql = require("mysql");

const connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    database: "employee_tracker_db",
    password: "",
})

connection.connect(function(err){
    if (err) throw (err);
    console.log("database connect")
   
})

module.exports = connection;