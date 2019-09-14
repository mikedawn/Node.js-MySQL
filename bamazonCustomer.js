var inquirer = require("inquirer");

var mysql = require("mysql");

var connection = mysql.createConnection({
    host: "localhost",

    // Your port; if not 3306
    port: 3306,

    // Your username
    user: "root",

    // Your password
    password: "password",
    database: "bamazon_db"
});

connection.connect(function (err) {
    if (err) throw err;
    console.log("connected as id " + connection.threadId);
    displayItem();
});

function displayItem() {
    connection.query("SELECT * FROM products", function (err, products) {
        if (err) throw err;
        console.table(products);

        inquirer.prompt([
            {
                type: "number",
                name: "Choice",
                message: "What is the ID of the product?"
            },
            {
                type: "number",
                name: "Quantity",
                message: "How many units would you like?"
            }


        ]).then(function (value) {
            var item_id = value.Choice
            var stock_quantity = value.Quantity
            
            connection.query("UPDATE products SET stock_quantity = stock_quantity - ? WHERE item_id = ?", [item_id, stock_quantity], function (err, data) {
                if (err) throw (err)
                console.log(data);
            })
            
            // for (i = 0; i < products.length; i++) {
                
                // if (products[i].item_id === value.Choice) {
                //     inquirer.prompt([
                //         {
                //             name: "Quantity",
                //             message: "How many units would you like?"
                //         }
                //     ]).then(function (value) {
                //         console.log(value.Quantity)
                //         if (products[i].stock_quantity >= value.Quantity) {



                //             //update sql table
                //         }

                //     });
                // }

                // else {
                //     console.log("Incorrect ID");
                // }
            // }


        });
        connection.end();
    });




}




