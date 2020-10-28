const mysql = require("mysql");

const connection = mysql.createConnection({
    host: "local",
    user: "root",
    database: "employee_tracker_db",
    password: "",
})

connection.connect(function(){
    console.log("database connect")
})

module.exports = connection;