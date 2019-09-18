var mysql = require("mysql");
var inquirer = require("inquirer");
var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: "xG@be973",
    database: "bamazonDB"
});

connection.connect(function(err) {
    if (err) throw err;
    console.log("connected as id " + connection.threadId + "\n");
    displayProducts();
    start();
});

function displayProducts() {
    console.log("Displaying all products... \n");
    connection.query("SELECT * FROM products", function(err, res) {
        if (err) throw err;
        for (var i=0; i < res.length; i++) {
            console.log(res[i].id + " | " + res[i].product_name + " | " + res[i].department_name + " | " + res[i].price + " | " + res[i].stock_quantity)
        };
        console.log(res);
    });
};

function start() {
    inquirer.prompt(
        {
            name: "ID",
            type: "input",
            message: "What is the ID of the product you wish to purchase?",
        },
        {
            name: "quantity",
            type: "input",
            message: "How many would you like to purchase?"
        }
    );
    
};

