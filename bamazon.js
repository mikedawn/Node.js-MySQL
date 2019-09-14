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


// SELECT artist, song FROM top5000
// WHERE position >= 100
//  artist >1;

// SELECT * FROM top_songsdb.top5000;
// SELECT artist, song FROM top5000
// WHERE artist = "usher"
// AND position BETWEEN 1 AND 100
// WHERE artist >1
// WHERE artist='2pac' 