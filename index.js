const inquirer = require("inquirer");

const connection = require("./db/connection");

inquirer.prompt([
    {
        type:"list",
        name: "userInput",
        message: "What do you want to do?",
        choices: [
            {
                name: "view all employees",
                value: "all_emps",
            },
            {
                name: "update Emp",
                value: "update_emps",
            },
            
        ]
    }

]).then(function(response) {
    switch(response){
        case "all_emps":
            viewAllEmps();
            break;
        case "update_emps":
            updateEmp();
            break;
    }

})

function viewAllEmps(){
    connection.query("SELECT * FROM employees", function (err, data){
        //    look up how to console log tables package.table(data)
    })
}

function updateEmp(){
    inquirer
}

mainPrompts();